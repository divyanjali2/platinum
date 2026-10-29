function generatePDF(bookingNumber) {
    return new Promise((resolve, reject) => {
        fetch('assets/includes/debug_log.php', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({
                step: 'generatePDF_called',
                bookingNumber: bookingNumber ?? null
            })
        });

        const { jsPDF } = window.jspdf;
        const doc = new jsPDF({ format: "a5", orientation: "portrait" });

        const gold = [212, 175, 55];
        const darkBlue = [10, 35, 80];

        const conf = {
            pickup: document.getElementById('conf_pickup')?.textContent || '-',
            dropoff: document.getElementById('conf_dropoff')?.textContent || '-',
            pickupDate: document.getElementById('conf_pickup_date')?.textContent || '-',
            dropoffDate: document.getElementById('conf_dropoff_date')?.textContent || '-',
            pickupTime: document.getElementById('conf_pickup_time')?.textContent || '-',
            dropoffTime: document.getElementById('conf_dropoff_time')?.textContent || '-',
            carName: document.querySelector('.form-step[data-step="1"] .card-title')?.textContent || '-',
            tripDays: document.getElementById('conf_days')?.textContent || '-',
            totalPrice: document.getElementById('conf_total')?.textContent || '-',
            name: document.getElementById('conf_name')?.textContent || '-',
            email: document.getElementById('conf_email')?.textContent || '-',
            phone: document.getElementById('conf_phone')?.textContent || '-',
            flight: document.getElementById('conf_flight')?.textContent || '-',
            passengers: document.getElementById('conf_passengers')?.textContent || '-',
            luggages: document.getElementById('conf_luggages')?.textContent || '-',
            mileage: document.getElementById('conf_mileage')?.textContent || '-',
            driver: document.getElementById('conf_driver')?.textContent || '-',
            license: document.getElementById('conf_license')?.textContent || '-',
            other: document.getElementById('conf_other')?.textContent || '-'
        };

        const logo = new Image();
        logo.src = 'assets/images/logo1.png'; 

        logo.onload = async function () {
            try {
                const result = await finalizePDF(doc, conf, logo, gold, darkBlue, bookingNumber);
                resolve(result);
            } catch (err) {
                reject(err);
            }
        };

        logo.onerror = async function () {
            try {
                const result = await finalizePDF(doc, conf, null, gold, darkBlue, bookingNumber);
                resolve(result);
            } catch (err) {
                reject(err);
            }
        };
    });
}

async function finalizePDF(doc, conf, logo, gold, darkBlue, bookingNumber) {
    let y = 15;

    // HEADER
    if (logo) {
        const logoWidth = 40;
        const logoHeight = 15;
        const centerX = 74 - logoWidth / 2;
        doc.addImage(logo, 'PNG', centerX, 5, logoWidth, logoHeight);
    }

    y += 10;

    doc.setFont('helvetica', 'normal');
    doc.setFontSize(9);

    let addressLines = doc.splitTextToSize("No: 375/2/1, Seeduwa, Sri Lanka", 120);
    doc.text(addressLines, 74, y, { align: "center" });
    y += addressLines.length * 4;

    let contactLines = doc.splitTextToSize("info@platinumdrive.lk | +94 76 820 0099", 120);
    doc.text(contactLines, 74, y, { align: "center" });
    y += contactLines.length * 4;

    y += 5;

    doc.setFont('helvetica', 'bold');
    doc.setFontSize(14);
    doc.setTextColor(darkBlue[0], darkBlue[1], darkBlue[2]);
    doc.text("INVOICE", 74, y, { align: "center" });
    y += 5;

    // HEADER LINE
    doc.setDrawColor(gold[0], gold[1], gold[2]);
    doc.setLineWidth(0.5);
    doc.line(10, y, 140, y);
    y += 10;

    // TOTAL PRICE
    doc.setFont('helvetica', 'bold');
    doc.setFontSize(13);
    doc.setTextColor(darkBlue[0], darkBlue[1], darkBlue[2]);
    doc.text("Total Price", 74, y, { align: "center" });

    y += 6;
    doc.setTextColor(gold[0], gold[1], gold[2]);
    doc.setFontSize(18);
    doc.text(conf.totalPrice, 74, y, { align: "center" });

    y += 8;
    doc.setDrawColor(180, 180, 180);
    doc.setLineWidth(0.3);
    doc.line(25, y, 125, y);
    y += 8;

    // TRIP DETAILS BOX
    const tripBoxHeight = 44;
    doc.setFillColor(255, 255, 255);
    doc.setDrawColor(darkBlue[0], darkBlue[1], darkBlue[2]);
    doc.roundedRect(12, y, 116, tripBoxHeight, 3, 3, "FD");

    doc.setFont('helvetica', 'bold');
    doc.setFontSize(11);
    doc.setTextColor(darkBlue[0], darkBlue[1], darkBlue[2]);
    doc.text("Trip Details", 70, y + 6, { align: "center" });

    const leftX = 18;
    const rightX = 75;
    let rowY = y + 13;

    doc.setFont('helvetica', 'normal');
    doc.setFontSize(9);
    doc.setTextColor(0, 0, 0);
    const rowSpacing = 1; 

    // Wrap long text
    let pickupLines = doc.splitTextToSize(`Pickup: ${conf.pickup}`, 55);
    doc.text(pickupLines, leftX, rowY);
    let dropoffLines = doc.splitTextToSize(`Drop-off: ${conf.dropoff}`, 55);
    doc.text(dropoffLines, rightX, rowY);
    rowY += Math.max(pickupLines.length, dropoffLines.length) * 4 + rowSpacing;

    let pickupTimeLines = doc.splitTextToSize(`Pickup Time: ${conf.pickupDate} ${conf.pickupTime}`, 55);
    doc.text(pickupTimeLines, leftX, rowY);
    let dropoffTimeLines = doc.splitTextToSize(`Drop-off Time: ${conf.dropoffDate} ${conf.dropoffTime}`, 55);
    doc.text(dropoffTimeLines, rightX, rowY);
    rowY += Math.max(pickupTimeLines.length, dropoffTimeLines.length) * 4 + rowSpacing;

    let carLines = doc.splitTextToSize(`Car: ${conf.carName}`, 55);
    doc.text(carLines, leftX, rowY);
    let durationLines = doc.splitTextToSize(`Duration: ${conf.tripDays}`, 55);
    doc.text(durationLines, rightX, rowY);
    rowY += Math.max(carLines.length, durationLines.length) * 4 + rowSpacing;

    y += tripBoxHeight + 8;

    // PASSENGER DETAILS BOX
    const passengerBoxHeight = 48;
    doc.setFillColor(255, 255, 255);
    doc.roundedRect(12, y, 116, passengerBoxHeight, 3, 3, "FD");

    doc.setFont('helvetica', 'bold');
    doc.setFontSize(11);
    doc.setTextColor(darkBlue[0], darkBlue[1], darkBlue[2]);
    doc.text("Passenger Details", 70, y + 6, { align: "center" });

    const leftPX = 18;
    const rightPX = 75;
    let py = y + 13;

    doc.setFont('helvetica', 'normal');
    doc.setFontSize(9);
    doc.setTextColor(0, 0, 0);

    let nameLines = doc.splitTextToSize(`Name: ${conf.name}`, 55);
    doc.text(nameLines, leftPX, py);
    let phoneLines = doc.splitTextToSize(`Phone: ${conf.phone}`, 55);
    doc.text(phoneLines, rightPX, py);
    py += Math.max(nameLines.length, phoneLines.length) * 4 + 1;

    let emailLines = doc.splitTextToSize(`Email: ${conf.email}`, 55);
    doc.text(emailLines, leftPX, py);
    let flightLines = doc.splitTextToSize(`Flight Number: ${conf.flight}`, 55);
    doc.text(flightLines, rightPX, py);
    py += Math.max(emailLines.length, flightLines.length) * 4 + 1;

    let passengerLines = doc.splitTextToSize(`Passengers: ${conf.passengers}`, 55);
    doc.text(passengerLines, leftPX, py);
    let luggageLines = doc.splitTextToSize(`Luggages: ${conf.luggages}`, 55);
    doc.text(luggageLines, rightPX, py);
    py += Math.max(passengerLines.length, luggageLines.length) * 4 + 1;

    let mileageLines = doc.splitTextToSize(`Mileage: ${conf.mileage}`, 55);
    doc.text(mileageLines, rightPX, py);
    py += mileageLines.length * 4 + 1;

    let driverLines = doc.splitTextToSize(`Driver: ${conf.driver}`, 55);
    doc.text(driverLines, leftPX, py);
    let licenseLines = doc.splitTextToSize(`License: ${conf.license}`, 55);
    doc.text(licenseLines, rightPX, py);

    y += passengerBoxHeight + 14;

    // FOOTER
    doc.setDrawColor(gold[0], gold[1], gold[2]);
    doc.line(10, y, 140, y);
    y += 7;
    doc.setFont('helvetica', 'bold');
    doc.setFontSize(10);
    doc.setTextColor(darkBlue[0], darkBlue[1], darkBlue[2]);
    doc.text("Thank you for choosing Platinum Drive!", 74, y, { align: "center" });

    const safeName = (conf.name || 'Booking').replace(/[^a-zA-Z0-9_-]/g, '_');
    doc.save(`Booking_${safeName}.pdf`);

    // CREATE PDF BLOB
    const pdfBlob = doc.output('blob');

    const formData = new FormData();
    formData.append('invoice', pdfBlob, 'invoice_temp.pdf');
    formData.append('booking_number', bookingNumber ?? '');

    await fetch('assets/includes/debug_log.php', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
            step: 'before_upload_invoice',
            bookingNumber: bookingNumber ?? null
        })
    });

    const response = await fetch('assets/includes/upload_invoice.php', {
        method: 'POST',
        body: formData
    });

    const data = await response.json();

    await fetch('assets/includes/debug_log.php', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
            step: 'upload_invoice_response',
            response: data
        })
    });

    if (data.status !== 'success') {
        throw new Error(data.message || 'Invoice upload failed');
    }

    return data;
}