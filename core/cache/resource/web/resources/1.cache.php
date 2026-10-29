<?php  return array (
  'resourceClass' => 'MODX\\Revolution\\modDocument',
  'resource' => 
  array (
    'id' => 1,
    'type' => 'document',
    'pagetitle' => 'Home',
    'longtitle' => 'Congratulations!',
    'description' => '',
    'alias' => 'index',
    'link_attributes' => '',
    'published' => 1,
    'pub_date' => 0,
    'unpub_date' => 0,
    'parent' => 0,
    'isfolder' => 0,
    'introtext' => '',
    'content' => '


<div class="hero-wrap ftco-degree-bg" style="background-image: url(\'assets/images/bg_1.jpg\');" data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
	  <div class="row no-gutters slider-text justify-content-start align-items-center justify-content-center">
		<div class="col-lg-8 ftco-animate">
		</div>
	  </div>
	</div>
  </div>

    <section class="ftco-section ftco-no-pt bg-light">
	  <div class="container">
		  <div class="row no-gutters">
			  <div class="col-md-12	featured-top">
				  <div class="row no-gutters">
						<div class="col-md-4 d-flex align-items-center">
							[[!SaveFormSession]]
							<form action="[[~[[*id]]]]" method="post" class="request-form ftco-animate bg-primary">
							<h2>Reserve your Vehicle</h2>

							<div class="form-group">
								<label class="label">Pick-up Location</label>
								<input type="text" class="form-control" name="pickup_location" id="pickup_location" placeholder="City, Airport, Station, etc" required>
							</div>

							<div class="form-group">
								<label class="label">Drop-off Location</label>
								<input type="text" class="form-control" name="dropoff_location" id="dropoff_location" placeholder="City, Airport, Station, etc" required>
							</div>

							<div class="d-flex">
								<div class="form-group mr-2">
								<label class="label">Pick-up Date</label>
								<input type="text" class="form-control" name="pickup_date" id="book_pick_date" placeholder="Date" required>
								</div>
								<div class="form-group">
								<label class="label">Pick-up Time</label>
								<input type="text" class="form-control" name="time_pick" id="time_pick" placeholder="Time">
								</div>
							</div>

							<div class="d-flex">
								<div class="form-group mr-2">
								<label class="label">Drop-off Date</label>
								<input type="text" class="form-control" name="book_off_date" id="book_off_date" placeholder="Date" required>
								</div>
								<div class="form-group">
								<label class="label">Drop-off Time</label>
								<input type="text" class="form-control" name="time_drop" id="time_drop" placeholder="Time">
								</div>
							</div>

							<div class="form-group">
								<button type="submit" class="btn btn-secondary py-3 px-4">Rent A Car Now</button>
							</div>
							</form>
						</div>
						<div class="col-md-8 d-flex align-items-center">
							<div class="services-wrap rounded-right w-100">
								<h3 class="heading-section mb-4">Better Way to Rent Your Perfect Cars</h3>
								<div class="row d-flex mb-4">
							<div class="col-md-4 d-flex align-self-stretch ftco-animate">
							  <div class="services w-100 text-center">
								<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-route"></span></div>
								<div class="text w-100">
								  <h3 class="heading mb-2">Choose Your Pickup Location</h3>
							  </div>
							  </div>      
							</div>
							<div class="col-md-4 d-flex align-self-stretch ftco-animate">
							  <div class="services w-100 text-center">
								<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-handshake"></span></div>
								<div class="text w-100">
								  <h3 class="heading mb-2">Select the Best Deal</h3>
								</div>
							  </div>      
							</div>
							<div class="col-md-4 d-flex align-self-stretch ftco-animate">
							  <div class="services w-100 text-center">
								<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-rent"></span></div>
								<div class="text w-100">
								  <h3 class="heading mb-2">Reserve Your Rental Car</h3>
								</div>
							  </div>      
							</div>
						  </div>
						  <!-- <p><a href="#" class="btn btn-primary py-3 px-4">Reserve Your Perfect Car</a></p> -->
							</div>
						</div>
					</div>
			  </div>
		</div>
  	</section>

<section class="ftco-section">
	<div class="container">
		<div class="row justify-content-center mb-4">
			<div class="col-md-12 text-center heading-section ftco-animate">
				<span class="subheading">Experience Excellence</span>
				<h2 class="mb-3">Drive Platinum</h2>
				<p class="lead" style="font-size: 16px; margin-bottom:0; text-align:justify;">
					Discover the art of luxury travel with our exclusive fleet of premium vehicles and world-class chauffeur services — where sophistication meets performance. 
					Whether you\'re attending a high-profile event, corporate meeting, or special celebration, Drive Platinum ensures every journey is defined by comfort, elegance, and professionalism. 
					Enjoy personalized service, immaculate interiors, and attention to every detail — because you deserve nothing less than perfection on the road.
				</p>
			</div>
		</div>

		<div class="row">
			<div class="col-12">
				<img src="assets/images/platinum_home.jpg" alt="Our Services" style="width: 100%; height: auto; display: block;">
			</div>
		</div>
	</div>
</section>


  <section class="ftco-section ftco-no-pt bg-light">
	<div class="container">
	  <div class="row justify-content-center">
		<div class="col-md-12 heading-section text-center ftco-animate mb-3 mt-3">
		  <span class="subheading">What we offer</span>
		  <h2 class="mb-2">Our Fleet</h2>
		</div>
	  </div>
	  <div class="row">
		<div class="col-md-12">
		  <div class="carousel-car owl-carousel">
			<div class="item">
				<div class="car-wrap rounded ftco-animate">
					<div class="img rounded d-flex align-items-end" style="background-image: url(assets/images/fleet/3.jpg);">
					</div>
					<div class="text">
						<h2 class="mb-0" style="color: #102c4e !important;">Mini Cars</h2>
						<div class="d-flex mb-3">
							<span class="cat">Suzuki WagonR or Similar</span>
							<p class="price ml-auto">$ 45 <span>/day</span></p>
						</div>
						<p class="d-flex justify-content-center mb-0 d-block"><a href="[[~4]]" class="btn btn-primary py-2 mr-1">Book now</a></p>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="car-wrap rounded ftco-animate">
					<div class="img rounded d-flex align-items-end" style="background-image: url(assets/images/fleet/1.jpg);">
					</div>
					<div class="text">
						<h2 class="mb-0" style="color: #102c4e !important;">Compact Cars</h2>
						<div class="d-flex mb-3">
							<span class="cat">Toyota Vitz or Similar</span>
							<p class="price ml-auto">$ 55 <span>/day</span></p>
						</div>
                        <p class="d-flex justify-content-center mb-0 d-block"><a href="[[~5]]" class="btn btn-primary py-2 mr-1">Book now</a></p>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="car-wrap rounded ftco-animate">
					<div class="img rounded d-flex align-items-end" style="background-image: url(assets/images/fleet/6.jpg);">
					</div>
					<div class="text">
						<h2 class="mb-0" style="color: #102c4e !important;">Standard Cars</h2>
						<div class="d-flex mb-3">
							<span class="cat">Honda Grace or Similar</span>
							<p class="price ml-auto">$ 85 <span>/day</span></p>
						</div>
						<p class="d-flex justify-content-center mb-0 d-block"><a href="[[~6]]" class="btn btn-primary py-2 mr-1">Book now</a></p>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="car-wrap rounded ftco-animate">
					<div class="img rounded d-flex align-items-end" style="background-image: url(assets/images/fleet/4.jpg);">
					</div>
					<div class="text">
						<h2 class="mb-0" style="color: #102c4e !important;">Premium Cars</h2>
						<div class="d-flex mb-3">
							<span class="cat">Honda Civic or Similar</span>
							<p class="price ml-auto">$ 100 <span>/day</span></p>
						</div>
                        <p class="d-flex justify-content-center mb-0 d-block"><a href="[[~7]]" class="btn btn-primary py-2 mr-1">Book now</a></p>
					</div>
				</div>
			</div>
            <div class="item">
				<div class="car-wrap rounded ftco-animate">
					<div class="img rounded d-flex align-items-end" style="background-image: url(assets/images/fleet/5.jpg);">
					</div>
					<div class="text">
						<h2 class="mb-0" style="color: #102c4e !important;">Premium Cars</h2>
						<div class="d-flex mb-3">
							<span class="cat">Honda Civic or Similar</span>
							<p class="price ml-auto">$ 100 <span>/day</span></p>
						</div>
                        <p class="d-flex justify-content-center mb-0 d-block"><a href="[[~8]]" class="btn btn-primary py-2 mr-1">Book now</a></p>
					</div>
				</div>
			</div>
            <div class="item">
				<div class="car-wrap rounded ftco-animate">
					<div class="img rounded d-flex align-items-end" style="background-image: url(assets/images/fleet/2.jpg);">
					</div>
					<div class="text">
						<h2 class="mb-0" style="color: #102c4e !important;">Premium Cars</h2>
						<div class="d-flex mb-3">
							<span class="cat">Honda Civic or Similar</span>
							<p class="price ml-auto">$ 100 <span>/day</span></p>
						</div>
                        <p class="d-flex justify-content-center mb-0 d-block"><a href="[[~9]]" class="btn btn-primary py-2 mr-1">Book now</a></p>
					</div>
				</div>
			</div>
		  </div>
		</div>
	  </div>
	</div>
  </section>

	<section class="ftco-section ftco-about">
		  <div class="container">
			  <div class="row no-gutters">
						<div class="col-md-6 p-md-5 img img-2 d-flex justify-content-center align-items-center" 
						style="background-image: url(assets/images/about.jpg); border: 3px solid #102c4e;">
				</div>
   
				  <div class="col-md-6 wrap-about ftco-animate">
					<div class="heading-section heading-section-white pl-md-5">
						<span class="subheading">About us</span>
					<h2 class="mb-4">Welcome to Platinum Drive</h2>

					<p style="text-align: justify;">Welcome to Platinum Drive Rent A Car, your trusted partner for premium car rental services. We specialize in providing a seamless and luxurious travel experience with a fleet of well-maintained vehicles to suit every need. Whether you\'re looking for a stylish sedan for business trips, an SUV for family vacations, or a luxury car for special occasions, we have the perfect ride for you.</p>
					<p style="text-align: justify;">At Platinum Drive, we prioritize customer satisfaction with flexible rental plans, competitive pricing, and 24/7 support. Our commitment to quality ensures that every vehicle in our fleet is thoroughly inspected, clean, and ready to deliver an exceptional driving experience.</p>
					<p style="text-align: justify;">With easy booking options and a dedicated team, we make renting a car hassle-free and enjoyable. Choose Platinum Drive Rent A Car and travel in comfort, style, and reliability.</p>
					<!-- <p><a href="#" class="btn btn-primary py-3 px-4">Search Vehicle</a></p> -->
					</div>
				  </div>
			  </div>
		  </div>
	</section>
	
	<!-- Our Premium Services section starts -->
	<section class="ftco-section" style="background: #ffffff;">
		<div class="container">
			<div class="row justify-content-center mb-5">
				<div class="col-md-8 text-center heading-section ftco-animate">
					<span class="subheading" style="color: #d4af37; font-weight: 600; letter-spacing: 2px;">Services</span>
					<h2 class="mb-3" style="color: #0a1628; font-weight: 700; text-transform: uppercase;">Our Exclusive Services</h2>
					<p style="color: #0a1628; font-size: 1.05em; line-height: 1.8; max-width: 700px; margin: 0 auto;">
						At Platinum Drive, we redefine luxury transportation. From private sightseeing tours to seamless airport transfers, our services are tailored for comfort, style, and absolute peace of mind.
					</p>
				</div>
			</div>

			<!-- Services Grid -->
			<div class="row">
				<!-- Service 1 -->
				<div class="col-md-6 col-lg-3">
					<div class="service-card text-center" style="background: #102c4e; padding: 40px; border-radius: 20px; border: 2px solid rgba(212, 175, 55, 0.3); box-shadow: 0 10px 40px rgba(212,175,55,0.1); transition: all 0.4s ease; height: 92%;">
						<div class="service-icon" style="font-size: 3em; color: #d4af37; width: 90px; height: 90px; display: flex; align-items: center; justify-content: center; margin: 0 auto 20px; border-radius: 50%; border: 2px solid rgba(212,175,55,0.4); box-shadow: 0 6px 20px rgba(212,175,55,0.15);">
							<i class="fas fa-map-marked-alt"></i>
						</div>
						<h3 class="heading mb-3" style="color: #d4af37; text-transform: uppercase; letter-spacing: 1px; font-size: 20px;">Sightseeing Tours</h3>
						<p style="color: #f0f0f0; line-height: 1.6; font-size: 1.05em; text-align:justify;">
							Explore the city in unmatched comfort and style. Personalized routes, elite vehicles, and professional chauffeurs make every tour unforgettable.
						</p>
					</div>
				</div>

				<!-- Service 2 -->
				<div class="col-md-6 col-lg-3">
					<div class="service-card text-center" style="background: #102c4e; padding: 40px; border-radius: 20px; border: 2px solid rgba(212, 175, 55, 0.3); box-shadow: 0 10px 40px rgba(212,175,55,0.1); transition: all 0.4s ease; height: 92%;">
						<div class="service-icon" style="font-size: 3em; color: #d4af37; width: 90px; height: 90px; display: flex; align-items: center; justify-content: center; margin: 0 auto 20px; border-radius: 50%; border: 2px solid rgba(212,175,55,0.4); box-shadow: 0 6px 20px rgba(212,175,55,0.15);">
							<i class="fas fa-city"></i>
						</div>
						<h3 class="heading mb-3" style="color: #d4af37; text-transform: uppercase; letter-spacing: 1px; font-size: 23px;">City Transfer</h3>
						<p style="color: #f0f0f0; line-height: 1.6; font-size: 1.05em; text-align:justify;">
							Effortless and stylish travel within the city. Our professional drivers and premium fleet ensure stress-free and punctual transfers.
						</p>
					</div>
				</div>

				<!-- Service 3 -->
				<div class="col-md-6 col-lg-3">
					<div class="service-card text-center" style="background: #102c4e; padding: 40px; border-radius: 20px; border: 2px solid rgba(212, 175, 55, 0.3); box-shadow: 0 10px 40px rgba(212,175,55,0.1); transition: all 0.4s ease; height: 92%;">
						<div class="service-icon" style="font-size: 3em; color: #d4af37; width: 90px; height: 90px; display: flex; align-items: center; justify-content: center; margin: 0 auto 20px; border-radius: 50%; border: 2px solid rgba(212,175,55,0.4); box-shadow: 0 6px 20px rgba(212,175,55,0.15);">
							<i class="fas fa-plane"></i>
						</div>
						<h3 class="heading mb-3" style="color: #d4af37; text-transform: uppercase; letter-spacing: 1px; font-size: 20px;">Airport Transfer</h3>
						<p style="color: #f0f0f0; line-height: 1.6; font-size: 1.05em; text-align:justify;">
							Seamless airport pickups and drop-offs. Luxury vehicles, punctual service, and professional drivers ensure a smooth start or end to your journey.
						</p>
					</div>
				</div>

				<!-- Service 4 -->
				<div class="col-md-6 col-lg-3">
					<div class="service-card text-center" style="background: #102c4e; padding: 40px; border-radius: 20px; border: 2px solid rgba(212, 175, 55, 0.3); box-shadow: 0 10px 40px rgba(212,175,55,0.1); transition: all 0.4s ease; height: 92%;">
						<div class="service-icon" style="font-size: 3em; color: #d4af37; width: 90px; height: 90px; display: flex; align-items: center; justify-content: center; margin: 0 auto 20px; border-radius: 50%; border: 2px solid rgba(212,175,55,0.4); box-shadow: 0 6px 20px rgba(212,175,55,0.15);">
							<i class="fas fa-road"></i>
						</div>
						<h3 class="heading mb-3" style="color: #d4af37; text-transform: uppercase; letter-spacing: 1px; font-size: 20px;">Drive Experience</h3>
						<p style="color: #f0f0f0; line-height: 1.6; font-size: 1.05em; text-align:justify;">
							Comprehensive travel solutions for every journey. From city tours to special events, enjoy unrivaled luxury, comfort, and peace of mind with Platinum Drive.
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Our Premium Services section ends -->


	<!-- Counter Section starts -->
	<section class="ftco-counter ftco-section img" id="section-counter" style="background: #102c4e;">
		<div class="overlay"></div>
		<div class="container">
			<div class="row justify-content-center">
			
			<!-- Luxury Fleets -->
			<div class="col-md-6 col-lg-3 counter-wrap text-center mb-4" data-aos="fade-up" data-aos-delay="100">
				<div class="counter-box p-3 shadow-sm rounded-2xl hover:shadow-lg transition duration-300">
				<strong class="number d-block fs-2 fw-bold" data-number="80">0</strong>
				<span class="details d-block">Luxury <br>Fleets</span>
				</div>
			</div>

			<!-- Professional Chauffeurs -->
			<div class="col-md-6 col-lg-3 counter-wrap text-center mb-4" data-aos="fade-up" data-aos-delay="200">
				<div class="counter-box p-3 shadow-sm rounded-2xl hover:shadow-lg transition duration-300">
				<strong class="number d-block fs-2 fw-bold" data-number="90">0</strong>
				<span class="details d-block">Professional <br>Chauffeurs</span>
				</div>
			</div>

			<!-- Happy Customers -->
			<div class="col-md-6 col-lg-3 counter-wrap text-center mb-4" data-aos="fade-up" data-aos-delay="300">
				<div class="counter-box p-3 shadow-sm rounded-2xl hover:shadow-lg transition duration-300">
				<strong class="number d-block fs-2 fw-bold" data-number="180">0</strong>
				<span class="details d-block">Happy <br>Customers</span>
				</div>
			</div>

			<!-- Years of Experience (New) -->
			<div class="col-md-6 col-lg-3 counter-wrap text-center mb-4" data-aos="fade-up" data-aos-delay="400">
				<div class="counter-box p-3 shadow-sm rounded-2xl hover:shadow-lg transition duration-300">
				<strong class="number d-block fs-2 fw-bold" data-number="15">0</strong>
				<span class="details d-block">Years of <br>Experience</span>
				</div>
			</div>
			</div>
		</div>
	</section>

	<script>
		// Initialize AOS
		AOS.init({
			duration: 1000,
			once: true
		});

		// Counter Animation
		const counters = document.querySelectorAll(\'.number\');
		const options = { threshold: 0.6 };
		const startCount = (counter) => {
			const endValue = +counter.getAttribute(\'data-number\');
			const countUp = new CountUp(counter, endValue, { duration: 2 });
			if (!countUp.error) countUp.start();
		};

		const observer = new IntersectionObserver((entries, obs) => {
			entries.forEach(entry => {
			if (entry.isIntersecting) {
				startCount(entry.target);
				obs.unobserve(entry.target);
			}
			});
		}, options);

		counters.forEach(counter => observer.observe(counter));
	</script>
	<!-- Counter Section ends -->

	<!-- testimony-section starts -->
	<section class="ftco-section testimony-section bg-light py-5">
	<div class="container">
		<div class="row justify-content-center mb-3">
		<div class="col-md-8 text-center heading-section">
			<span class="subheading text-primary">Testimonials</span>
			<h2 class="mb-2 fw-bold">What Our Clients Say</h2>
			<p class="text-muted">Hear from our happy travelers about their Platinum Drive experiences.</p>
		</div>
		</div>

		<div class="row">
		<div class="col-md-12">
			<div class="carousel-testimony owl-carousel">
				<!-- Testimonial Item -->
				<div class="item">
					<div class="testimony-wrap rounded shadow-sm bg-white text-center p-4 transition-all hover:shadow-lg hover:-translate-y-1">
					<div class="user-img mx-auto mb-3 rounded-circle border border-3" 
						style="background-image: url(assets/images/reviews/1_profile.jpg); width: 90px; height: 90px; background-size: cover; background-position: center;">
					</div>
					<div class="text">
						<div class="mb-2 text-warning">
						<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
						</div>
						<p class="fst-italic mb-3" style="text-align: justify;">"I had an incredible tour with Platinum Drive! The booking process was smooth, and the entire experience exceeded expectations!"</p>
						<p class="name fw-bold mb-0">Sarah Thompson</p>
					</div>
					</div>
				</div>

				<div class="item">
					<div class="testimony-wrap rounded shadow-sm bg-white text-center p-4 transition-all hover:shadow-lg hover:-translate-y-1">
						<div class="user-img mx-auto mb-3 rounded-circle border border-3 border-primary" 
							style="background-image: url(assets/images/reviews/2_profile.jpg); width: 90px; height: 90px; background-size: cover; background-position: center;">
						</div>
						<div class="text">
						<div class="mb-2 text-warning">
							<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half-alt"></i>
						</div>
						<p class="fst-italic mb-3" style="text-align: justify;">"My recent trip was amazing, thanks to Platinum Drive! Everything was organized perfectly, from booking to the journey."</p>
						<p class="name fw-bold mb-0">Isabella Wilson</p>
						</div>
					</div>
				</div>

				<div class="item">
					<div class="testimony-wrap rounded shadow-sm bg-white text-center p-4 transition-all hover:shadow-lg hover:-translate-y-1">
					<div class="user-img mx-auto mb-3 rounded-circle border border-3 border-primary" 
						style="background-image: url(assets/images/reviews/3_profile.jpg); width: 90px; height: 90px; background-size: cover; background-position: center;">
					</div>
					<div class="text">
						<div class="mb-2 text-warning">
						<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
						</div>
						<p class="fst-italic mb-3" style="text-align: justify;">"Platinum Drive made my trip unforgettable! Booking was effortless, and the itinerary was perfectly crafted to my preferences."</p>
						<p class="name fw-bold mb-0">Emily Clark</p>
					</div>
					</div>
				</div>

				<div class="item">
					<div class="testimony-wrap rounded shadow-sm bg-white text-center p-4 transition-all hover:shadow-lg hover:-translate-y-1">
					<div class="user-img mx-auto mb-3 rounded-circle border border-3 border-primary" 
						style="background-image: url(assets/images/reviews/4_profile.jpg); width: 90px; height: 90px; background-size: cover; background-position: center;">
					</div>
					<div class="text">
						<div class="mb-2 text-warning">
						<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
						</div>
						<p class="fst-italic mb-3" style="text-align: justify;">"I had the pleasure of traveling with Platinum Drive, and it was spectacular. Everything was planned to perfection — truly premium service!"</p>
						<p class="name fw-bold mb-0">Michael Lee</p>
					</div>
					</div>
				</div>

				<div class="item">
					<div class="testimony-wrap rounded shadow-sm bg-white text-center p-4 transition-all hover:shadow-lg hover:-translate-y-1">
					<div class="user-img mx-auto mb-3 rounded-circle border border-3 border-primary" 
						style="background-image: url(assets/images/reviews/5_profile.jpg); width: 90px; height: 90px; background-size: cover; background-position: center;">
					</div>
					<div class="text">
						<div class="mb-2 text-warning">
						<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
						</div>
						<p class="fst-italic mb-3" style="text-align: justify;">"An amazing experience with Platinum Drive! The tour was seamless from start to finish. Their website made booking effortless."</p>
						<p class="name fw-bold mb-0">Olivia Harris</p>
					</div>
				</div>
				</div>
			</div>
		</div>
		</div>
	</div>
	</section>

	<script>
		$(document).ready(function(){
			$(\'.carousel-testimony\').owlCarousel({
				center: true,
				loop: true,
				items: 3,
				margin: 30,
				autoplay: true,
				autoplayTimeout: 4000,
				smartSpeed: 900,
				responsive: {
					0: { items: 1 },
					768: { items: 3 },
					1200: { items: 3 }
				}
			});
		});
	</script>
	<!-- testimony-section ends -->

	<!-- blogs-section starts -->
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center mb-3">
				<div class="col-md-7 heading-section text-center ftco-animate">
					<span class="subheading">Blog</span>
					<h2>Recent Blogs</h2>
				</div>
			</div>
			<div class="row d-flex">
				<div class="col-md-4 d-flex ftco-animate">
					<div class="blog-entry justify-content-end">
					<a href="#" class="block-20" style="background-image: url(\'assets/images/blogs/4.png\');"></a>
					<div class="text pt-2">
						<div class="meta mb-1">
						<div><a href="#">Jan. 29, 2025</a></div>    
						<div><a href="#" class="meta-chat"><span class="icon-chat"></span> 8</a></div>
						</div>
						<h3 class="heading mt-0"><a href="#">Top 5 Scenic Routes to Explore in Sri Lanka</a></h3>
						<p><a href="[[~12]]" class="btn btn-primary">Read more</a></p>
					</div>
					</div>
				</div>
				<div class="col-md-4 d-flex ftco-animate">
					<div class="blog-entry justify-content-end">
					<a href="#" class="block-20" style="background-image: url(\'assets/images/blogs/5.webp\');">
					</a>
					<div class="text pt-2">
						<div class="meta mb-1">
						<div><a href="#">Feb. 19, 2025</a></div>
						<div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
						</div>
						<h3 class="heading mt-0"><a href="#">Hidden Gems: Exploring Sri Lanka\'s Untouched Villages</a></h3>
						<p><a href="[[~11]]" class="btn btn-primary">Read more</a></p>
					</div>
					</div>
				</div>
				<div class="col-md-4 d-flex ftco-animate">
					<div class="blog-entry">
						<a href="#" class="block-20" style="background-image: url(\'assets/images/blogs/6.jpg\');">
						</a>
						<div class="text pt-2">
							<div class="meta mb-1">
							<div><a href="#">Mar. 22, 2025</a></div>
							<div><a href="#" class="meta-chat"><span class="icon-chat"></span> 12</a></div>
							</div>
							<h3 class="heading mt-0"><a href="#">Beaches vs. Mountains: Best Sri Lanka Destinations for Every Traveler</a></h3>
							<p><a href="[[~10]]" class="btn btn-primary">Read more</a></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- blogs-section ends -->



<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/countup.js/2.0.7/countUp.min.js"></script>
<script src="https://kit.fontawesome.com/a2e0e9a64d.js" crossorigin="anonymous"></script>

',
    'richtext' => 1,
    'template' => 2,
    'menuindex' => 0,
    'searchable' => 1,
    'cacheable' => 1,
    'createdby' => 1,
    'createdon' => 1756709107,
    'editedby' => 2,
    'editedon' => 1762237184,
    'deleted' => 0,
    'deletedon' => 0,
    'deletedby' => 0,
    'publishedon' => 0,
    'publishedby' => 0,
    'menutitle' => '',
    'content_dispo' => 0,
    'hidemenu' => 0,
    'class_key' => 'MODX\\Revolution\\modDocument',
    'context_key' => 'web',
    'content_type' => 1,
    'uri' => '',
    'uri_override' => 0,
    'hide_children_in_tree' => 0,
    'show_in_tree' => 1,
    'properties' => NULL,
    'alias_visible' => 1,
    '_content' => '  <head>
    <title>Platinum Car Rent</title>
    <link rel="icon" type="assets/images/favicon.png" href="assets/images/favicon.png">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="assets/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    

  <!-- Google Maps & Places API -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places"></script>


    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">

    <link rel="stylesheet" href="assets/css/aos.css">

    <link rel="stylesheet" href="assets/css/ionicons.min.css">

    <link rel="stylesheet" href="assets/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="assets/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="assets/css/flaticon.css">
    <link rel="stylesheet" href="assets/css/icomoon.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

     <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
  </head>
 <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
        <a class="navbar-brand" href="index.php?id=1">
          <img id="logo" src="assets/images/logo1.png" alt="Platinum Logo" height="100">
      </a>
      
      
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="index.php?id=1" class="nav-link">HOME</a></li>
	          <!-- <li class="nav-item"><a href="about.html" class="nav-link">ABOUT US</a></li> -->
	          <li class="nav-item"><a href="index.php?id=2" class="nav-link">FLEET</a></li>
	          <!-- <li class="nav-item"><a href="pricing.html" class="nav-link">BLOG</a></li> -->
	          <!-- <li class="nav-item"><a href="car.html" class="nav-link">Cars</a></li>
	          <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li> -->
	          <li class="nav-item"><a href="index.php?id=13" class="nav-link">FAQ</a></li>
	          <li class="nav-item"><a href="index.php?id=16" class="nav-link">ABOUT US</a></li>
	          <li class="nav-item"><a href="index.php?id=3" class="nav-link">CONTACT US</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>




<div class="hero-wrap ftco-degree-bg" style="background-image: url(\'assets/images/bg_1.jpg\');" data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
	  <div class="row no-gutters slider-text justify-content-start align-items-center justify-content-center">
		<div class="col-lg-8 ftco-animate">
		</div>
	  </div>
	</div>
  </div>

    <section class="ftco-section ftco-no-pt bg-light">
	  <div class="container">
		  <div class="row no-gutters">
			  <div class="col-md-12	featured-top">
				  <div class="row no-gutters">
						<div class="col-md-4 d-flex align-items-center">
							[[!SaveFormSession]]
							<form action="index.php?id=1" method="post" class="request-form ftco-animate bg-primary">
							<h2>Reserve your Vehicle</h2>

							<div class="form-group">
								<label class="label">Pick-up Location</label>
								<input type="text" class="form-control" name="pickup_location" id="pickup_location" placeholder="City, Airport, Station, etc" required>
							</div>

							<div class="form-group">
								<label class="label">Drop-off Location</label>
								<input type="text" class="form-control" name="dropoff_location" id="dropoff_location" placeholder="City, Airport, Station, etc" required>
							</div>

							<div class="d-flex">
								<div class="form-group mr-2">
								<label class="label">Pick-up Date</label>
								<input type="text" class="form-control" name="pickup_date" id="book_pick_date" placeholder="Date" required>
								</div>
								<div class="form-group">
								<label class="label">Pick-up Time</label>
								<input type="text" class="form-control" name="time_pick" id="time_pick" placeholder="Time">
								</div>
							</div>

							<div class="d-flex">
								<div class="form-group mr-2">
								<label class="label">Drop-off Date</label>
								<input type="text" class="form-control" name="book_off_date" id="book_off_date" placeholder="Date" required>
								</div>
								<div class="form-group">
								<label class="label">Drop-off Time</label>
								<input type="text" class="form-control" name="time_drop" id="time_drop" placeholder="Time">
								</div>
							</div>

							<div class="form-group">
								<button type="submit" class="btn btn-secondary py-3 px-4">Rent A Car Now</button>
							</div>
							</form>
						</div>
						<div class="col-md-8 d-flex align-items-center">
							<div class="services-wrap rounded-right w-100">
								<h3 class="heading-section mb-4">Better Way to Rent Your Perfect Cars</h3>
								<div class="row d-flex mb-4">
							<div class="col-md-4 d-flex align-self-stretch ftco-animate">
							  <div class="services w-100 text-center">
								<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-route"></span></div>
								<div class="text w-100">
								  <h3 class="heading mb-2">Choose Your Pickup Location</h3>
							  </div>
							  </div>      
							</div>
							<div class="col-md-4 d-flex align-self-stretch ftco-animate">
							  <div class="services w-100 text-center">
								<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-handshake"></span></div>
								<div class="text w-100">
								  <h3 class="heading mb-2">Select the Best Deal</h3>
								</div>
							  </div>      
							</div>
							<div class="col-md-4 d-flex align-self-stretch ftco-animate">
							  <div class="services w-100 text-center">
								<div class="icon d-flex align-items-center justify-content-center"><span class="flaticon-rent"></span></div>
								<div class="text w-100">
								  <h3 class="heading mb-2">Reserve Your Rental Car</h3>
								</div>
							  </div>      
							</div>
						  </div>
						  <!-- <p><a href="#" class="btn btn-primary py-3 px-4">Reserve Your Perfect Car</a></p> -->
							</div>
						</div>
					</div>
			  </div>
		</div>
  	</section>

<section class="ftco-section">
	<div class="container">
		<div class="row justify-content-center mb-4">
			<div class="col-md-12 text-center heading-section ftco-animate">
				<span class="subheading">Experience Excellence</span>
				<h2 class="mb-3">Drive Platinum</h2>
				<p class="lead" style="font-size: 16px; margin-bottom:0; text-align:justify;">
					Discover the art of luxury travel with our exclusive fleet of premium vehicles and world-class chauffeur services — where sophistication meets performance. 
					Whether you\'re attending a high-profile event, corporate meeting, or special celebration, Drive Platinum ensures every journey is defined by comfort, elegance, and professionalism. 
					Enjoy personalized service, immaculate interiors, and attention to every detail — because you deserve nothing less than perfection on the road.
				</p>
			</div>
		</div>

		<div class="row">
			<div class="col-12">
				<img src="assets/images/platinum_home.jpg" alt="Our Services" style="width: 100%; height: auto; display: block;">
			</div>
		</div>
	</div>
</section>


  <section class="ftco-section ftco-no-pt bg-light">
	<div class="container">
	  <div class="row justify-content-center">
		<div class="col-md-12 heading-section text-center ftco-animate mb-3 mt-3">
		  <span class="subheading">What we offer</span>
		  <h2 class="mb-2">Our Fleet</h2>
		</div>
	  </div>
	  <div class="row">
		<div class="col-md-12">
		  <div class="carousel-car owl-carousel">
			<div class="item">
				<div class="car-wrap rounded ftco-animate">
					<div class="img rounded d-flex align-items-end" style="background-image: url(assets/images/fleet/3.jpg);">
					</div>
					<div class="text">
						<h2 class="mb-0" style="color: #102c4e !important;">Mini Cars</h2>
						<div class="d-flex mb-3">
							<span class="cat">Suzuki WagonR or Similar</span>
							<p class="price ml-auto">$ 45 <span>/day</span></p>
						</div>
						<p class="d-flex justify-content-center mb-0 d-block"><a href="index.php?id=4" class="btn btn-primary py-2 mr-1">Book now</a></p>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="car-wrap rounded ftco-animate">
					<div class="img rounded d-flex align-items-end" style="background-image: url(assets/images/fleet/1.jpg);">
					</div>
					<div class="text">
						<h2 class="mb-0" style="color: #102c4e !important;">Compact Cars</h2>
						<div class="d-flex mb-3">
							<span class="cat">Toyota Vitz or Similar</span>
							<p class="price ml-auto">$ 55 <span>/day</span></p>
						</div>
                        <p class="d-flex justify-content-center mb-0 d-block"><a href="index.php?id=5" class="btn btn-primary py-2 mr-1">Book now</a></p>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="car-wrap rounded ftco-animate">
					<div class="img rounded d-flex align-items-end" style="background-image: url(assets/images/fleet/6.jpg);">
					</div>
					<div class="text">
						<h2 class="mb-0" style="color: #102c4e !important;">Standard Cars</h2>
						<div class="d-flex mb-3">
							<span class="cat">Honda Grace or Similar</span>
							<p class="price ml-auto">$ 85 <span>/day</span></p>
						</div>
						<p class="d-flex justify-content-center mb-0 d-block"><a href="index.php?id=6" class="btn btn-primary py-2 mr-1">Book now</a></p>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="car-wrap rounded ftco-animate">
					<div class="img rounded d-flex align-items-end" style="background-image: url(assets/images/fleet/4.jpg);">
					</div>
					<div class="text">
						<h2 class="mb-0" style="color: #102c4e !important;">Premium Cars</h2>
						<div class="d-flex mb-3">
							<span class="cat">Honda Civic or Similar</span>
							<p class="price ml-auto">$ 100 <span>/day</span></p>
						</div>
                        <p class="d-flex justify-content-center mb-0 d-block"><a href="index.php?id=7" class="btn btn-primary py-2 mr-1">Book now</a></p>
					</div>
				</div>
			</div>
            <div class="item">
				<div class="car-wrap rounded ftco-animate">
					<div class="img rounded d-flex align-items-end" style="background-image: url(assets/images/fleet/5.jpg);">
					</div>
					<div class="text">
						<h2 class="mb-0" style="color: #102c4e !important;">Premium Cars</h2>
						<div class="d-flex mb-3">
							<span class="cat">Honda Civic or Similar</span>
							<p class="price ml-auto">$ 100 <span>/day</span></p>
						</div>
                        <p class="d-flex justify-content-center mb-0 d-block"><a href="index.php?id=8" class="btn btn-primary py-2 mr-1">Book now</a></p>
					</div>
				</div>
			</div>
            <div class="item">
				<div class="car-wrap rounded ftco-animate">
					<div class="img rounded d-flex align-items-end" style="background-image: url(assets/images/fleet/2.jpg);">
					</div>
					<div class="text">
						<h2 class="mb-0" style="color: #102c4e !important;">Premium Cars</h2>
						<div class="d-flex mb-3">
							<span class="cat">Honda Civic or Similar</span>
							<p class="price ml-auto">$ 100 <span>/day</span></p>
						</div>
                        <p class="d-flex justify-content-center mb-0 d-block"><a href="index.php?id=9" class="btn btn-primary py-2 mr-1">Book now</a></p>
					</div>
				</div>
			</div>
		  </div>
		</div>
	  </div>
	</div>
  </section>

	<section class="ftco-section ftco-about">
		  <div class="container">
			  <div class="row no-gutters">
						<div class="col-md-6 p-md-5 img img-2 d-flex justify-content-center align-items-center" 
						style="background-image: url(assets/images/about.jpg); border: 3px solid #102c4e;">
				</div>
   
				  <div class="col-md-6 wrap-about ftco-animate">
					<div class="heading-section heading-section-white pl-md-5">
						<span class="subheading">About us</span>
					<h2 class="mb-4">Welcome to Platinum Drive</h2>

					<p style="text-align: justify;">Welcome to Platinum Drive Rent A Car, your trusted partner for premium car rental services. We specialize in providing a seamless and luxurious travel experience with a fleet of well-maintained vehicles to suit every need. Whether you\'re looking for a stylish sedan for business trips, an SUV for family vacations, or a luxury car for special occasions, we have the perfect ride for you.</p>
					<p style="text-align: justify;">At Platinum Drive, we prioritize customer satisfaction with flexible rental plans, competitive pricing, and 24/7 support. Our commitment to quality ensures that every vehicle in our fleet is thoroughly inspected, clean, and ready to deliver an exceptional driving experience.</p>
					<p style="text-align: justify;">With easy booking options and a dedicated team, we make renting a car hassle-free and enjoyable. Choose Platinum Drive Rent A Car and travel in comfort, style, and reliability.</p>
					<!-- <p><a href="#" class="btn btn-primary py-3 px-4">Search Vehicle</a></p> -->
					</div>
				  </div>
			  </div>
		  </div>
	</section>
	
	<!-- Our Premium Services section starts -->
	<section class="ftco-section" style="background: #ffffff;">
		<div class="container">
			<div class="row justify-content-center mb-5">
				<div class="col-md-8 text-center heading-section ftco-animate">
					<span class="subheading" style="color: #d4af37; font-weight: 600; letter-spacing: 2px;">Services</span>
					<h2 class="mb-3" style="color: #0a1628; font-weight: 700; text-transform: uppercase;">Our Exclusive Services</h2>
					<p style="color: #0a1628; font-size: 1.05em; line-height: 1.8; max-width: 700px; margin: 0 auto;">
						At Platinum Drive, we redefine luxury transportation. From private sightseeing tours to seamless airport transfers, our services are tailored for comfort, style, and absolute peace of mind.
					</p>
				</div>
			</div>

			<!-- Services Grid -->
			<div class="row">
				<!-- Service 1 -->
				<div class="col-md-6 col-lg-3">
					<div class="service-card text-center" style="background: #102c4e; padding: 40px; border-radius: 20px; border: 2px solid rgba(212, 175, 55, 0.3); box-shadow: 0 10px 40px rgba(212,175,55,0.1); transition: all 0.4s ease; height: 92%;">
						<div class="service-icon" style="font-size: 3em; color: #d4af37; width: 90px; height: 90px; display: flex; align-items: center; justify-content: center; margin: 0 auto 20px; border-radius: 50%; border: 2px solid rgba(212,175,55,0.4); box-shadow: 0 6px 20px rgba(212,175,55,0.15);">
							<i class="fas fa-map-marked-alt"></i>
						</div>
						<h3 class="heading mb-3" style="color: #d4af37; text-transform: uppercase; letter-spacing: 1px; font-size: 20px;">Sightseeing Tours</h3>
						<p style="color: #f0f0f0; line-height: 1.6; font-size: 1.05em; text-align:justify;">
							Explore the city in unmatched comfort and style. Personalized routes, elite vehicles, and professional chauffeurs make every tour unforgettable.
						</p>
					</div>
				</div>

				<!-- Service 2 -->
				<div class="col-md-6 col-lg-3">
					<div class="service-card text-center" style="background: #102c4e; padding: 40px; border-radius: 20px; border: 2px solid rgba(212, 175, 55, 0.3); box-shadow: 0 10px 40px rgba(212,175,55,0.1); transition: all 0.4s ease; height: 92%;">
						<div class="service-icon" style="font-size: 3em; color: #d4af37; width: 90px; height: 90px; display: flex; align-items: center; justify-content: center; margin: 0 auto 20px; border-radius: 50%; border: 2px solid rgba(212,175,55,0.4); box-shadow: 0 6px 20px rgba(212,175,55,0.15);">
							<i class="fas fa-city"></i>
						</div>
						<h3 class="heading mb-3" style="color: #d4af37; text-transform: uppercase; letter-spacing: 1px; font-size: 23px;">City Transfer</h3>
						<p style="color: #f0f0f0; line-height: 1.6; font-size: 1.05em; text-align:justify;">
							Effortless and stylish travel within the city. Our professional drivers and premium fleet ensure stress-free and punctual transfers.
						</p>
					</div>
				</div>

				<!-- Service 3 -->
				<div class="col-md-6 col-lg-3">
					<div class="service-card text-center" style="background: #102c4e; padding: 40px; border-radius: 20px; border: 2px solid rgba(212, 175, 55, 0.3); box-shadow: 0 10px 40px rgba(212,175,55,0.1); transition: all 0.4s ease; height: 92%;">
						<div class="service-icon" style="font-size: 3em; color: #d4af37; width: 90px; height: 90px; display: flex; align-items: center; justify-content: center; margin: 0 auto 20px; border-radius: 50%; border: 2px solid rgba(212,175,55,0.4); box-shadow: 0 6px 20px rgba(212,175,55,0.15);">
							<i class="fas fa-plane"></i>
						</div>
						<h3 class="heading mb-3" style="color: #d4af37; text-transform: uppercase; letter-spacing: 1px; font-size: 20px;">Airport Transfer</h3>
						<p style="color: #f0f0f0; line-height: 1.6; font-size: 1.05em; text-align:justify;">
							Seamless airport pickups and drop-offs. Luxury vehicles, punctual service, and professional drivers ensure a smooth start or end to your journey.
						</p>
					</div>
				</div>

				<!-- Service 4 -->
				<div class="col-md-6 col-lg-3">
					<div class="service-card text-center" style="background: #102c4e; padding: 40px; border-radius: 20px; border: 2px solid rgba(212, 175, 55, 0.3); box-shadow: 0 10px 40px rgba(212,175,55,0.1); transition: all 0.4s ease; height: 92%;">
						<div class="service-icon" style="font-size: 3em; color: #d4af37; width: 90px; height: 90px; display: flex; align-items: center; justify-content: center; margin: 0 auto 20px; border-radius: 50%; border: 2px solid rgba(212,175,55,0.4); box-shadow: 0 6px 20px rgba(212,175,55,0.15);">
							<i class="fas fa-road"></i>
						</div>
						<h3 class="heading mb-3" style="color: #d4af37; text-transform: uppercase; letter-spacing: 1px; font-size: 20px;">Drive Experience</h3>
						<p style="color: #f0f0f0; line-height: 1.6; font-size: 1.05em; text-align:justify;">
							Comprehensive travel solutions for every journey. From city tours to special events, enjoy unrivaled luxury, comfort, and peace of mind with Platinum Drive.
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Our Premium Services section ends -->


	<!-- Counter Section starts -->
	<section class="ftco-counter ftco-section img" id="section-counter" style="background: #102c4e;">
		<div class="overlay"></div>
		<div class="container">
			<div class="row justify-content-center">
			
			<!-- Luxury Fleets -->
			<div class="col-md-6 col-lg-3 counter-wrap text-center mb-4" data-aos="fade-up" data-aos-delay="100">
				<div class="counter-box p-3 shadow-sm rounded-2xl hover:shadow-lg transition duration-300">
				<strong class="number d-block fs-2 fw-bold" data-number="80">0</strong>
				<span class="details d-block">Luxury <br>Fleets</span>
				</div>
			</div>

			<!-- Professional Chauffeurs -->
			<div class="col-md-6 col-lg-3 counter-wrap text-center mb-4" data-aos="fade-up" data-aos-delay="200">
				<div class="counter-box p-3 shadow-sm rounded-2xl hover:shadow-lg transition duration-300">
				<strong class="number d-block fs-2 fw-bold" data-number="90">0</strong>
				<span class="details d-block">Professional <br>Chauffeurs</span>
				</div>
			</div>

			<!-- Happy Customers -->
			<div class="col-md-6 col-lg-3 counter-wrap text-center mb-4" data-aos="fade-up" data-aos-delay="300">
				<div class="counter-box p-3 shadow-sm rounded-2xl hover:shadow-lg transition duration-300">
				<strong class="number d-block fs-2 fw-bold" data-number="180">0</strong>
				<span class="details d-block">Happy <br>Customers</span>
				</div>
			</div>

			<!-- Years of Experience (New) -->
			<div class="col-md-6 col-lg-3 counter-wrap text-center mb-4" data-aos="fade-up" data-aos-delay="400">
				<div class="counter-box p-3 shadow-sm rounded-2xl hover:shadow-lg transition duration-300">
				<strong class="number d-block fs-2 fw-bold" data-number="15">0</strong>
				<span class="details d-block">Years of <br>Experience</span>
				</div>
			</div>
			</div>
		</div>
	</section>

	<script>
		// Initialize AOS
		AOS.init({
			duration: 1000,
			once: true
		});

		// Counter Animation
		const counters = document.querySelectorAll(\'.number\');
		const options = { threshold: 0.6 };
		const startCount = (counter) => {
			const endValue = +counter.getAttribute(\'data-number\');
			const countUp = new CountUp(counter, endValue, { duration: 2 });
			if (!countUp.error) countUp.start();
		};

		const observer = new IntersectionObserver((entries, obs) => {
			entries.forEach(entry => {
			if (entry.isIntersecting) {
				startCount(entry.target);
				obs.unobserve(entry.target);
			}
			});
		}, options);

		counters.forEach(counter => observer.observe(counter));
	</script>
	<!-- Counter Section ends -->

	<!-- testimony-section starts -->
	<section class="ftco-section testimony-section bg-light py-5">
	<div class="container">
		<div class="row justify-content-center mb-3">
		<div class="col-md-8 text-center heading-section">
			<span class="subheading text-primary">Testimonials</span>
			<h2 class="mb-2 fw-bold">What Our Clients Say</h2>
			<p class="text-muted">Hear from our happy travelers about their Platinum Drive experiences.</p>
		</div>
		</div>

		<div class="row">
		<div class="col-md-12">
			<div class="carousel-testimony owl-carousel">
				<!-- Testimonial Item -->
				<div class="item">
					<div class="testimony-wrap rounded shadow-sm bg-white text-center p-4 transition-all hover:shadow-lg hover:-translate-y-1">
					<div class="user-img mx-auto mb-3 rounded-circle border border-3" 
						style="background-image: url(assets/images/reviews/1_profile.jpg); width: 90px; height: 90px; background-size: cover; background-position: center;">
					</div>
					<div class="text">
						<div class="mb-2 text-warning">
						<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
						</div>
						<p class="fst-italic mb-3" style="text-align: justify;">"I had an incredible tour with Platinum Drive! The booking process was smooth, and the entire experience exceeded expectations!"</p>
						<p class="name fw-bold mb-0">Sarah Thompson</p>
					</div>
					</div>
				</div>

				<div class="item">
					<div class="testimony-wrap rounded shadow-sm bg-white text-center p-4 transition-all hover:shadow-lg hover:-translate-y-1">
						<div class="user-img mx-auto mb-3 rounded-circle border border-3 border-primary" 
							style="background-image: url(assets/images/reviews/2_profile.jpg); width: 90px; height: 90px; background-size: cover; background-position: center;">
						</div>
						<div class="text">
						<div class="mb-2 text-warning">
							<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half-alt"></i>
						</div>
						<p class="fst-italic mb-3" style="text-align: justify;">"My recent trip was amazing, thanks to Platinum Drive! Everything was organized perfectly, from booking to the journey."</p>
						<p class="name fw-bold mb-0">Isabella Wilson</p>
						</div>
					</div>
				</div>

				<div class="item">
					<div class="testimony-wrap rounded shadow-sm bg-white text-center p-4 transition-all hover:shadow-lg hover:-translate-y-1">
					<div class="user-img mx-auto mb-3 rounded-circle border border-3 border-primary" 
						style="background-image: url(assets/images/reviews/3_profile.jpg); width: 90px; height: 90px; background-size: cover; background-position: center;">
					</div>
					<div class="text">
						<div class="mb-2 text-warning">
						<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
						</div>
						<p class="fst-italic mb-3" style="text-align: justify;">"Platinum Drive made my trip unforgettable! Booking was effortless, and the itinerary was perfectly crafted to my preferences."</p>
						<p class="name fw-bold mb-0">Emily Clark</p>
					</div>
					</div>
				</div>

				<div class="item">
					<div class="testimony-wrap rounded shadow-sm bg-white text-center p-4 transition-all hover:shadow-lg hover:-translate-y-1">
					<div class="user-img mx-auto mb-3 rounded-circle border border-3 border-primary" 
						style="background-image: url(assets/images/reviews/4_profile.jpg); width: 90px; height: 90px; background-size: cover; background-position: center;">
					</div>
					<div class="text">
						<div class="mb-2 text-warning">
						<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
						</div>
						<p class="fst-italic mb-3" style="text-align: justify;">"I had the pleasure of traveling with Platinum Drive, and it was spectacular. Everything was planned to perfection — truly premium service!"</p>
						<p class="name fw-bold mb-0">Michael Lee</p>
					</div>
					</div>
				</div>

				<div class="item">
					<div class="testimony-wrap rounded shadow-sm bg-white text-center p-4 transition-all hover:shadow-lg hover:-translate-y-1">
					<div class="user-img mx-auto mb-3 rounded-circle border border-3 border-primary" 
						style="background-image: url(assets/images/reviews/5_profile.jpg); width: 90px; height: 90px; background-size: cover; background-position: center;">
					</div>
					<div class="text">
						<div class="mb-2 text-warning">
						<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
						</div>
						<p class="fst-italic mb-3" style="text-align: justify;">"An amazing experience with Platinum Drive! The tour was seamless from start to finish. Their website made booking effortless."</p>
						<p class="name fw-bold mb-0">Olivia Harris</p>
					</div>
				</div>
				</div>
			</div>
		</div>
		</div>
	</div>
	</section>

	<script>
		$(document).ready(function(){
			$(\'.carousel-testimony\').owlCarousel({
				center: true,
				loop: true,
				items: 3,
				margin: 30,
				autoplay: true,
				autoplayTimeout: 4000,
				smartSpeed: 900,
				responsive: {
					0: { items: 1 },
					768: { items: 3 },
					1200: { items: 3 }
				}
			});
		});
	</script>
	<!-- testimony-section ends -->

	<!-- blogs-section starts -->
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center mb-3">
				<div class="col-md-7 heading-section text-center ftco-animate">
					<span class="subheading">Blog</span>
					<h2>Recent Blogs</h2>
				</div>
			</div>
			<div class="row d-flex">
				<div class="col-md-4 d-flex ftco-animate">
					<div class="blog-entry justify-content-end">
					<a href="#" class="block-20" style="background-image: url(\'assets/images/blogs/4.png\');"></a>
					<div class="text pt-2">
						<div class="meta mb-1">
						<div><a href="#">Jan. 29, 2025</a></div>    
						<div><a href="#" class="meta-chat"><span class="icon-chat"></span> 8</a></div>
						</div>
						<h3 class="heading mt-0"><a href="#">Top 5 Scenic Routes to Explore in Sri Lanka</a></h3>
						<p><a href="index.php?id=12" class="btn btn-primary">Read more</a></p>
					</div>
					</div>
				</div>
				<div class="col-md-4 d-flex ftco-animate">
					<div class="blog-entry justify-content-end">
					<a href="#" class="block-20" style="background-image: url(\'assets/images/blogs/5.webp\');">
					</a>
					<div class="text pt-2">
						<div class="meta mb-1">
						<div><a href="#">Feb. 19, 2025</a></div>
						<div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
						</div>
						<h3 class="heading mt-0"><a href="#">Hidden Gems: Exploring Sri Lanka\'s Untouched Villages</a></h3>
						<p><a href="index.php?id=11" class="btn btn-primary">Read more</a></p>
					</div>
					</div>
				</div>
				<div class="col-md-4 d-flex ftco-animate">
					<div class="blog-entry">
						<a href="#" class="block-20" style="background-image: url(\'assets/images/blogs/6.jpg\');">
						</a>
						<div class="text pt-2">
							<div class="meta mb-1">
							<div><a href="#">Mar. 22, 2025</a></div>
							<div><a href="#" class="meta-chat"><span class="icon-chat"></span> 12</a></div>
							</div>
							<h3 class="heading mt-0"><a href="#">Beaches vs. Mountains: Best Sri Lanka Destinations for Every Traveler</a></h3>
							<p><a href="index.php?id=10" class="btn btn-primary">Read more</a></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- blogs-section ends -->



<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/countup.js/2.0.7/countUp.min.js"></script>
<script src="https://kit.fontawesome.com/a2e0e9a64d.js" crossorigin="anonymous"></script>



<footer class="ftco-footer ftco-bg-dark ftco-section">
	<div class="container">
	  <div class="row mb-5">
		<div class="col-md">
		  <div class="ftco-footer-widget mb-4">
			<img src="assets/images/logo.png" alt="CarBook Logo" height="100">
			<p style="text-align: justify; margin-top: 8%;">Platinum Drive Rent a Car offers premium vehicles for transfers and city travel across Sri Lanka. Our high-end fleet and professional chauffeurs ensure a safe, comfortable, and stylish journey, tailored for business, leisure, or city exploration.</p>
		 
		  </div>
		</div>
	
		  <div class="col-md">
			<div class="ftco-footer-widget mb-4">
				<!-- <h2 class="ftco-heading-2">We are Located</h2>
			
					<iframe 
					  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7405.353880602396!2d8.51228779204323!3d47.511205671410366!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4790743bf365baf5%3A0xe35763ebf24c7305!2sHofstrasse%2015%2C%208181%20H%C3%B6ri%2C%20Switzerland!5e0!3m2!1sen!2slk!4v1754470128639!5m2!1sen!2slk" 
					  width="100%" height="200" style="border: 2px solid #ffffff;" allowfullscreen="" loading="lazy"></iframe> -->
				
			</div>
		  </div>
		<div class="col-md">
		  <div class="ftco-footer-widget mb-4">
			  <h2 class="ftco-heading-2">Contact Us</h2>
			  <div class="block-23 mb-3">
					<ul>
				   <li><a href="https://maps.app.goo.gl/xrmbXQFwX8j4buQh6"><span class="icon icon-map-marker"></span><span class="text">No : 375 / 2 / 1, Seeduwa, Sri Lanka</span></a></li> 
				  <li><a href="tel:+94768200099"><span class="icon icon-phone"></span><span class="text">+94 76 820 0099</span></a></li>
				  <li><a href="mailto:info@platinumdrive.lk"><span class="icon icon-envelope"></span><span class="text">info@platinumdrive.lk</span></a></li>
				</ul>
			  </div>
			<ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-2">
			  <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
			  <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
			  <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
			</ul>
		  </div>
		</div>
	  </div>
	  <div class="row">
		<div class="col-md-12 text-center">

		  <p><!-- Link back to Colorlib can\'t be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All Rights Reserved | Platinum Drive Rent A Car </a>
<!-- Link back to Colorlib can\'t be removed. Template is licensed under CC BY 3.0. --></p>
		</div>
	  </div>
	</div>
  </footer>
  


<!-- loader -->
<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

  <!-- WhatsApp Chat Popup starts -->
<div id="whatsapp-chat-btn" class="wa-button">
    <img src="assets/images/whatsapp-icon.png" class="img-fluid" style="width:30px">
</div>

<div id="whatsapp-chat-popup" class="wa-popup hidden">
    <div class="wa-header">
        <i class="bi bi-whatsapp"></i> Chat With Us
        <span id="close-chat">×</span>
    </div>

    <div class="wa-body">
        <p style="font-size:14px;">Hey! Looking to rent a car? We\'re here to help!</p>
        <textarea id="wa-chat-input" placeholder="Type your message..." sty></textarea>
        <button id="wa-send-btn">Send</button>
    </div>
</div>


<script>
    document.addEventListener("DOMContentLoaded", function () {
        const chatBtn = document.getElementById("whatsapp-chat-btn");
        const chatPopup = document.getElementById("whatsapp-chat-popup");
        const closeChat = document.getElementById("close-chat");
        const sendBtn = document.getElementById("wa-send-btn");
        const messageBox = document.getElementById("wa-chat-input");
        const phone = "94764428250";

        // Open popup
        chatBtn.addEventListener("click", () => {
            chatPopup.classList.remove("hidden");
        });

        // Close popup
        closeChat.addEventListener("click", () => {
            chatPopup.classList.add("hidden");
        });

        // Send message
        sendBtn.addEventListener("click", () => {
            let msg = messageBox.value.trim();
            if (!msg) msg = "Hello! I need more information ?";

            const url = `https://wa.me/${phone}?text=${encodeURIComponent(msg)}`;
            window.open(url, "_blank");

            messageBox.value = "";
            chatPopup.classList.add("hidden");
        });
    });
</script>
<!-- WhatsApp Chat Popup ends -->


<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>



<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery-migrate-3.0.1.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.easing.1.3.js"></script>
<script src="assets/js/jquery.waypoints.min.js"></script>
<script src="assets/js/jquery.stellar.min.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/jquery.magnific-popup.min.js"></script>
<script src="assets/js/aos.js"></script>
<script src="assets/js/jquery.animateNumber.min.js"></script>
<script src="assets/js/bootstrap-datepicker.js"></script>
<script src="assets/js/jquery.timepicker.min.js"></script>
<script src="assets/js/scrollax.min.js"></script>

<script src="assets/js/google-map.js"></script>
<script src="assets/js/main.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAHmbwBrk0OKY0Nhp9FrR_zn8HKLGZ54OU&libraries=places"></script>
  
  <script>
    function initAutocomplete() {
        const pickupInput = document.getElementById(\'pickup_location\');
        const dropoffInput = document.getElementById(\'dropoff_location\');

        const pickupAutocomplete = new google.maps.places.Autocomplete(pickupInput);
        const dropoffAutocomplete = new google.maps.places.Autocomplete(dropoffInput);
    }

    google.maps.event.addDomListener(window, \'load\', initAutocomplete);
</script>

',
    '_isForward' => false,
  ),
  'contentType' => 
  array (
    'id' => 1,
    'name' => 'HTML',
    'description' => 'HTML content',
    'mime_type' => 'text/html',
    'file_extensions' => '.html',
    'icon' => '',
    'headers' => NULL,
    'binary' => 0,
  ),
  'policyCache' => 
  array (
  ),
  'elementCache' => 
  array (
    '[[$header?]]' => '  <head>
    <title>Platinum Car Rent</title>
    <link rel="icon" type="assets/images/favicon.png" href="assets/images/favicon.png">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="assets/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    

  <!-- Google Maps & Places API -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places"></script>


    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">

    <link rel="stylesheet" href="assets/css/aos.css">

    <link rel="stylesheet" href="assets/css/ionicons.min.css">

    <link rel="stylesheet" href="assets/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="assets/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="assets/css/flaticon.css">
    <link rel="stylesheet" href="assets/css/icomoon.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

     <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
  </head>',
    '[[~1]]' => 'index.php?id=1',
    '[[~2]]' => 'index.php?id=2',
    '[[~13]]' => 'index.php?id=13',
    '[[~16]]' => 'index.php?id=16',
    '[[~3]]' => 'index.php?id=3',
    '[[$navbar?]]' => ' <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
        <a class="navbar-brand" href="index.php?id=1">
          <img id="logo" src="assets/images/logo1.png" alt="Platinum Logo" height="100">
      </a>
      
      
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="index.php?id=1" class="nav-link">HOME</a></li>
	          <!-- <li class="nav-item"><a href="about.html" class="nav-link">ABOUT US</a></li> -->
	          <li class="nav-item"><a href="index.php?id=2" class="nav-link">FLEET</a></li>
	          <!-- <li class="nav-item"><a href="pricing.html" class="nav-link">BLOG</a></li> -->
	          <!-- <li class="nav-item"><a href="car.html" class="nav-link">Cars</a></li>
	          <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li> -->
	          <li class="nav-item"><a href="index.php?id=13" class="nav-link">FAQ</a></li>
	          <li class="nav-item"><a href="index.php?id=16" class="nav-link">ABOUT US</a></li>
	          <li class="nav-item"><a href="index.php?id=3" class="nav-link">CONTACT US</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>',
    '[[*id]]' => 1,
    '[[~4]]' => 'index.php?id=4',
    '[[~5]]' => 'index.php?id=5',
    '[[~6]]' => 'index.php?id=6',
    '[[~7]]' => 'index.php?id=7',
    '[[~8]]' => 'index.php?id=8',
    '[[~9]]' => 'index.php?id=9',
    '[[~12]]' => 'index.php?id=12',
    '[[~11]]' => 'index.php?id=11',
    '[[~10]]' => 'index.php?id=10',
    '[[$footer?]]' => '
<footer class="ftco-footer ftco-bg-dark ftco-section">
	<div class="container">
	  <div class="row mb-5">
		<div class="col-md">
		  <div class="ftco-footer-widget mb-4">
			<img src="assets/images/logo.png" alt="CarBook Logo" height="100">
			<p style="text-align: justify; margin-top: 8%;">Platinum Drive Rent a Car offers premium vehicles for transfers and city travel across Sri Lanka. Our high-end fleet and professional chauffeurs ensure a safe, comfortable, and stylish journey, tailored for business, leisure, or city exploration.</p>
		 
		  </div>
		</div>
	
		  <div class="col-md">
			<div class="ftco-footer-widget mb-4">
				<!-- <h2 class="ftco-heading-2">We are Located</h2>
			
					<iframe 
					  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7405.353880602396!2d8.51228779204323!3d47.511205671410366!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4790743bf365baf5%3A0xe35763ebf24c7305!2sHofstrasse%2015%2C%208181%20H%C3%B6ri%2C%20Switzerland!5e0!3m2!1sen!2slk!4v1754470128639!5m2!1sen!2slk" 
					  width="100%" height="200" style="border: 2px solid #ffffff;" allowfullscreen="" loading="lazy"></iframe> -->
				
			</div>
		  </div>
		<div class="col-md">
		  <div class="ftco-footer-widget mb-4">
			  <h2 class="ftco-heading-2">Contact Us</h2>
			  <div class="block-23 mb-3">
					<ul>
				   <li><a href="https://maps.app.goo.gl/xrmbXQFwX8j4buQh6"><span class="icon icon-map-marker"></span><span class="text">No : 375 / 2 / 1, Seeduwa, Sri Lanka</span></a></li> 
				  <li><a href="tel:+94768200099"><span class="icon icon-phone"></span><span class="text">+94 76 820 0099</span></a></li>
				  <li><a href="mailto:info@platinumdrive.lk"><span class="icon icon-envelope"></span><span class="text">info@platinumdrive.lk</span></a></li>
				</ul>
			  </div>
			<ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-2">
			  <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
			  <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
			  <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
			</ul>
		  </div>
		</div>
	  </div>
	  <div class="row">
		<div class="col-md-12 text-center">

		  <p><!-- Link back to Colorlib can\'t be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All Rights Reserved | Platinum Drive Rent A Car </a>
<!-- Link back to Colorlib can\'t be removed. Template is licensed under CC BY 3.0. --></p>
		</div>
	  </div>
	</div>
  </footer>
  


<!-- loader -->
<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

  <!-- WhatsApp Chat Popup starts -->
<div id="whatsapp-chat-btn" class="wa-button">
    <img src="assets/images/whatsapp-icon.png" class="img-fluid" style="width:30px">
</div>

<div id="whatsapp-chat-popup" class="wa-popup hidden">
    <div class="wa-header">
        <i class="bi bi-whatsapp"></i> Chat With Us
        <span id="close-chat">×</span>
    </div>

    <div class="wa-body">
        <p style="font-size:14px;">Hey! Looking to rent a car? We\'re here to help!</p>
        <textarea id="wa-chat-input" placeholder="Type your message..." sty></textarea>
        <button id="wa-send-btn">Send</button>
    </div>
</div>


<script>
    document.addEventListener("DOMContentLoaded", function () {
        const chatBtn = document.getElementById("whatsapp-chat-btn");
        const chatPopup = document.getElementById("whatsapp-chat-popup");
        const closeChat = document.getElementById("close-chat");
        const sendBtn = document.getElementById("wa-send-btn");
        const messageBox = document.getElementById("wa-chat-input");
        const phone = "94764428250";

        // Open popup
        chatBtn.addEventListener("click", () => {
            chatPopup.classList.remove("hidden");
        });

        // Close popup
        closeChat.addEventListener("click", () => {
            chatPopup.classList.add("hidden");
        });

        // Send message
        sendBtn.addEventListener("click", () => {
            let msg = messageBox.value.trim();
            if (!msg) msg = "Hello! I need more information ?";

            const url = `https://wa.me/${phone}?text=${encodeURIComponent(msg)}`;
            window.open(url, "_blank");

            messageBox.value = "";
            chatPopup.classList.add("hidden");
        });
    });
</script>
<!-- WhatsApp Chat Popup ends -->


<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>



<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery-migrate-3.0.1.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.easing.1.3.js"></script>
<script src="assets/js/jquery.waypoints.min.js"></script>
<script src="assets/js/jquery.stellar.min.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/jquery.magnific-popup.min.js"></script>
<script src="assets/js/aos.js"></script>
<script src="assets/js/jquery.animateNumber.min.js"></script>
<script src="assets/js/bootstrap-datepicker.js"></script>
<script src="assets/js/jquery.timepicker.min.js"></script>
<script src="assets/js/scrollax.min.js"></script>

<script src="assets/js/google-map.js"></script>
<script src="assets/js/main.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAHmbwBrk0OKY0Nhp9FrR_zn8HKLGZ54OU&libraries=places"></script>
  
  <script>
    function initAutocomplete() {
        const pickupInput = document.getElementById(\'pickup_location\');
        const dropoffInput = document.getElementById(\'dropoff_location\');

        const pickupAutocomplete = new google.maps.places.Autocomplete(pickupInput);
        const dropoffAutocomplete = new google.maps.places.Autocomplete(dropoffInput);
    }

    google.maps.event.addDomListener(window, \'load\', initAutocomplete);
</script>

',
  ),
  'sourceCache' => 
  array (
    'MODX\\Revolution\\modChunk' => 
    array (
      'header' => 
      array (
        'fields' => 
        array (
          'id' => 2,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'header',
          'description' => '',
          'editor_type' => 0,
          'category' => 0,
          'cache_type' => 0,
          'snippet' => '  <head>
    <title>Platinum Car Rent</title>
    <link rel="icon" type="assets/images/favicon.png" href="assets/images/favicon.png">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="assets/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    

  <!-- Google Maps & Places API -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places"></script>


    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">

    <link rel="stylesheet" href="assets/css/aos.css">

    <link rel="stylesheet" href="assets/css/ionicons.min.css">

    <link rel="stylesheet" href="assets/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="assets/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="assets/css/flaticon.css">
    <link rel="stylesheet" href="assets/css/icomoon.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

     <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
  </head>',
          'locked' => false,
          'properties' => 
          array (
          ),
          'static' => false,
          'static_file' => '',
          'content' => '  <head>
    <title>Platinum Car Rent</title>
    <link rel="icon" type="assets/images/favicon.png" href="assets/images/favicon.png">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="assets/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    

  <!-- Google Maps & Places API -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places"></script>


    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">

    <link rel="stylesheet" href="assets/css/aos.css">

    <link rel="stylesheet" href="assets/css/ionicons.min.css">

    <link rel="stylesheet" href="assets/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="assets/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="assets/css/flaticon.css">
    <link rel="stylesheet" href="assets/css/icomoon.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

     <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
  </head>',
        ),
        'policies' => 
        array (
          'web' => 
          array (
          ),
        ),
        'source' => 
        array (
          'id' => 1,
          'name' => 'Filesystem',
          'description' => '',
          'class_key' => 'MODX\\Revolution\\Sources\\modFileMediaSource',
          'properties' => 
          array (
          ),
          'is_stream' => true,
        ),
      ),
      'navbar' => 
      array (
        'fields' => 
        array (
          'id' => 3,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'navbar',
          'description' => '',
          'editor_type' => 0,
          'category' => 0,
          'cache_type' => 0,
          'snippet' => ' <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
        <a class="navbar-brand" href="[[~1]]">
          <img id="logo" src="assets/images/logo1.png" alt="Platinum Logo" height="100">
      </a>
      
      
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="[[~1]]" class="nav-link">HOME</a></li>
	          <!-- <li class="nav-item"><a href="about.html" class="nav-link">ABOUT US</a></li> -->
	          <li class="nav-item"><a href="[[~2]]" class="nav-link">FLEET</a></li>
	          <!-- <li class="nav-item"><a href="pricing.html" class="nav-link">BLOG</a></li> -->
	          <!-- <li class="nav-item"><a href="car.html" class="nav-link">Cars</a></li>
	          <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li> -->
	          <li class="nav-item"><a href="[[~13]]" class="nav-link">FAQ</a></li>
	          <li class="nav-item"><a href="[[~16]]" class="nav-link">ABOUT US</a></li>
	          <li class="nav-item"><a href="[[~3]]" class="nav-link">CONTACT US</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>',
          'locked' => false,
          'properties' => 
          array (
          ),
          'static' => false,
          'static_file' => '',
          'content' => ' <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
        <a class="navbar-brand" href="[[~1]]">
          <img id="logo" src="assets/images/logo1.png" alt="Platinum Logo" height="100">
      </a>
      
      
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="[[~1]]" class="nav-link">HOME</a></li>
	          <!-- <li class="nav-item"><a href="about.html" class="nav-link">ABOUT US</a></li> -->
	          <li class="nav-item"><a href="[[~2]]" class="nav-link">FLEET</a></li>
	          <!-- <li class="nav-item"><a href="pricing.html" class="nav-link">BLOG</a></li> -->
	          <!-- <li class="nav-item"><a href="car.html" class="nav-link">Cars</a></li>
	          <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li> -->
	          <li class="nav-item"><a href="[[~13]]" class="nav-link">FAQ</a></li>
	          <li class="nav-item"><a href="[[~16]]" class="nav-link">ABOUT US</a></li>
	          <li class="nav-item"><a href="[[~3]]" class="nav-link">CONTACT US</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>',
        ),
        'policies' => 
        array (
          'web' => 
          array (
          ),
        ),
        'source' => 
        array (
          'id' => 1,
          'name' => 'Filesystem',
          'description' => '',
          'class_key' => 'MODX\\Revolution\\Sources\\modFileMediaSource',
          'properties' => 
          array (
          ),
          'is_stream' => true,
        ),
      ),
      'footer' => 
      array (
        'fields' => 
        array (
          'id' => 1,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'footer',
          'description' => '',
          'editor_type' => 0,
          'category' => 0,
          'cache_type' => 0,
          'snippet' => '
<footer class="ftco-footer ftco-bg-dark ftco-section">
	<div class="container">
	  <div class="row mb-5">
		<div class="col-md">
		  <div class="ftco-footer-widget mb-4">
			<img src="assets/images/logo.png" alt="CarBook Logo" height="100">
			<p style="text-align: justify; margin-top: 8%;">Platinum Drive Rent a Car offers premium vehicles for transfers and city travel across Sri Lanka. Our high-end fleet and professional chauffeurs ensure a safe, comfortable, and stylish journey, tailored for business, leisure, or city exploration.</p>
		 
		  </div>
		</div>
	
		  <div class="col-md">
			<div class="ftco-footer-widget mb-4">
				<!-- <h2 class="ftco-heading-2">We are Located</h2>
			
					<iframe 
					  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7405.353880602396!2d8.51228779204323!3d47.511205671410366!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4790743bf365baf5%3A0xe35763ebf24c7305!2sHofstrasse%2015%2C%208181%20H%C3%B6ri%2C%20Switzerland!5e0!3m2!1sen!2slk!4v1754470128639!5m2!1sen!2slk" 
					  width="100%" height="200" style="border: 2px solid #ffffff;" allowfullscreen="" loading="lazy"></iframe> -->
				
			</div>
		  </div>
		<div class="col-md">
		  <div class="ftco-footer-widget mb-4">
			  <h2 class="ftco-heading-2">Contact Us</h2>
			  <div class="block-23 mb-3">
					<ul>
				   <li><a href="https://maps.app.goo.gl/xrmbXQFwX8j4buQh6"><span class="icon icon-map-marker"></span><span class="text">No : 375 / 2 / 1, Seeduwa, Sri Lanka</span></a></li> 
				  <li><a href="tel:+94768200099"><span class="icon icon-phone"></span><span class="text">+94 76 820 0099</span></a></li>
				  <li><a href="mailto:info@platinumdrive.lk"><span class="icon icon-envelope"></span><span class="text">info@platinumdrive.lk</span></a></li>
				</ul>
			  </div>
			<ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-2">
			  <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
			  <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
			  <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
			</ul>
		  </div>
		</div>
	  </div>
	  <div class="row">
		<div class="col-md-12 text-center">

		  <p><!-- Link back to Colorlib can\'t be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All Rights Reserved | Platinum Drive Rent A Car </a>
<!-- Link back to Colorlib can\'t be removed. Template is licensed under CC BY 3.0. --></p>
		</div>
	  </div>
	</div>
  </footer>
  


<!-- loader -->
<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

  <!-- WhatsApp Chat Popup starts -->
<div id="whatsapp-chat-btn" class="wa-button">
    <img src="assets/images/whatsapp-icon.png" class="img-fluid" style="width:30px">
</div>

<div id="whatsapp-chat-popup" class="wa-popup hidden">
    <div class="wa-header">
        <i class="bi bi-whatsapp"></i> Chat With Us
        <span id="close-chat">×</span>
    </div>

    <div class="wa-body">
        <p style="font-size:14px;">Hey! Looking to rent a car? We\'re here to help!</p>
        <textarea id="wa-chat-input" placeholder="Type your message..." sty></textarea>
        <button id="wa-send-btn">Send</button>
    </div>
</div>


<script>
    document.addEventListener("DOMContentLoaded", function () {
        const chatBtn = document.getElementById("whatsapp-chat-btn");
        const chatPopup = document.getElementById("whatsapp-chat-popup");
        const closeChat = document.getElementById("close-chat");
        const sendBtn = document.getElementById("wa-send-btn");
        const messageBox = document.getElementById("wa-chat-input");
        const phone = "94764428250";

        // Open popup
        chatBtn.addEventListener("click", () => {
            chatPopup.classList.remove("hidden");
        });

        // Close popup
        closeChat.addEventListener("click", () => {
            chatPopup.classList.add("hidden");
        });

        // Send message
        sendBtn.addEventListener("click", () => {
            let msg = messageBox.value.trim();
            if (!msg) msg = "Hello! I need more information ?";

            const url = `https://wa.me/${phone}?text=${encodeURIComponent(msg)}`;
            window.open(url, "_blank");

            messageBox.value = "";
            chatPopup.classList.add("hidden");
        });
    });
</script>
<!-- WhatsApp Chat Popup ends -->


<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>



<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery-migrate-3.0.1.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.easing.1.3.js"></script>
<script src="assets/js/jquery.waypoints.min.js"></script>
<script src="assets/js/jquery.stellar.min.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/jquery.magnific-popup.min.js"></script>
<script src="assets/js/aos.js"></script>
<script src="assets/js/jquery.animateNumber.min.js"></script>
<script src="assets/js/bootstrap-datepicker.js"></script>
<script src="assets/js/jquery.timepicker.min.js"></script>
<script src="assets/js/scrollax.min.js"></script>

<script src="assets/js/google-map.js"></script>
<script src="assets/js/main.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAHmbwBrk0OKY0Nhp9FrR_zn8HKLGZ54OU&libraries=places"></script>
  
  <script>
    function initAutocomplete() {
        const pickupInput = document.getElementById(\'pickup_location\');
        const dropoffInput = document.getElementById(\'dropoff_location\');

        const pickupAutocomplete = new google.maps.places.Autocomplete(pickupInput);
        const dropoffAutocomplete = new google.maps.places.Autocomplete(dropoffInput);
    }

    google.maps.event.addDomListener(window, \'load\', initAutocomplete);
</script>

',
          'locked' => false,
          'properties' => 
          array (
          ),
          'static' => false,
          'static_file' => '',
          'content' => '
<footer class="ftco-footer ftco-bg-dark ftco-section">
	<div class="container">
	  <div class="row mb-5">
		<div class="col-md">
		  <div class="ftco-footer-widget mb-4">
			<img src="assets/images/logo.png" alt="CarBook Logo" height="100">
			<p style="text-align: justify; margin-top: 8%;">Platinum Drive Rent a Car offers premium vehicles for transfers and city travel across Sri Lanka. Our high-end fleet and professional chauffeurs ensure a safe, comfortable, and stylish journey, tailored for business, leisure, or city exploration.</p>
		 
		  </div>
		</div>
	
		  <div class="col-md">
			<div class="ftco-footer-widget mb-4">
				<!-- <h2 class="ftco-heading-2">We are Located</h2>
			
					<iframe 
					  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7405.353880602396!2d8.51228779204323!3d47.511205671410366!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4790743bf365baf5%3A0xe35763ebf24c7305!2sHofstrasse%2015%2C%208181%20H%C3%B6ri%2C%20Switzerland!5e0!3m2!1sen!2slk!4v1754470128639!5m2!1sen!2slk" 
					  width="100%" height="200" style="border: 2px solid #ffffff;" allowfullscreen="" loading="lazy"></iframe> -->
				
			</div>
		  </div>
		<div class="col-md">
		  <div class="ftco-footer-widget mb-4">
			  <h2 class="ftco-heading-2">Contact Us</h2>
			  <div class="block-23 mb-3">
					<ul>
				   <li><a href="https://maps.app.goo.gl/xrmbXQFwX8j4buQh6"><span class="icon icon-map-marker"></span><span class="text">No : 375 / 2 / 1, Seeduwa, Sri Lanka</span></a></li> 
				  <li><a href="tel:+94768200099"><span class="icon icon-phone"></span><span class="text">+94 76 820 0099</span></a></li>
				  <li><a href="mailto:info@platinumdrive.lk"><span class="icon icon-envelope"></span><span class="text">info@platinumdrive.lk</span></a></li>
				</ul>
			  </div>
			<ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-2">
			  <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
			  <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
			  <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
			</ul>
		  </div>
		</div>
	  </div>
	  <div class="row">
		<div class="col-md-12 text-center">

		  <p><!-- Link back to Colorlib can\'t be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All Rights Reserved | Platinum Drive Rent A Car </a>
<!-- Link back to Colorlib can\'t be removed. Template is licensed under CC BY 3.0. --></p>
		</div>
	  </div>
	</div>
  </footer>
  


<!-- loader -->
<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

  <!-- WhatsApp Chat Popup starts -->
<div id="whatsapp-chat-btn" class="wa-button">
    <img src="assets/images/whatsapp-icon.png" class="img-fluid" style="width:30px">
</div>

<div id="whatsapp-chat-popup" class="wa-popup hidden">
    <div class="wa-header">
        <i class="bi bi-whatsapp"></i> Chat With Us
        <span id="close-chat">×</span>
    </div>

    <div class="wa-body">
        <p style="font-size:14px;">Hey! Looking to rent a car? We\'re here to help!</p>
        <textarea id="wa-chat-input" placeholder="Type your message..." sty></textarea>
        <button id="wa-send-btn">Send</button>
    </div>
</div>


<script>
    document.addEventListener("DOMContentLoaded", function () {
        const chatBtn = document.getElementById("whatsapp-chat-btn");
        const chatPopup = document.getElementById("whatsapp-chat-popup");
        const closeChat = document.getElementById("close-chat");
        const sendBtn = document.getElementById("wa-send-btn");
        const messageBox = document.getElementById("wa-chat-input");
        const phone = "94764428250";

        // Open popup
        chatBtn.addEventListener("click", () => {
            chatPopup.classList.remove("hidden");
        });

        // Close popup
        closeChat.addEventListener("click", () => {
            chatPopup.classList.add("hidden");
        });

        // Send message
        sendBtn.addEventListener("click", () => {
            let msg = messageBox.value.trim();
            if (!msg) msg = "Hello! I need more information ?";

            const url = `https://wa.me/${phone}?text=${encodeURIComponent(msg)}`;
            window.open(url, "_blank");

            messageBox.value = "";
            chatPopup.classList.add("hidden");
        });
    });
</script>
<!-- WhatsApp Chat Popup ends -->


<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>



<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery-migrate-3.0.1.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.easing.1.3.js"></script>
<script src="assets/js/jquery.waypoints.min.js"></script>
<script src="assets/js/jquery.stellar.min.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/jquery.magnific-popup.min.js"></script>
<script src="assets/js/aos.js"></script>
<script src="assets/js/jquery.animateNumber.min.js"></script>
<script src="assets/js/bootstrap-datepicker.js"></script>
<script src="assets/js/jquery.timepicker.min.js"></script>
<script src="assets/js/scrollax.min.js"></script>

<script src="assets/js/google-map.js"></script>
<script src="assets/js/main.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAHmbwBrk0OKY0Nhp9FrR_zn8HKLGZ54OU&libraries=places"></script>
  
  <script>
    function initAutocomplete() {
        const pickupInput = document.getElementById(\'pickup_location\');
        const dropoffInput = document.getElementById(\'dropoff_location\');

        const pickupAutocomplete = new google.maps.places.Autocomplete(pickupInput);
        const dropoffAutocomplete = new google.maps.places.Autocomplete(dropoffInput);
    }

    google.maps.event.addDomListener(window, \'load\', initAutocomplete);
</script>

',
        ),
        'policies' => 
        array (
          'web' => 
          array (
          ),
        ),
        'source' => 
        array (
          'id' => 1,
          'name' => 'Filesystem',
          'description' => '',
          'class_key' => 'MODX\\Revolution\\Sources\\modFileMediaSource',
          'properties' => 
          array (
          ),
          'is_stream' => true,
        ),
      ),
    ),
    'MODX\\Revolution\\modSnippet' => 
    array (
      'SaveFormSession' => 
      array (
        'fields' => 
        array (
          'id' => 6,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'SaveFormSession',
          'description' => '',
          'editor_type' => 0,
          'category' => 0,
          'cache_type' => 0,
          'snippet' => 'if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

if ($_SERVER[\'REQUEST_METHOD\'] === \'POST\') {
    // Save form values to session
    $_SESSION[\'booking\'] = [
        \'pickup_location\' => $_POST[\'pickup_location\'] ?? \'\',
        \'dropoff_location\' => $_POST[\'dropoff_location\'] ?? \'\',
        \'pickup_date\' => $_POST[\'pickup_date\'] ?? $_POST[\'pickup_date\'] ?? \'\',
        \'pickup_time\' => $_POST[\'pickup_time\'] ?? $_POST[\'time_pick\'] ?? \'\',
        \'dropoff_date\' => $_POST[\'book_off_date\'] ?? $_POST[\'book_off_date\'] ?? \'\',
        \'dropoff_time\' => $_POST[\'time_drop\'] ?? $_POST[\'time_drop\'] ?? \'\',
    ];

    // Optional: Redirect to car listing page (ID 2 in your case)
    $url = $modx->makeUrl(2); // Replace 2 with your "Choose Your Car" page ID
    $modx->sendRedirect($url);
}
return \'\';',
          'locked' => false,
          'properties' => 
          array (
          ),
          'moduleguid' => '',
          'static' => false,
          'static_file' => '',
          'content' => 'if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

if ($_SERVER[\'REQUEST_METHOD\'] === \'POST\') {
    // Save form values to session
    $_SESSION[\'booking\'] = [
        \'pickup_location\' => $_POST[\'pickup_location\'] ?? \'\',
        \'dropoff_location\' => $_POST[\'dropoff_location\'] ?? \'\',
        \'pickup_date\' => $_POST[\'pickup_date\'] ?? $_POST[\'pickup_date\'] ?? \'\',
        \'pickup_time\' => $_POST[\'pickup_time\'] ?? $_POST[\'time_pick\'] ?? \'\',
        \'dropoff_date\' => $_POST[\'book_off_date\'] ?? $_POST[\'book_off_date\'] ?? \'\',
        \'dropoff_time\' => $_POST[\'time_drop\'] ?? $_POST[\'time_drop\'] ?? \'\',
    ];

    // Optional: Redirect to car listing page (ID 2 in your case)
    $url = $modx->makeUrl(2); // Replace 2 with your "Choose Your Car" page ID
    $modx->sendRedirect($url);
}
return \'\';',
        ),
        'policies' => 
        array (
          'web' => 
          array (
          ),
        ),
        'source' => 
        array (
          'id' => 1,
          'name' => 'Filesystem',
          'description' => '',
          'class_key' => 'MODX\\Revolution\\Sources\\modFileMediaSource',
          'properties' => 
          array (
          ),
          'is_stream' => true,
        ),
      ),
    ),
    'MODX\\Revolution\\modTemplateVar' => 
    array (
    ),
  ),
);