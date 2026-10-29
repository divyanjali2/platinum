<?php
$pickup = $_SESSION['booking']['pickup_location'] ?? '';
$dropoff = $_SESSION['booking']['dropoff_location'] ?? '';
$pickup_date = $_SESSION['booking']['pickup_date'] ?? '';
$pickup_time = $_SESSION['booking']['pickup_time'] ?? '';
$dropoff_date = $_SESSION['booking']['dropoff_date'] ?? '';
$dropoff_time = $_SESSION['booking']['dropoff_time'] ?? '';

if (!empty($pickup_date)) {
    $timestamp = strtotime($pickup_date);
    if ($timestamp) $pickup_date = date('Y-m-d', $timestamp);
}

if (!empty($dropoff_date)) {
    $timestamp = strtotime($dropoff_date);
    if ($timestamp) $dropoff_date = date('Y-m-d', $timestamp);
}

if (!empty($pickup_time)) {
    $timestamp = strtotime($pickup_time);
    if ($timestamp) $pickup_time = date('H:i', $timestamp);
}

if (!empty($dropoff_time)) {
    $timestamp = strtotime($dropoff_time);
    if ($timestamp) $dropoff_time = date('H:i', $timestamp);
}


include_once MODX_BASE_PATH . 'assets/includes/db_connect.php';

$car_category = isset($_GET['car_category']) ? $_GET['car_category'] : '';
$car_category = rawurldecode($car_category);

try {
    $stmt = $conn->prepare("
        SELECT 
            rr.car_category AS name,
            cc.avg_price,
            cc.description,
            cc.image,
            cc.passengers AS no_of_seats,
            cc.suitcases AS luggages
        FROM rental_rates rr
        LEFT JOIN car_categories cc ON cc.name = rr.car_category
        WHERE rr.car_category = ?
        LIMIT 1
    ");
    $stmt->execute([$car_category]);
    $car = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($car) {
        $price_per_day = $car['avg_price']; 
        $seats = $car['no_of_seats'];
        $luggages = $car['luggages'];
        $car_name = ucfirst($car['name']);
        $car_description = $car['description'];
        $car_image = $car['image'];
    }
} catch (PDOException $e) {
    return "<p>?? Error loading car details: " . htmlspecialchars($e->getMessage()) . "</p>";
}


// Fetch add-ons from DB
$addons_html = '<div class="row" id="addons_section" style="margin-top:15px;"><div class="col-12"><h6 style="font-weight:600;">Available Add-ons</h6><div class="form-row">';
try {
    $stmt = $conn->prepare("SELECT id, name, price_per_day FROM addons ORDER BY name ASC");
    $stmt->execute();
    $addons = $stmt->fetchAll(PDO::FETCH_ASSOC);

    if ($addons) {
        foreach ($addons as $addon) {
            $addons_html .= '
            <div class="form-group col-md-6">
                <div class="form-check d-flex align-items-center justify-content-around">
                    <div>
                        <input class="form-check-input addon-checkbox" type="checkbox" id="addon_' . $addon['id'] . '" name="addons[]" value="' . $addon['id'] . '" data-name="' . htmlspecialchars(trim($addon['name']), ENT_QUOTES) . '"data-price="' . $addon['price_per_day'] . '">
                        <label class="form-check-label" for="addon_' . $addon['id'] . '">'
                            . htmlspecialchars($addon['name']) . 
                            ' (<strong>$' . number_format($addon['price_per_day'], 2) . '</strong>/day)
                        </label>
                    </div>
                    <select class="form-control form-control-sm addon-qty" name="addon_qty[' . $addon['id'] . ']" id="addon_qty_' . $addon['id'] . '" style="width:70px;" disabled>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                    </select>
                </div>
            </div>';
        }
    } else {
        $addons_html .= '<p>No add-ons available.</p>';
    }
} catch (PDOException $e) {
    $addons_html .= '<p>Error loading add-ons.</p>';
}
$addons_html .= '</div></div></div>';

// Build output using heredoc
$output = <<<HTML
<!-- Hero Section -->
<section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('assets/images/bg_3.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
            <div class="col-md-9 ftco-animate pb-5">
                <p class="breadcrumbs">
                    <span class="mr-2"><a href="[[~1]]">Home <i class="ion-ios-arrow-forward"></i></a></span>
                    <span>Car Details <i class="ion-ios-arrow-forward"></i></span>
                </p>
                <h1 class="bread" style="font-size: large;">{$car_name}</h1>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section ftco-car-details">
    <div class="container">
        <!-- Progress Bar -->
        <div class="progressbar-container">
            <ul class="progressbar">
                <li class="active">Vehicle</li>
                <li>Extras</li>
                <li>Passengers + Transfers</li>
                <li>Confirmation</li>
            </ul>
        </div>

        <style>
        .progressbar {
            display: flex;
            justify-content: space-between;
            counter-reset: step;
            margin-bottom: 30px;
            list-style-type: none;
            padding: 0;
        }
        .progressbar li {
            position: relative;
            text-align: center;
            flex: 1;
            cursor: pointer;
        }
        .progressbar li:before {
            content: counter(step);
            counter-increment: step;
            width: 30px;
            height: 30px;
            line-height: 30px;
            display: block;
            border: 2px solid #ccc;
            border-radius: 50%;
            background: white;
            margin: 0 auto 10px auto;
        }
        .progressbar li.active:before,
        .progressbar li.completed:before {
            border-color: #007bff;
            background: #007bff;
            color: white;
        }
        .progressbar li:after {
            content: '';
            position: absolute;
            width: 100%;
            height: 2px;
            background: #ccc;
            top: 15px;
            left: -50%;
            z-index: -1;
        }
        .progressbar li:first-child:after { content: none; }
        .progressbar li.completed + li:after { background: #007bff; }

        /* Hide steps by default */
        .form-step { display: none; opacity: 0; transition: opacity 0.3s ease; }
        .form-step.active { display: block; opacity: 1; }

        .side-box {
            border: 1px solid #ddd;
            border-radius: 10px;
            padding: 20px;
            background: #f8f9fa;
            box-shadow: 0 2px 5px rgba(0,0,0,0.05);
        }
        .side-box h5 {
            margin-bottom: 15px;
            font-weight: 600;
        }
        .help-box {
            margin-top: 20px;
            border: 1px solid #e2e2e2;
            border-radius: 10px;
            padding: 15px;
            text-align: center;
            background: #fff;
        }
        .help-box a {
            color: #007bff;
            font-weight: 600;
            text-decoration: none;
        }

        .buttons {
            display: flex;
            justify-content: end;
            gap: 8px;
        }

        .price-summary {
            border-radius: 8px;
            padding: 12px 15px;
            background-color: #f8f9fa;
            margin-top: 10px;
            text-align: left;
        }
        .price-summary h6 {
            font-weight: 600;
            margin-bottom: 8px;
        }
        .price-summary p {
            margin-bottom: 5px;
        }

        #confirmation_summary {
            max-width: 900px;
            margin: 0 auto;
            font-size: 16px;
            line-height: 1.6;
            margin-bottom: 2rem;
        }

        .conf-row {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            margin-bottom: 10px;
        }

        .conf-row p {
            width: 48%;
            margin: 0;
            word-break: break-word;
        }

        .conf-row.full p {
            width: 100%;
        }

        #confirmation_summary strong {
            color: #333;
        }

        #confirmation_summary span {
            color: #555;
        }

        #confirmation_summary ul {
            margin: 0;
            padding-left: 20px;
        }

        #confirmation_summary li {
            list-style-type: disc;
        }

        .carousel-control-next , .carousel-control-prev {
            height: fit-content;
            top: 50%;
            color: black;
            background-color: black;
            width: auto;
        }
        </style>

        <div class="row">
            <!-- LEFT COLUMN -->
            <div class="col-md-4">
                 <div class="price-summary mt-3">
                    <h6>Trip Summary</h6>
                    <hr class="my-2">
                    <p style="font-size: 24px;"><strong>Total Price :</strong> <span id="trip_total">-</span></p>
                </div>
                
                <div class="side-box">
                    <h5>Trip Details</h5>
                    <form id="bookingForm" action="assets/includes/connection.php" method="POST" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="pickup_location">Pickup Location</label>
                            <input type="text" class="form-control" id="pickup_location" name="pickup_location"
                                value="{$pickup}" placeholder="Enter pickup location">
                        </div>
                        <div class="form-group">
                            <label for="dropoff_location">Drop-off Location</label>
                            <input type="text" class="form-control" id="dropoff_location" name="dropoff_location" value="{$dropoff}" placeholder="Enter drop-off location">
                        </div>
                        <div class="form-group">
                            <label for="pickup_date">Pickup Date</label>
                            <input type="date" class="form-control" id="pickup_date" name="pickup_date" 
                                value="{$pickup_date}">
                        </div>
                        <div class="form-group">
                            <label for="pickup_time">Pickup Time</label>
                            <input type="time" class="form-control" id="pickup_time" name="pickup_time"
                                value="{$pickup_time}">
                        </div>
                        <div class="form-group">
                            <label for="dropoff_date">Drop-off Date</label>
                            <input type="date" class="form-control" id="dropoff_date"  name="dropoff_date" 
                                value="{$dropoff_date}">
                        </div>
                        <div class="form-group">
                            <label for="dropoff_time">Drop-off Time</label>
                            <input type="time" class="form-control" id="dropoff_time" name="dropoff_time"
                                value="{$dropoff_time}">
                        </div>

                        <!-- Trip summary -->
                        <div class="form-group mt-3">
                            <label><strong>Number of Trip Days:</strong></label>
                            <p id="trip_days">-</p>
                        </div>
                    </form>
                </div>

                <div class="help-box">
                    <h6 style="font-weight:600;">Help Center!</h6>
                    <p class="mb-0"><a href="[[~13]]">Frequently Asked Questions</a></p>
                </div>
            </div>

            <!-- RIGHT COLUMN -->
            <div class="col-md-8">
                <form id="multiStepForm" action="assets/includes/connection.php" method="POST" enctype="multipart/form-data">
                    <input type="hidden" name="car_category" value="{$car_category}">

                    <!-- STEP 1: VEHICLE -->
                    <div class="form-step active" data-step="1">
                        <h4>Selected Vehicle</h4>
                        <div class="card mb-3">
                            <div id="carCarousel" class="carousel slide" data-bs-ride="carousel">
                            <div class="carousel-inner" style="height: 22rem; border-radius: 10px; overflow: hidden;">
                                <div class="carousel-item active">
                                <img src="{$car_image}" class="d-block w-100" alt="{$car_name}" style="height: 22rem; object-fit: cover;">
                                </div>
                                <!-- Add more images here -->
                                <div class="carousel-item">
                                <img src="{$car_image1}" class="d-block w-100" alt="{$car_name}" style="height: 22rem; object-fit: cover;">
                                </div>
                                <div class="carousel-item">
                                <img src="{$car_image2}" class="d-block w-100" alt="{$car_name}" style="height: 22rem; object-fit: cover;">
                                </div>
                            </div>

                            <!-- Carousel controls -->
                            <button class="carousel-control-prev" type="button" data-bs-target="#carCarousel" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#carCarousel" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            </button>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title mb-0" style="font-weight:600;">{$car_name}</h5>
                                <p class="card-text">{$car_description}</p>
                                <div class="row">
                                    <div class="col-6">
                                        <p><strong>Seats:</strong> {$seats} | <strong>Luggages:</strong> {$luggages}</p>
                                    </div>
                                </div>
                                <p><strong>Price per Day :</strong> \$ {$price_per_day}</p>
                            </div>
                        </div>

                        <div class="buttons">
                            <a href="[[~2]]" class="btn btn-secondary">Back</a>
                            <button type="button" class="btn btn-primary next-step">Next</button>
                        </div>
                    </div>

                    <!-- STEP 2: EXTRAS -->
                    <div class="form-step" data-step="2">
                        <h4>Choose Extras</h4>
                        {$addons_html}

                        <div class="buttons">
                            <button type="button" class="btn btn-secondary prev-step">Back</button>
                            <button type="button" class="btn btn-primary next-step">Next</button>
                        </div>
                    </div>

                    <!-- STEP 3: PASSENGERS & TRANSFERS -->
                   <div class="form-step" data-step="3">
                        <h4>Passengers & Transfers</h4>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="passenger_name">Full Name <span class="text-danger">*</span></label>
                                <input type="text" class="form-control required-field" id="passenger_name" name="passenger_name" placeholder="Enter your full name">
                            </div>

                            <div class="form-group col-md-6">
                                <label for="passenger_email">Email <span class="text-danger">*</span></label>
                                <input type="email" class="form-control required-field" id="passenger_email" name="passenger_email" placeholder="Enter your email">
                            </div>

                            <div class="form-group col-md-6">
                                <label for="passenger_phone">Phone <span class="text-danger">*</span></label>
                                <input type="text" class="form-control required-field" id="passenger_phone" name="passenger_phone" placeholder="Enter your phone number">
                            </div>

                            <div class="form-group col-md-6">
                                <label for="flight_number">Flight Number <span class="text-danger">*</span></label>
                                <input type="text" class="form-control required-field" id="flight_number" name="flight_number" placeholder="Enter flight number">
                            </div>

                            <div class="form-group col-md-6">
                                <label for="mileage">Mileage <span class="text-danger">*</span></label>
                                <select class="form-control required-field" id="mileage" name="mileage">
                                    <option value="">Select Mileage</option>
                                    <option value="0-150">0-150 km</option>
                                    <option value="unlimited">Unlimited</option>
                                </select>
                            </div>

                            <div class="form-group col-md-6">
                                <label for="need_driver">Do you need a Driver? <span class="text-danger">*</span></label>
                                <select class="form-control required-field" id="need_driver" name="need_driver">
                                    <option value="">Select</option>
                                    <option value="yes">Yes</option>
                                    <option value="no">No</option>
                                </select>
                            </div>

                            <div class="form-group col-md-6">
                                <label for="need_license">Do you need a Driver's License? <span class="text-danger">*</span></label>
                                <select class="form-control required-field" id="need_license" name="need_license">
                                    <option value="">Select</option>
                                    <option value="yes">Yes</option>
                                    <option value="no">No</option>
                                </select>
                            </div>

                            <div class="form-group col-md-12" id="license_uploads" style="display:none; margin-top:10px;">
                                <div style="display: flex; gap: 10px; align-items: center;">
                                    <div class="mb-2">
                                        <label for="passport_image">Passport</label>
                                        <input type="file" class="form-control" id="passport_image" name="passport_image" accept="image/*">
                                    </div>
                                    <div class="mb-2">
                                        <label for="idp_image">International Driving Permit (IDP)</label>
                                        <input type="file" class="form-control" id="idp_image" name="idp_image" accept="image/*">
                                    </div>
                                    <div class="mb-2">
                                        <label for="passport_image2">Photograph of the Applicant</label>
                                        <input type="file" class="form-control" id="passport_image2" name="passport_image2" accept="image/*">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group col-md-6">
                                <label for="num_passengers">Number of Passengers <span class="text-danger">*</span></label>
                                <input type="number" class="form-control required-field" id="num_passengers" name="num_passengers" min="1" value="1">
                            </div>

                            <div class="form-group col-md-6">
                                <label for="num_luggages">Number of Luggages <span class="text-danger">*</span></label>
                                <input type="number" class="form-control required-field" id="num_luggages" name="num_luggages" min="1" value="1">
                            </div>

                            <div class="form-group col-md-6">
                                <label for="other_info">Other Information</label>
                                <input type="text" class="form-control" id="other_info" name="other_info" placeholder="Any notes...">
                            </div>
                        </div>

                        <div id="validation_error" class="text-danger mb-3" style="display:none;">Please fill all required fields before continuing.</div>

                        <div class="buttons">
                            <button type="button" class="btn btn-secondary prev-step">Back</button>
                            <button type="button" class="btn btn-primary next-step">Next</button>
                        </div>
                    </div>

                    <!-- STEP 4: CONFIRMATION -->
                    <div class="form-step" data-step="4">
                        <h4>Confirm Your Booking</h4>
                        <p class="text-muted">Please review your trip details below before submitting.</p>
                        
                        <div id="confirmation_summary" class="p-4 bg-light rounded shadow-sm">
                            <h4 class="mb-3 text-center"><strong>Confirm Your Booking</strong></h4>
                            <h5 class="text-primary text-center mb-4"><strong>Total Price:</strong> <span id="conf_total"></span></h5>

                            <hr> 
                            <!-- Trip Info -->
                            <div class="conf-row">
                                <p><strong>Pickup Location:</strong> <span id="conf_pickup"></span></p>
                                <p><strong>Drop-off Location:</strong> <span id="conf_dropoff"></span></p>
                            </div>
                            <div class="conf-row">
                                <p><strong>Pickup Date:</strong> <span id="conf_pickup_date"></span></p>
                                <p><strong>Drop-off Date:</strong> <span id="conf_dropoff_date"></span></p>
                            </div>
                            <div class="conf-row">
                                <p><strong>Pickup Time:</strong> <span id="conf_pickup_time"></span></p>
                                <p><strong>Drop-off Time:</strong> <span id="conf_dropoff_time"></span></p>
                            </div>
                            <div class="conf-row">
                                <p><strong>Trip Duration:</strong> <span id="conf_days"></span></p>
                                <p><strong>Car:</strong> {$car_name}</p>
                            </div>
                            <div class="conf-row">
                                <p><strong>Price/Day:</strong> \$ {$price_per_day}</p>
                                <p><strong>Seats:</strong> {$seats}</p>
                            </div>
                            <div class="conf-row">
                                <p><strong>Luggage:</strong> {$luggages}</p>
                                <p><strong>Mileage:</strong> <span id="conf_mileage"></span></p>
                            </div>

                            <hr>

                            <!-- Passenger Info -->
                            <div class="conf-row">
                                <p><strong>Name:</strong> <span id="conf_name"></span></p>
                                <p><strong>Email:</strong> <span id="conf_email"></span></p>
                            </div>
                            <div class="conf-row">
                                <p><strong>Phone:</strong> <span id="conf_phone"></span></p>
                                <p><strong>Flight Number:</strong> <span id="conf_flight"></span></p>
                            </div>
                            <div class="conf-row">
                                <p><strong>Passengers:</strong> <span id="conf_passengers"></span></p>
                                <p><strong>Luggages:</strong> <span id="conf_luggages"></span></p>
                                <p><strong>Need Driver:</strong> <span id="conf_driver"></span></p>
                            </div>
                            <div class="conf-row">
                                <p><strong>Need License:</strong> <span id="conf_license"></span></p>
                                <p><strong>Other Info:</strong> <span id="conf_other"></span></p>
                            </div>

                            <hr>

                            <!-- Extras -->
                            <!-- <div class="conf-row full">
                                <p><strong>Extras:</strong></p>
                                <ul id="conf_addons" style="margin-left: 20px;"><li>No extras selected.</li></ul>
                            </div> -->
                        </div>

                        <div class="buttons">
                            <button type="button" class="btn btn-secondary prev-step">Back</button>
                            <button type="submit" class="btn btn-primary">Confirm & Submit</button>
                        </div>
                    </div>
                    <input type="hidden" name="total_price" id="total_price" value="">
                </form>
            </div>

            <div id="toast_container" style="position: fixed; top: 20px; right: 20px; z-index: 9999;"></div>
        </div>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>

        <script>
            document.getElementById('need_driver').addEventListener('change', function() {
                const needLicense = document.getElementById('need_license');
                const licenseUploads = document.getElementById('license_uploads');

                if (this.value === 'yes') {
                    needLicense.value = 'no';
                    needLicense.disabled = true;
                    licenseUploads.style.display = 'none';
                } else {
                    // Enable license option again
                    needLicense.disabled = false;
                }
            });

            document.getElementById('need_license').addEventListener('change', function() {
                const licenseUploads = document.getElementById('license_uploads');
                licenseUploads.style.display = (this.value === 'yes') ? 'block' : 'none';
            });
        </script>

        <script>
            document.querySelector('#multiStepForm').addEventListener('submit', function() {
                ['pickup_location','dropoff_location','pickup_date','dropoff_date','pickup_time','dropoff_time'].forEach(id => {
                    const val = document.getElementById(id)?.value || '';
                    let hidden = document.createElement('input');
                    hidden.type = 'hidden';
                    hidden.name = id;
                    hidden.value = val;
                    this.appendChild(hidden);
                });

                // Also include total_price and duration
                document.querySelector('#total_price').value = '€' + document.getElementById('trip_total').textContent;
            });

            document.addEventListener("DOMContentLoaded", () => {
                const pickupDateInput = document.getElementById('pickup_date');
                const dropoffDateInput = document.getElementById('dropoff_date');
                const tripDaysEl = document.getElementById('trip_days');
                const tripTotalEl = document.getElementById('trip_total');
                const confTotalEl = document.getElementById('conf_total');
                const confDaysEl = document.getElementById('conf_days');
                const totalPriceInput = document.getElementById('total_price');
                const pricePerDay = parseFloat("{$price_per_day}");

                function calculateTrip() {
                    const pickup = pickupDateInput.value;
                    const dropoff = dropoffDateInput.value;
                    if (!pickup || !dropoff) return;

                    const carCategory = "{$car_category}";

                    fetch("get_rate.php?car_category=" + encodeURIComponent(carCategory) + 
                        "&pickup_date=" + encodeURIComponent(pickup) +
                        "&dropoff_date=" + encodeURIComponent(dropoff))            
                    .then(res => res.json())
                    .then(data => {
                        console.log("API Response:", data);

                        if (data.error) {
                            tripDaysEl.textContent = '-';
                            tripTotalEl.textContent = '-';
                            confDaysEl.textContent = '-';
                            confTotalEl.textContent = '-';
                            totalPriceInput.value = '';
                            return;
                        }

                        const days = data.requested_days;
                        let total = data.total_price; // base car price

                        // Add-ons calculation
                        const checkedAddons = document.querySelectorAll('.addon-checkbox:checked');
                        checkedAddons.forEach(cb => {
                            const addonPrice = parseFloat(cb.dataset.price || 0);
                            const qty = parseInt(document.getElementById('addon_qty_' + cb.value)?.value || 1);
                            total += addonPrice * qty * days;
                        });

                        // Update UI
                        tripDaysEl.textContent = days + (days === 1 ? ' day' : ' days');
                        tripTotalEl.textContent = total.toFixed(2);
                        confDaysEl.textContent = days + (days === 1 ? ' day' : ' days');
                        confTotalEl.textContent = '$' + total.toFixed(2);

                        // Update hidden input for form submission
                        totalPriceInput.value = total.toFixed(2);
                    });
                }

                // Recalculate when dates change
                pickupDateInput.addEventListener('change', calculateTrip);
                dropoffDateInput.addEventListener('change', calculateTrip);

                // Recalculate when addons change
                document.querySelectorAll('.addon-checkbox, .addon-qty').forEach(el => {
                    el.addEventListener('change', calculateTrip);
                });

                // Initial calculation on page load
                calculateTrip();
            });
        </script>

        <script>
            function validateTripDetails() {
                const pickup = document.getElementById('pickup_location');
                const dropoff = document.getElementById('dropoff_location');
                const pickupDate = document.getElementById('pickup_date');
                const dropoffDate = document.getElementById('dropoff_date');

                let valid = true;

                // Reset previous errors
                [pickup, dropoff, pickupDate, dropoffDate].forEach(field => {
                    field.classList.remove('is-invalid');
                });

                if (!pickup.value.trim()) {
                    pickup.classList.add('is-invalid');
                    valid = false;
                }
                if (!dropoff.value.trim()) {
                    dropoff.classList.add('is-invalid');
                    valid = false;
                }
                if (!pickupDate.value) {
                    pickupDate.classList.add('is-invalid');
                    valid = false;
                }
                if (!dropoffDate.value) {
                    dropoffDate.classList.add('is-invalid');
                    valid = false;
                }

                // Date logic
                if (pickupDate.value && dropoffDate.value) {
                    const d1 = new Date(pickupDate.value);
                    const d2 = new Date(dropoffDate.value);

                    if (d2 < d1) {
                        dropoffDate.classList.add('is-invalid');
                        valid = false;
                    }
                }

                return valid;
            }
        </script>

        <script>
            document.getElementById('multiStepForm').addEventListener('submit', function(e){
                e.preventDefault(); 

                const form = this;

                // Get total price
                const totalPrice = document.getElementById('conf_total').textContent.replace('€','').trim();
                document.getElementById('total_price').value = totalPrice;

                const formData = new FormData(form);

                // Send via AJAX
                fetch(form.action, {
                    method: 'POST',
                    body: formData
                })
                .then(response => response.text()) 
                .then(data => {
                    // Show toast
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
                    document.getElementById('toast_container').appendChild(toast);
                    setTimeout(() => toast.style.opacity = 1, 10);

                    // Generate PDF using jsPDF
                    generatePDF();

                    // Optional redirect after 2s
                    setTimeout(() => {
                        toast.style.opacity = 0;
                        setTimeout(() => window.location.href = '[[~2]]', 500);
                    }, 2000);
                })
                .catch(err => {
                    alert("Error submitting booking. Please try again.");
                    console.error(err);
                });
            });

        </script>

        <script src="assets/js/generate-pdf.js?v=6"></script>

        <script>
            function fillConfirmation() {
                const inputs = {
                    pickup: document.getElementById('pickup_location'),
                    dropoff: document.getElementById('dropoff_location'),
                    pickupDate: document.getElementById('pickup_date'),
                    pickupTime: document.getElementById('pickup_time'),
                    dropoffDate: document.getElementById('dropoff_date'),
                    dropoffTime: document.getElementById('dropoff_time'),
                    name: document.getElementById('passenger_name'),
                    email: document.getElementById('passenger_email'),
                    phone: document.getElementById('passenger_phone'),
                    flight: document.getElementById('flight_number'),
                    mileage: document.getElementById('mileage'),
                    driver: document.getElementById('need_driver'),
                    license: document.getElementById('need_license'),
                    passengers: document.getElementById('num_passengers'),
                    luggages: document.getElementById('num_luggages'),
                    other: document.getElementById('other_info'),
                };

                const pricePerDay = parseFloat("{$price_per_day}");

                // Fill trip details
                document.getElementById('conf_pickup').textContent = inputs.pickup.value || '-';
                document.getElementById('conf_dropoff').textContent = inputs.dropoff.value || '-';
                document.getElementById('conf_pickup_date').textContent = inputs.pickupDate.value || '-';
                document.getElementById('conf_pickup_time').textContent = inputs.pickupTime.value || '-';
                document.getElementById('conf_dropoff_date').textContent = inputs.dropoffDate.value || '-';
                document.getElementById('conf_dropoff_time').textContent = inputs.dropoffTime.value || '-';
                document.getElementById('conf_name').textContent = inputs.name.value || '-';
                document.getElementById('conf_email').textContent = inputs.email.value || '-';
                document.getElementById('conf_phone').textContent = inputs.phone.value || '-';
                document.getElementById('conf_flight').textContent = inputs.flight.value || '-';
                document.getElementById('conf_mileage').textContent = inputs.mileage.value || '-';
                document.getElementById('conf_driver').textContent = inputs.driver.value || '-';
                document.getElementById('conf_license').textContent = inputs.license.value || '-';
                document.getElementById('conf_passengers').textContent = inputs.passengers.value || '-';
                document.getElementById('conf_luggages').textContent = inputs.luggages.value || '-';
                document.getElementById('conf_other').textContent = inputs.other.value || '-';

                // Calculate trip days
                const pickup = new Date(inputs.pickupDate.value);
                const dropoff = new Date(inputs.dropoffDate.value);
                let days = 1;
                if (pickup && dropoff && dropoff >= pickup) {
                    const diff = dropoff - pickup;
                    days = Math.ceil(diff / (1000 * 60 * 60 * 24));
                }

                // Use already calculated total from sidebar (API + addons)
                const total = parseFloat(document.getElementById('trip_total').textContent) || 0;
                document.getElementById('conf_total').textContent = '€' + total.toFixed(2);
                document.getElementById('total_price').value = total.toFixed(2);

                const addonsList = document.getElementById('conf_addons');
                addonsList.innerHTML = '';
                if (checkedAddons.length > 0) {
                    checkedAddons.forEach(cb => {
                        let label = cb.dataset.name;
                        if (!label || label.trim() === '') {
                        const labelEl = document.querySelector('label[for="' + cb.id + '"]');
                        if (labelEl) label = labelEl.textContent.replace(/\(.*?\)/, '').trim();
                        else label = 'Unknown Add-on';
                        }
                        const qty = document.getElementById('addon_qty_' + cb.value)?.value || '1';
                        const price = parseFloat(cb.dataset.price || 0);
                        const lineTotal = (price * qty * days).toFixed(2);
                        const li = document.createElement('li');
                        li.innerHTML = `${label} — <strong>Qty:</strong> ${qty} <strong>Total:</strong> $${lineTotal}`;
                        addonsList.appendChild(li);
                    });
                } else {
                    addonsList.innerHTML = '<li>No extras selected.</li>';
                }
            }
        </script>

        <script>
            const steps = document.querySelectorAll('.form-step');
            const progressItems = document.querySelectorAll('.progressbar li');
            let currentStep = 0;

            function showStep(step) {
                steps.forEach((s, i) => {
                    s.classList.toggle('active', i === step);
                    progressItems[i].classList.toggle('active', i === step);
                    progressItems[i].classList.toggle('completed', i < step);
                });
                currentStep = step;
            }

            function validateStep(stepIndex) {
                const step = steps[stepIndex];
                const requiredFields = step.querySelectorAll('.required-field');
                let valid = true;

                requiredFields.forEach(field => {
                    if (!field.value.trim()) {
                        field.classList.add('is-invalid');
                        valid = false;
                    } else {
                        field.classList.remove('is-invalid');
                    }
                });

                const errorBox = step.querySelector('#validation_error');
                if (errorBox) errorBox.style.display = valid ? 'none' : 'block';

                return valid;
            }

            document.querySelectorAll('.next-step').forEach(btn => {
                btn.addEventListener('click', () => {
                    const current = document.querySelector('.form-step.active');
                    const nextStep = parseInt(current.dataset.step) + 1;

                    // STEP 1 VALIDATION (Trip details)
                    if (current.dataset.step === "1") {
                        if (!validateTripDetails()) {
                            return; // Stop user from going forward
                        }
                    }

                    // STEP 3 validation (already exists)
                    if (current.dataset.step === "3" && !validateStep(2)) {
                        return;
                    }

                    showStep(nextStep - 1);

                    if (nextStep === 4) {
                        document.querySelectorAll('.addon-checkbox').forEach(cb => {
                            const qtySelect = document.getElementById('addon_qty_' + cb.value);
                            if (qtySelect) qtySelect.disabled = !cb.checked;
                        });
                        fillConfirmation();
                    }
                });
            });

            document.querySelectorAll('.prev-step').forEach(btn => {
                btn.addEventListener('click', () => {
                    if (currentStep > 0) showStep(currentStep - 1);
                });
            });

            // Make progress bar clickable
            // progressItems.forEach((item, index) => {
            //     item.addEventListener('click', () => showStep(index));
            // });

            // Disable progress bar clicks
            progressItems.forEach(item => {
                item.style.pointerEvents = "none";
                item.style.cursor = "default";
            });

            // License upload toggle
            const needLicense = document.getElementById('need_license');
            const licenseUploads = document.getElementById('license_uploads');
            needLicense.addEventListener('change', function() {
                licenseUploads.style.display = (this.value === 'yes') ? 'block' : 'none';
            });

            // Initialize
            showStep(currentStep);
        </script>

        <script>
            document.addEventListener("DOMContentLoaded", () => {
                document.querySelectorAll('.addon-checkbox').forEach(checkbox => {
                    checkbox.addEventListener('change', function() {
                        const qtySelect = document.getElementById('addon_qty_' + this.value);
                        if (qtySelect) {
                            qtySelect.disabled = !this.checked;
                        }
                    });
                });
            });
        </script>
</section>
HTML;

return $output;