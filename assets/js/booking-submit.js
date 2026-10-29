document.addEventListener('DOMContentLoaded', function () {
    const form = document.getElementById('multiStepForm');
    if (!form) return;

    form.addEventListener('submit', async function (e) {
        e.preventDefault();

        const submitBtn = form.querySelector('button[type="submit"]');
        const originalBtnText = submitBtn ? submitBtn.textContent : '';

        if (submitBtn) {
            submitBtn.disabled = true;
            submitBtn.textContent = 'Submitting...';
            submitBtn.classList.add('disabled');
        }

        const totalEl = document.getElementById('conf_total');
        const totalPrice = totalEl ? totalEl.textContent.replace(/[€$]/g, '').trim() : '';
        const totalInput = document.getElementById('total_price');
        if (totalInput) totalInput.value = totalPrice;

        const formData = new FormData(form);

        try {
            const response = await fetch(form.action, {
                method: 'POST',
                body: formData
            });

            const raw = await response.text();

            await fetch('assets/includes/debug_log.php', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({
                    step: 'raw_booking_response',
                    raw: raw
                })
            });

            let result;
            try {
                result = JSON.parse(raw);
            } catch (err) {
                await fetch('assets/includes/debug_log.php', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({
                        step: 'json_parse_error',
                        raw: raw
                    })
                });

                if (submitBtn) {
                    submitBtn.disabled = false;
                    submitBtn.textContent = originalBtnText;
                    submitBtn.classList.remove('disabled');
                }

                alert('Invalid JSON response from server');
                return;
            }

            await fetch('assets/includes/debug_log.php', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({
                    step: 'parsed_booking_response',
                    parsed: result
                })
            });

            if (result.status !== 'success') {
                if (submitBtn) {
                    submitBtn.disabled = false;
                    submitBtn.textContent = originalBtnText;
                    submitBtn.classList.remove('disabled');
                }

                alert(result.message || 'Booking failed');
                return;
            }

            const bookingNumber = result.booking_number;

            await fetch('assets/includes/debug_log.php', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({
                    step: 'booking_number_extracted',
                    booking_number: bookingNumber
                })
            });

            if (!bookingNumber || bookingNumber === 'undefined') {
                if (submitBtn) {
                    submitBtn.disabled = false;
                    submitBtn.textContent = originalBtnText;
                    submitBtn.classList.remove('disabled');
                }

                alert('Booking number missing');
                return;
            }

            await generatePDF(bookingNumber);

            const toast = document.createElement('div');
            toast.textContent = 'Booking Submitted Successfully!';
            toast.style.background = '#28a745';
            toast.style.color = '#fff';
            toast.style.padding = '10px 20px';
            toast.style.borderRadius = '5px';
            toast.style.boxShadow = '0 2px 5px rgba(0,0,0,0.2)';
            toast.style.marginBottom = '10px';
            toast.style.opacity = '0';
            toast.style.transition = 'opacity 0.5s';

            const container = document.getElementById('toast_container');
            if (container) {
                container.appendChild(toast);
                setTimeout(function () { toast.style.opacity = 1; }, 10);
            }

            setTimeout(function () {
                toast.style.opacity = 0;
                setTimeout(function () {
                    window.location.href = 'https://platinumdrive.lk/';
                }, 500);
            }, 2000);

        } catch (err) {
            await fetch('assets/includes/debug_log.php', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({
                    step: 'submit_exception',
                    error: err.message
                })
            });

            if (submitBtn) {
                submitBtn.disabled = false;
                submitBtn.textContent = originalBtnText;
                submitBtn.classList.remove('disabled');
            }

            alert('Error submitting booking.');
        }
    });
});