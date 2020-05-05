<div class="hero lazy" data-original="assets/img/bg.jpg" style="display: block; background-image: url(assets/img/bg.jpg);">
	<div class="hero__overlay"></div>
	<div class="hero__content">
		<div class="hero__leftBox">

		<h1 class="hero__byline hero__byline--homepageFix">Delightful stays in more than 100 cities</h1>

		<div class="hero__searchbar homeSearchbar">
			<form action="/search" method="GET" id="js-search-form">
			    <fieldset class="searchbar__container">
			        <div class="searchbar__fieldwrap searchbar__fieldwrap--location">

                    <select name="searching" class="chosen-select" style="background-color: white;" id="location" required >

              <option>Select Location</option>

              <option value="lahore">Lahore</option>

              <option value="karachi">Karachi</option>

              <option value="islamabad">Islamabad</option>

            </select>


			            <div tabindex="0" class="searchbar__cityselect">




			                <ul class="searchbar__cityselect__dropdown-menu2 searchbar__cityselect__dropdown-menu2--fixer is-hidden" id="js-placesDropdown">
			                </ul>
			                <div class="searchbar__spinner" id="js-searchbar-spinner">
			                    <div class="spinner">
			                      <div class="bounce1"></div>
			                      <div class="bounce2"></div>
			                      <div class="bounce3"></div>
			                    </div>                </div>
			            </div>

			        </div>
			        <div class="searchbar__fieldwrap searchbar__fieldwrap--half">
			            <i class="icon-calendar searchbar__icon"></i>
			                <input class="searchbar__input datepicker hasDatepicker" id="js-checkin" type="text" placeholder="Check-in date" autocomplete="off" value="Fri, 06 Nov 2015" readonly="">
			        </div>

			        <div class="searchbar__fieldwrap searchbar__fieldwrap--half searchbar__fieldwrap--half-fix">
			            <i class="icon-calendar searchbar__icon"></i>
			                <input class="searchbar__input hasDatepicker" id="js-checkout" type="text" placeholder="Check-out date" autocomplete="off" value="Sat, 07 Nov 2015" readonly="">
			        </div>
			        <div class="searchbar__hidden">
			            <div class="searchbar__fieldwrap searchbar__fieldwrap--half noPadding">
			                <div class="guestselect__dropdown__border">
			                    <i class="icon-guest guestselect__icon"></i>
			                    <div id="js-guestselect__input--guests" class="guestselect__box js-guestselect__input--guests">1</div>
			                    <span id="js-guest-text" class="js-guest-text">Guest</span>
			                    <button type="button" class="icon-plus guestselect__button js-plus js-guestbutton"></button>
			                    <button type="button" class="icon-minus guestselect__button js-minus js-guestbutton"></button>
			                </div>
			            </div>
			            <div class="searchbar__fieldwrap searchbar__fieldwrap--half searchbar__fieldwrap--half-fix noPadding">
			                <div class="guestselect__dropdown__border">
			                    <i class="icon-room guestselect__icon"></i>

			                    <div id="js-guestselect__input--rooms" class="guestselect__box js-guestselect__input--rooms">1</div>
			                    <span id="js-room-text" class="js-room-text">Room</span>
			                    <button type="button" class="icon-plus guestselect__button js-plus guestselect__inactive	 js-roombutton"></button>
			                    <button type="button" class="icon-minus guestselect__button  guestselect__inactive js-minus js-roombutton"></button>
			                </div>
			            </div>
			            <p id="js-bulkbookingMsg" class="guestselect__bulkbookingMsg is-hidden"></p>
			        </div>


			        <div class="searchbar__fieldwrap searchbar__fieldwrap--guestsBox" tabindex="0" id="js-guestselect-wrapper">
			            <i class="icon-booking-details searchbar__icon"></i>
			            <div id="searchbar__guestselect-js" class="searchbar__guestbox">
			                <span class="js-inflection js-guest-text" id="js-total-guest">1  </span> &amp; <span class="js-inflection js-room-text" id="js-total-room">1  </span></div>
			            <div id="guestselect-js" class="guestselect">
			                <div class="guestselect__dropdown">
			                    <ul class="guestselect__dropdown-menu is-hidden" id="js-guestselect-dd-menu">
			                        <li>
			                            <div class="guestselect__dropdown__border">
			                                <i class="icon-guest guestselect__icon"></i>
			                                <div id="js-guestselect__input--guests" class="guestselect__box js-guestselect__input--guests">1</div>
						  						<span id="js-guest-text" class="js-guest-text">
						  						</span>
			                                <button type="button" class="icon-plus guestselect__button js-plus js-guestbutton"></button>
			                                <button type="button" class="icon-minus guestselect__button js-minus js-guestbutton"></button>
			                            </div>
			                        </li>
			                        <li>
			                            <div class="guestselect__dropdown__border">
			                                <i class="icon-room guestselect__icon"></i>

			                                <div id="js-guestselect__input--rooms" class="guestselect__box js-guestselect__input--rooms">1</div>
						  						<span id="js-room-text" class="js-room-text">
						  						</span>
			                                <button type="button" class="icon-plus guestselect__button js-plus js-roombutton"></button>
			                                <button type="button" class="icon-minus guestselect__button  guestselect__inactive js-minus js-roombutton"></button>
			                            </div>
			                            <p id="js-bulkbookingMsg" class="guestselect__bulkbookingMsg is-hidden"></p>
			                        </li>
			                    </ul>
			                </div>
			            </div>
			        </div>

			        <div class="searchbar__fieldwrap searchbar__fieldwrap--search">
			            <input class="primaryBtn searchbar__button" type="button" value="Search" id="js-submit">

			            <div id="js-searchbar-spinner">
			                <div class="spinner">
			                  <div class="bounce1"></div>
			                  <div class="bounce2"></div>
			                  <div class="bounce3"></div>
			                </div>            </div>
			        </div>
			        <p class="searchbar__tagline">Book now. Pay later at hotel.</p>
			    </fieldset>
			</form>
		</div>
		</div>
	</div>

</div>

<?php $amenities ="assets/img/amenities.png"; ?>
<section class="amenities__section">
	<div class="amenities__wrap">
			<div class="amenities__imagescontainer">
			<p>AC Rooms</p>
			<div class="amenities__icon-ac lazy" data-original="<?php echo $amenities; ?>" style="display: block; background-image: url(<?php echo $amenities; ?>);"></div>
			</div>
			<div class="amenities__imagescontainer">
			<p>Cable TV</p>
			<div class="amenities__icon-tv lazy" data-original="<?php echo $amenities; ?>" style="display: block; background-image: url(<?php echo $amenities; ?>);"></div>
			</div>
			<div class="amenities__imagescontainer">
			<p>Spotless Linen</p>
			<div class="amenities__icon-linen lazy" data-original="<?php echo $amenities; ?>" style="display: block; background-image: url(<?php echo $amenities; ?>);"></div>
			</div>
			<div class="amenities__imagescontainer">
			<p>Complimentary Breakfast</p>
			<div class="amenities__icon-breakfast lazy" data-original="<?php echo $amenities; ?>" style="display: block; background-image: url(<?php echo $amenities; ?>);"></div>
			</div>
			<div class="amenities__imagescontainer">
			<p>Free Wi-Fi</p>
			<div class="amenities__icon-free-wifi lazy" data-original="<?php echo $amenities; ?>" style="display: block; background-image: url(<?php echo $amenities; ?>);"></div>
			</div>
			<div class="amenities__imagescontainer">
			<p>Hygienic Washrooms</p>
			<div class="amenities__icon-washroom lazy" data-original="<?php echo $amenities; ?>" style="display: block; background-image: url(<?php echo $amenities; ?>);"></div>
			</div>
	</div>
</section>
















