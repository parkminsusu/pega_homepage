<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>명지대학교 페가수스 홈페이지 입니다</title>
</head>
<body>

	


	<!-- MAIN WRAPPER -->
	<div class="body-wrap">
		<!-- This section is only for demonstration purpose only. Check out the docs for more informations" -->
		<div id="divStyleSwitcher" class="style-switcher-slidebar">
			<a href="#" id="cmdShowStyleSwitcher" class="open-panel hidden-xs"><i
				class="fa fa-cog"></i></a>
			<div class="switch-panel">
				<h3>Boomerang - Style Builder</h3>
				<div class="panel-section">
					<h4 class="title text-uppercase font-normal">Layout options</h4>

					<div class="row">
						<div class="col-xs-6">
							<div class="form-group">
								<label>I prefer it:</label> <select id="cmbLayoutStyle"
									class="form-control">
									<option value="1">Fluid</option>
									<option value="2">Boxed</option>
								</select>
							</div>
						</div>
						<div class="col-xs-6">
							<div class="form-group">
								<label></label> <select id="cmbLayoutColor" class="form-control">
									<option value="1">Light</option>
									<option value="2">Dark</option>
								</select>
							</div>
						</div>
					</div>

					<label class="mt-10">Predefined body backgrounds</label> <span
						class="clearfix"></span> <span id="cmbBodyBg" class="color-switch">
						<a href="#" id="cmdBodyBg1" class="body-bg-1 ttip"
						data-toggle="bottom" title="Solid color"></a> <a href="#"
						id="cmdBodyBg2" class="body-bg-2 ttip" data-toggle="bottom"
						title="Black Lozenge"></a> <a href="#" id="cmdBodyBg3"
						class="body-bg-3 ttip" data-toggle="bottom" title="Squairy Light"></a>
						<a href="#" id="cmdBodyBg4" class="body-bg-4 ttip"
						data-toggle="bottom" title="Dark Dotted"></a> <a href="#"
						id="cmdBodyBg5" class="body-bg-5 ttip" data-toggle="bottom"
						title="Skulls"></a> <a href="#" id="cmdBodyBg6"
						class="body-bg-6 ttip" data-toggle="bottom"
						title="Image Background - 1"></a> <a href="#" id="cmdBodyBg7"
						class="body-bg-7 ttip" data-toggle="bottom"
						title="Image Background - 2"></a> <span class="clearfix"></span>
					</span>

					<div class="row">
						<div class="col-xs-6">
							<div class="form-group">
								<label>Section title:</label> <select id="cmbSectionTitleStyle"
									class="form-control">
									<option value="1">Style 1</option>
									<option value="2">Style 2</option>
									<option value="3">Style 3</option>
								</select>
							</div>
						</div>
						<div class="col-xs-6">
							<div class="form-group">
								<label>Color:</label> <select id="cmbSectionTitleColor"
									class="form-control" disabled="disabled">
									<option value="1">Base</option>
									<option value="2">Alt Base</option>
									<option value="3">Light</option>
									<option value="4">Dark</option>
								</select>
							</div>
						</div>
					</div>
				</div>

				<hr>

				<div class="panel-section">
					<h4 class="title text-uppercase font-normal">Header options</h4>

					<div class="row">
						<div class="col-xs-6">
							<div class="form-group">
								<label>Header:</label> <select id="cmbHeaderStyle"
									class="form-control">
									<option value="2">Header 1: Default navbar</option>
									<option value="3">Header 2: Default navbar + Top
										header</option>
									<option value="1">Header 3: Header + Navbar</option>
									<option value="4">Header 4: Cover</option>
									<!-- 
                            <option value="5">Header 1: Default + Mobile nav 2</option>
                            <option value="6">Header 2: Default + Top header + Mobile nav 2</option>
                            <option value="7">Header 3: Header + Navbar + Mobile nav 2</option>
                            <option value="8">Header 4: Cover</option> -->
								</select>
							</div>
						</div>
						<div class="col-xs-6">
							<div class="form-group">
								<label>Top header color:</label> <select id="cmbTopHeaderColor"
									class="form-control" disabled="disabled">
									<option value="1">Light</option>
									<option value="2">Dark</option>
								</select>
							</div>
						</div>
					</div>
				</div>

				<div class="panel-section">
					<div class="row">
						<div class="col-xs-6">
							<div class="form-group">
								<label>Nav shadow</label> <select id="cmbNavShadow"
									class="form-control">
									<option value="1">No</option>
									<option value="2">Yes</option>
								</select>
							</div>
						</div>
						<div class="col-xs-6">
							<div class="form-group">
								<label>Dropdown arrow:</label> <select id="cmbNavDropdownArrow"
									class="form-control">
									<option value="2">Yes</option>
									<option value="1">No</option>
								</select>
							</div>
						</div>
					</div>
				</div>

				<hr>

				<div class="panel-section">
					<h4 class="title text-uppercase font-normal">Color options</h4>

					<label>Predefined colors</label> <span class="clearfix"></span> <span
						class="color-switch"> <a href="#" id="cmdSchemeRed"
						class="color-red" title="Red">Red</a> <a href="#"
						id="cmdSchemeViolet" class="color-violet" title="Violet">Violet</a>
						<a href="#" id="cmdSchemeBlue" class="color-blue" title="Blue">Blue</a>
						<a href="#" id="cmdSchemeGreen" class="color-green" title="Green">Green</a>
						<a href="#" id="cmdSchemeYellow" class="color-yellow"
						title="Yellow">Yellow</a> <a href="#" id="cmdSchemeOrange"
						class="color-orange" title="Orange">Orange</a>
					</span>
				</div>

				<hr>

				<div class="panel-section">
					<h4 class="title">
						<span class="text-uppercase font-normal">Special</span> <a
							href="#" class="pop" title="About customization"
							data-content="We created some examples that show you the multitude of options you have so you make this template as you wish. <br><br>Customization is very easy and it is made in only one file.">
							<i class="fa fa-question-circle"></i>
						</a> <label class="badge base pull-right">New</label>
					</h4>

					<label>Predefined schemes</label> <span class="clearfix"></span> <span
						class="color-switch"> <a href="#" id="cmdSchemeBW"
						class="color-bw ttip" data-toggle="top" title="Black & White">Black
							and white</a> <a href="#" id="cmdSchemeDark" class="color-dark ttip"
						data-toggle="top" title="Dark">Dark</a> <a href="#"
						id="cmdSchemeFlat" class="color-flat ttip" data-toggle="top"
						title="Flat">Flat</a>
					</span>

				</div>

				<div class="panel-section mt-15 hide">
					<a href="#"><span>Reset all applied styles</span></a> <br>
					<br>
				</div>

			</div>
		</div>

		<!-- Optional header components (ex: slider) -->
		<!-- Importing slider content -->
		<section id="slider-wrapper"
			class="layer-slider-wrapper layer-slider-dynamic">
		<div id="layerslider" style="width: 100%; height: 520px;">
			<!-- Slide 1 -->
			<div class="ls-slide" data-ls="transition2d:1;timeshift:-1000;">
				<!-- slide background -->
				<img src="resources/images/backgrounds/full-bg-7.jpg" class="ls-bg"
					alt="Slide background" />

				<!-- Left Text -->
				<h3
					class="ls-l title-lg c-white text-shadow text-uppercase text-center strong"
					style="width: 100%; top: 25%; left: 50%;"
					data-ls="offsetxin:0;offsetyin:250;durationin:1000;delayin:500;offsetxout:0;offsetyout:-8;easingout:easeInOutQuart;scalexout:1.2;scaleyout:1.2;">
					Welcome to Pegasus</h3>
				<h3
					class="ls-l title c-white text-wrapped black text-uppercase text-center strong"
					style="top: 50%; left: 50%;"
					data-ls="offsetxin:0;offsetyin:250;durationin:1000;delayin:1000;offsetxout:0;offsetyout:-8;easingout:easeInOutQuart;scalexout:1.2;scaleyout:1.2;">
					Vision.Believe.Success</h3>

				<h3
					class="ls-l title-xs c-white text-shadow text-uppercase text-center strong"
					style="width: 100%; top: 72%; left: 50%;"
					data-ls="offsetxin:0;offsetyin:250;durationin:1000;delayin:1500;offsetxout:0;offsetyout:-8;easingout:easeInOutQuart;scalexout:1.2;scaleyout:1.2;">
					Start the tour</h3>
			</div>

			<!-- Slide 2 -->
			<div class="ls-slide" data-ls="transition2d:1;timeshift:-1000;">
				<!-- slide background -->
				<img src="resources/images/backgrounds/full-bg-9.jpg" class="ls-bg"
					style="width: 100%;" alt="Slide background" />

				<!-- Left Text -->
				<h3 class="ls-l title text-normal"
					style="width: 600px; top: 35%; left: 80px;"
					data-ls="offsetxin:0;offsetyin:250;durationin:1000;delayin:500;offsetxout:0;offsetyout:-8;easingout:easeInOutQuart;scalexout:1.2;scaleyout:1.2;">
					The secret of getting ahead is <span class="strong-600">getting</span>
					<span class="strong-600 c-base">started</span></strong>
				</h3>

				<p class="ls-l text-standard"
					style="width: 500px; top: 50%; left: 80px;"
					data-ls="offsetxin:0;offsetyin:250;durationin:1000;delayin:1000;offsetxout:0;offsetyout:-8;easingout:easeInOutQuart;scalexout:1.2;scaleyout:1.2;">
					Boomerang is ready to be part of your project. Let's get started</p>

				<a href="" class="btn btn-base btn-lg ls-l"
					style="top: 60%; left: 80px;"
					data-ls="offsetxin:0;offsetyin:250;durationin:1500;delayin:1500;offsetxout:0;offsetyout:-8;easingout:easeInOutQuart;scalexout:1.2;scaleyout:1.2;"
					target="_blank"> Learn more </a>
			</div>

		</div>
		</section>


		<!-- MAIN CONTENT -->
		<!-- 
        <section class="slice base">
        <div class="wp-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-6 ">
                        <div class="icon-block icon-block-1">
                            <div class="icon-block-item">
                                <i class="fa fa-list-alt"></i>
                            </div>
                            <div class="icon-block-body">
                                <h4 class="c-white">Endless possibilities</h4>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 ">
                        <div class="icon-block icon-block-1">
                            <div class="icon-block-item">
                                <i class="fa fa-file"></i>
                            </div>
                            <div class="icon-block-body">
                                <h4 class="c-white">Over 60 page layouts</h4>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 ">
                        <div class="icon-block icon-block-1">
                            <div class="icon-block-item">
                                <i class="fa fa-coffee"></i>
                            </div>
                            <div class="icon-block-body">
                                <h4 class="c-white">Great design. flexible code</h4>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes.</p>
                            </div>
                        </div>
                    </div>                    
                </div>
            </div>  
        </div>
    </section>
 
    <section class="slice white inset-shadow-1 bb">
        <div class="wp-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-5">
                        <div class="section-title-wr">
                            <h3 class="section-title left"><span>Our company</span></h3>
                        </div>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque neque eget diam posuere porta. 
                            Quisque ut nulla at nunc vehicula lacinia. Proin adipiscing porta tellus, ut feugiat nibh adipiscing sit amet. 
                            In eu justo a felis faucibus ornare vel id metus. 
                            <br><br>
                            Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In eu libero ligula.
                            Quisque ut nulla at nunc vehicula lacinia metus.
                        </p>
                    </div>
                    <div class="col-md-7">
                        <div class="section-title-wr">
                            <h3 class="section-title left"><span>Our expertise</span></h3>
                        </div>
                        <div class="progress progress-lg">
                            <div class="progress-bar progress-bar-base" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
                            <span class="sr-only">Web Design</span>
                            </div>
                        </div>
                        <div class="progress progress-lg">
                            <div class="progress-bar progress-bar-base" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
                            <span class="sr-only">PHP Development</span>
                            </div>
                        </div>
                        <div class="progress progress-lg">
                            <div class="progress-bar progress-bar-base" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                            <span class="sr-only">jQuery</span>
                            </div>
                        </div>
                        <div class="progress progress-lg">
                            <div class="progress-bar progress-bar-base" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
                            <span class="sr-only">PHP Development</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="slice light-gray bb">
        <div class="wp-section">
            <div class="container">
                <div class="section-title-wr">
                    <h3 class="section-title left"><span>Our services</span></h3>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="wp-block hero white no-margin">
                            <div class="thmb-img">
                                <i class="fa fa-lightbulb-o"></i>
                            </div>
                            
                            <h2>Generating ideas</h2>
                            <p class="text-center">Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum. </p>
                        </div>
                    </div>
                    
                    <div class="col-lg-3 col-md-6">
                        <div class="wp-block hero white no-margin">
                            <div class="thmb-img">
                                <i class="fa fa-keyboard-o"></i>
                            </div>
                            
                            <h2>Prototype model</h2>
                            <p class="text-center">Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum. </p>
                        </div>
                    </div>
                    
                    <div class="col-lg-3 col-md-6">
                        <div class="wp-block hero white no-margin">
                            <div class="thmb-img">
                                <i class="fa fa-code"></i>
                            </div>
                            
                            <h2>Design and Code</h2>
                            <p class="text-center">Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum. </p>
                        </div>
                    </div>
                    
                    <div class="col-lg-3 col-md-6">
                        <div class="wp-block hero white no-margin">
                            <div class="thmb-img">
                                <i class="fa fa-rocket"></i>
                            </div>
                            
                            <h2>Launching and Monitoring</h2>
                            <p class="text-center">Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum. </p>
                        </div>
                    </div>
                        
                </div>
            </div>
        </div>
    </section>
    -->
		<section id="companyCarousel"
			class="carousel carousel-2 slide bg-white bb" data-ride="carousel">
		<div class="container relative">
			<!-- Indicators -->

			<div class="carousel-inner">
				<div class="owl-carousel owl-carousel-single no-padding">
					<div class="item active">
						<div class="row">
							<div class="col-md-6">
								<h2 class="title">페가수스 동아리</h2>
								<p>페가수스 동아리에 대한 설명</p>
							</div>
							<div class="col-md-6">
								<img src="resources/images/prv/device-3.png"
									class="img-responsive" alt="">
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		</section>

		<section class="slice p-15 base">
		<div class="cta-wr">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<h1 class="text-normal">
							<strong>34th Inroduce</strong>
						</h1>
					</div>
				</div>
			</div>
		</div>
		</section>

		<section class="slice bg-white bb animate-hover-slide-3">
		<div class="wp-section">
			<div class="container">
				<div class="section-title-wr">
					<h3 class="section-title left">
						<span>Our team</span>
					</h3>
				</div>
				<div class="row">
					<div class="col-md-3">
						<div class="wp-block inverse">
							<div class="figure">
								<img alt="" src="resources/images/prv/team/team-corporate-5.jpg"
									class="img-responsive">
								<div class="figcaption">
									<ul class="social-icons text-right">
										<li class="text pull-left">More on:</li>
										<li class="facebook"><a href="#"><i
												class="fa fa-facebook"></i></a></li>
										<li class="twitter"><a href="#"><i
												class="fa fa-twitter"></i></a></li>
										<li class="linkedin"><a href="#"><i
												class="fa fa-linkedin"></i></a></li>
									</ul>
								</div>
							</div>
							<h2>
								김경환<small>Vocal</small>
							</h2>
							<p>소게글</p>
						</div>
					</div>

					<div class="col-md-3">
						<div class="wp-block inverse">
							<div class="figure">
								<img alt="" src="resources/images/prv/team/team-corporate-3.jpg"
									class="img-responsive">
								<div class="figcaption">
									<ul class="social-icons text-right">
										<li class="text pull-left">More on:</li>
										<li class="facebook"><a href="#"><i
												class="fa fa-facebook"></i></a></li>
										<li class="twitter"><a href="#"><i
												class="fa fa-twitter"></i></a></li>
										<li class="linkedin"><a href="#"><i
												class="fa fa-linkedin"></i></a></li>
									</ul>
								</div>
							</div>
							<h2>
								류창희<small>Guitar1</small>
							</h2>
							<p>소개글</p>
						</div>
					</div>



					<div class="col-md-3">
						<div class="wp-block inverse">
							<div class="figure">
								<img alt="" src="resources/images/prv/team/team-corporate-1.jpg"
									class="img-responsive">
								<div class="figcaption">
									<ul class="social-icons text-right">
										<li class="text pull-left">More on:</li>
										<li class="facebook"><a href="#"><i
												class="fa fa-facebook"></i></a></li>
										<li class="twitter"><a href="#"><i
												class="fa fa-twitter"></i></a></li>
										<li class="linkedin"><a href="#"><i
												class="fa fa-linkedin"></i></a></li>
									</ul>
								</div>
							</div>
							<h2>
								한시형<small>Drum</small>
							</h2>
							<p>소개글</p>
						</div>
					</div>

					<div class="col-md-3">
						<div class="wp-block inverse">
							<div class="figure">
								<img alt="" src="resources/images/prv/team/team-corporate-2.jpg"
									class="img-responsive">
								<div class="figcaption">
									<ul class="social-icons text-right">
										<li class="text pull-left">More on:</li>
										<li class="facebook"><a href="#"><i
												class="fa fa-facebook"></i></a></li>
										<li class="twitter"><a href="#"><i
												class="fa fa-twitter"></i></a></li>
										<li class="linkedin"><a href="#"><i
												class="fa fa-linkedin"></i></a></li>
									</ul>
								</div>
							</div>
							<h2>
								김승현<small>Bass</small>
							</h2>
							<p>소개글</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section>
		<!-- 
    <section class="slice bg-white bb">
        <div class="wp-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <div class="section-title-wr">
                            <h3 class="section-title left"><span>Our features</span></h3>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="short-feature">
                                    <div class="feature-icon">
                                        <i class="fa fa-cube"></i>
                                    </div>
                                    <div class="feature-txt">
                                        <h3>One template for any idea</h3>
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit lorem ipsum dolor sit amet consectetuer.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="short-feature">
                                    <div class="feature-icon">
                                        <i class="fa fa-graduation-cap"></i>
                                    </div>
                                    <div class="feature-txt">
                                        <h3>Prepared for the next level</h3>
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit lorem ipsum dolor sit amet consectetuer.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="short-feature">
                                    <div class="feature-icon">
                                        <i class="fa fa-paper-plane"></i>
                                    </div>
                                    <div class="feature-txt">
                                        <h3>Ready to take off</h3>
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit lorem ipsum dolor sit amet consectetuer.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="short-feature">
                                    <div class="feature-icon">
                                        <i class="fa fa-life-saver"></i>
                                    </div>
                                    <div class="feature-txt">
                                        <h3>Save time and money. Focus on results</h3>
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit lorem ipsum dolor sit amet consectetuer.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="short-feature">
                                    <div class="feature-icon">
                                        <i class="fa fa-cogs"></i>
                                    </div>
                                    <div class="feature-txt">
                                        <h3>Engineered for maximum results</h3>
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit lorem ipsum dolor sit amet consectetuer.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="short-feature">
                                    <div class="feature-icon">
                                        <i class="fa fa-coffee"></i>
                                    </div>
                                    <div class="feature-txt">
                                        <h3>Easy and fun to customize Boomerang</h3>
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit lorem ipsum dolor sit amet consectetuer.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="short-feature">
                                    <div class="feature-icon">
                                        <i class="fa fa-desktop"></i>
                                    </div>
                                    <div class="feature-txt">
                                        <h3>Ready to work on any device</h3>
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit lorem ipsum dolor sit amet consectetuer.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="short-feature">
                                    <div class="feature-icon">
                                        <i class="fa fa-heart"></i>
                                    </div>
                                    <div class="feature-txt">
                                        <h3>Recreated for you</h3>
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit lorem ipsum dolor sit amet consectetuer.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="section-title-wr">
                            <h3 class="section-title left"><span>Why choose us</span></h3>
                        </div>
                        <div class="widget">
                            <div class="panel-group" id="accordion">
                                <div class="panel panel-default">
                                  <div class="panel-heading">
                                    <h4 class="panel-title">
                                      <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="collapsed">
                                        Web design
                                      </a>
                                    </h4>
                                  </div>
                                  <div id="collapseOne" class="panel-collapse collapse" style="height: 0px;">
                                    <div class="panel-body">
                                    <p>
                                      Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo.
                                    </p>
                                    </div>
                                  </div>
                                </div>
                                <div class="panel panel-default">
                                  <div class="panel-heading">
                                    <h4 class="panel-title">
                                      <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="collapsed">
                                        Software development
                                      </a>
                                    </h4>
                                  </div>
                                  <div id="collapseTwo" class="panel-collapse collapse" style="height: 0px;">
                                    <div class="panel-body">
                                      <p>
                                      Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo.
                                    </p>
                                    </div>
                                  </div>
                                </div>
                                <div class="panel panel-default">
                                  <div class="panel-heading">
                                    <h4 class="panel-title">
                                      <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="">
                                        Search engine optimization
                                      </a>
                                    </h4>
                                  </div>
                                  <div id="collapseThree" class="panel-collapse in" style="height: auto;">
                                    <div class="panel-body">
                                      <p>
                                      Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch.
                                    </p>
                                    </div>
                                  </div>
                                </div>
                              </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
 -->
		<section class="slice relative bg-white bb animate-hover-slide">
		<div class="wp-section">
			<div class="container">
				<div class="section-title-wr">
					<h3 class="section-title left">
						<span>Our portfolio</span>
					</h3>
				</div>

				<div id="carouselWork"
					class="carousel carousel-3 slide animate-hover-slide">
					<div class="carousel-nav">
						<a data-slide="prev" class="left" href="#carouselWork"><i
							class="fa fa-angle-left"></i></a> <a data-slide="next" class="right"
							href="#carouselWork"><i class="fa fa-angle-right"></i></a>
					</div>

					<!-- Wrapper for slides -->
					<div class="carousel-inner">
						<div class="item active">
							<div class="row">
								<div class="col-md-3">
									<div class="wp-block inverse">
										<div class="figure">
											<img alt="" src="resources/images/prv/wk-img-1.jpg"
												class="img-responsive">
											<div class="figcaption bg-base"></div>
											<div class="figcaption-btn">
												<a href="resources/images/prv/wk-img-1.jpg"
													class="btn btn-xs btn-b-white theater"><i
													class="fa fa-plus-circle"></i> Zoom</a> <a href="#"
													class="btn btn-xs btn-b-white"><i class="fa fa-link"></i>
													View</a>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-9">
												<h2 class="text-left">Bootstrap template</h2>
												<small>Brand creation</small>
											</div>
											<div class="col-xs-3">
												<div class="like-button">
													<span class="button liked"> <i class="fa fa-heart"></i>
													</span> <span class="count"><small>123</small></span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-3">
									<div class="wp-block inverse">
										<div class="figure">
											<img alt="" src="resources/images/prv/wk-img-2.jpg"
												class="img-responsive">
											<div class="figcaption bg-base"></div>
											<div class="figcaption-btn">
												<a href="resources/images/prv/wk-img-2.jpg"
													class="btn btn-xs btn-b-white theater"><i
													class="fa fa-plus-circle"></i> Zoom</a> <a href="#"
													class="btn btn-xs btn-b-white"><i class="fa fa-link"></i>
													View</a>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-9">
												<h2>Bootstrap template</h2>
												<small>Brand creation</small>
											</div>
											<div class="col-xs-3">
												<div class="like-button">
													<span class="button"> <i class="fa fa-heart"></i>
													</span> <span class="count"><small>123</small></span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-3">
									<div class="wp-block inverse">
										<div class="figure">
											<img alt="" src="resources/images/prv/wk-img-3.jpg"
												class="img-responsive">
											<div class="figcaption bg-base"></div>
											<div class="figcaption-btn">
												<a href="resources/images/prv/wk-img-3.jpg"
													class="btn btn-xs btn-b-white theater"><i
													class="fa fa-plus-circle"></i> Zoom</a> <a href="#"
													class="btn btn-xs btn-b-white"><i class="fa fa-link"></i>
													View</a>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-9">
												<h2>Bootstrap template</h2>
												<small>Brand creation</small>
											</div>
											<div class="col-xs-3">
												<div class="like-button">
													<span class="button liked"> <i class="fa fa-heart"></i>
													</span> <span class="count"><small>123</small></span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-3">
									<div class="wp-block inverse">
										<div class="figure">
											<img alt="" src="resources/images/prv/wk-img-4.jpg"
												class="img-responsive">
											<div class="figcaption bg-base"></div>
											<div class="figcaption-btn">
												<a href="resources/images/prv/wk-img-4.jpg"
													class="btn btn-xs btn-b-white theater"><i
													class="fa fa-plus-circle"></i> Zoom</a> <a href="#"
													class="btn btn-xs btn-b-white"><i class="fa fa-link"></i>
													View</a>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-9">
												<h2>Bootstrap template</h2>
												<small>Brand creation</small>
											</div>
											<div class="col-xs-3">
												<div class="like-button">
													<span class="button"> <i class="fa fa-heart"></i>
													</span> <span class="count"><small>123</small></span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="row">
								<div class="col-md-3">
									<div class="wp-block inverse">
										<div class="figure">
											<img alt="" src="resources/images/prv/wk-img-5.jpg"
												class="img-responsive">
											<div class="figcaption bg-base"></div>
											<div class="figcaption-btn">
												<a href="resources/images/prv/wk-img-5.jpg"
													class="btn btn-xs btn-b-white theater"><i
													class="fa fa-plus-circle"></i> Zoom</a> <a href="#"
													class="btn btn-xs btn-b-white"><i class="fa fa-link"></i>
													View</a>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-9">
												<h2>Bootstrap template</h2>
												<small>Brand creation</small>
											</div>
											<div class="col-xs-3">
												<div class="like-button">
													<span class="button"> <i class="fa fa-heart"></i>
													</span> <span class="count"><small>123</small></span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-3">
									<div class="wp-block inverse">
										<div class="figure">
											<img alt="" src="resources/images/prv/wk-img-6.jpg"
												class="img-responsive">
											<div class="figcaption bg-base"></div>
											<div class="figcaption-btn">
												<a href="resources/images/prv/wk-img-6.jpg"
													class="btn btn-xs btn-b-white theater"><i
													class="fa fa-plus-circle"></i> Zoom</a> <a href="#"
													class="btn btn-xs btn-b-white"><i class="fa fa-link"></i>
													View</a>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-9">
												<h2>Bootstrap template</h2>
												<small>Brand creation</small>
											</div>
											<div class="col-xs-3">
												<div class="like-button">
													<span class="button"> <i class="fa fa-heart"></i>
													</span> <span class="count"><small>123</small></span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-3">
									<div class="wp-block inverse">
										<div class="figure">
											<img alt="" src="resources/images/prv/wk-img-7.jpg"
												class="img-responsive">
											<div class="figcaption bg-base"></div>
											<div class="figcaption-btn">
												<a href="resources/images/prv/wk-img-7.jpg"
													class="btn btn-xs btn-b-white theater"><i
													class="fa fa-plus-circle"></i> Zoom</a> <a href="#"
													class="btn btn-xs btn-b-white"><i class="fa fa-link"></i>
													View</a>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-9">
												<h2>Bootstrap template</h2>
												<small>Brand creation</small>
											</div>
											<div class="col-xs-3">
												<div class="like-button">
													<span class="button"> <i class="fa fa-heart"></i>
													</span> <span class="count"><small>123</small></span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-3">
									<div class="wp-block inverse">
										<div class="figure">
											<img alt="" src="resources/images/prv/wk-img-8.jpg"
												class="img-responsive">
											<div class="figcaption bg-base"></div>
											<div class="figcaption-btn">
												<a href="resources/images/prv/wk-img-8.jpg"
													class="btn btn-xs btn-b-white theater"><i
													class="fa fa-plus-circle"></i> Zoom</a> <a href="#"
													class="btn btn-xs btn-b-white"><i class="fa fa-link"></i>
													View</a>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-9">
												<h2>Bootstrap template</h2>
												<small>Brand creation</small>
											</div>
											<div class="col-xs-3">
												<div class="like-button">
													<span class="button"> <i class="fa fa-heart"></i>
													</span> <span class="count"><small>123</small></span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section>
		<!--  
    <section class="slice base bb">
        <div class="wp-section">
            <div class="container">
                <div class="section-title-wr">
                    <h3 class="section-title center">
                        <span class="c-white">What do we offer</span>
                        <small class="c-white">Lorem ipsum dolor sit amet</small>
                    </h3>
                </div>
                <div class="row">
                    <div class="col-md-6 col-sm-6">
                        <div class="icon-block icon-block-1">
                            <div class="icon-block-item">
                                <i class="fa fa-list-alt"></i>
                            </div>
                            <div class="icon-block-body">
                                <h4 class="">Endless possibilities</h4>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes.</p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-6 col-sm-6 ">
                        <div class="icon-block icon-block-1">
                            <div class="icon-block-item">
                                <i class="fa fa-desktop"></i>
                            </div>
                            <div class="icon-block-body">
                                <h4 class="">Over 60 page layouts</h4>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 col-sm-6">
                        <div class="icon-block icon-block-1">
                            <div class="icon-block-item">
                                <i class="fa fa-camera-retro"></i>
                            </div>
                            <div class="icon-block-body">
                                <h4 class="">Great design. Flexible code</h4>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes.</p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-6 col-sm-6 ">
                        <div class="icon-block icon-block-1">
                            <div class="icon-block-item">
                                <i class="fa fa-coffee"></i>
                            </div>
                            <div class="icon-block-body">
                                <h4 class="">Super friendly customer support</h4>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
  
    <section class="slice white">
        <div class="wp-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="milestone-counter">
                            <div class="milestone-count c-gray" data-from="0" data-to="11100" data-speed="3000" data-refresh-interval="100"></div>
                            <h4 class="milestone-info c-gray">Customers</h4>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="milestone-counter">
                            <div class="milestone-count c-gray" data-from="0" data-to="154" data-speed="5000" data-refresh-interval="50"></div>
                            <h4 class="milestone-info c-gray">Finalized projects</h4>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="milestone-counter">
                            <div class="milestone-count c-gray" data-from="0" data-to="430" data-speed="5000" data-refresh-interval="80"></div>
                            <h4 class="milestone-info c-gray">Rewards</h4>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="milestone-counter">
                            <div class="milestone-count c-gray" data-from="0" data-to="1230" data-speed="5000" data-refresh-interval="80"></div>
                            <h4 class="milestone-info c-gray">New ideas</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
 -->
		<section class="slice base">
		<div class="wp-section">
			<div class="container">
				<div class="row">
					<div class="col-md-12">

						<div id="carouselTestimonial"
							class="carousel carousel-testimonials slide" data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#carouselTestimonial" data-slide-to="0"
									class="active"></li>
								<li data-target="#carouselTestimonial" data-slide-to="1"
									class=""></li>
								<li data-target="#carouselTestimonial" data-slide-to="2"
									class=""></li>
							</ol>

							<!-- Wrapper for slides -->
							<div class="carousel-inner">
								<div class="item active">
									<div class="text-center">
										<h4>
											<i class="fa fa-quote-left fa-3x"></i>
										</h4>
										<p class="testimonial-text">Lorem ipsum dolor sit amet,
											consectetur adipisg elitm Ut tincidunt purus iaculis ipsum
											dctum non dtum quam consectetur adipisg elitm Ut tincidunt,
											Ut tincidunt purus iaculis ipsum dctum non dtum quam
											consectetur adipisg elitm Ut tincidunt. Lorem ipsum dolor sit
											amet, consectetur adipisg elitm Ut tincidunt purus iaculis
											ipsum dctum non dtum quam consectetur adipisg elitm Ut
											tincidunt.</p>
										<p>John Doe – Company Inc</p>
										<span class="clearfix"></span>
									</div>
								</div>
								<div class="item">
									<div class="text-center">
										<h4>
											<i class="fa fa-quote-left fa-3x"></i>
										</h4>
										<p class="testimonial-text">Lorem ipsum dolor sit amet,
											consectetur adipisg elitm Ut tincidunt purus iaculis ipsum
											dctum non dtum quam consectetur adipisg elitm Ut tincidunt,
											Ut tincidunt purus iaculis ipsum dctum non dtum quam
											consectetur adipisg elitm Ut tincidunt. Lorem ipsum dolor sit
											amet, consectetur adipisg elitm Ut tincidunt purus iaculis
											ipsum dctum non dtum quam consectetur adipisg elitm Ut
											tincidunt.</p>
										<p>John Doe – Company Inc</p>
										<span class="clearfix"></span>
									</div>
								</div>
								<div class="item ">
									<div class="text-center">
										<h4>
											<i class="fa fa-quote-left fa-3x"></i>
										</h4>
										<p class="testimonial-text">Lorem ipsum dolor sit amet,
											consectetur adipisg elitm Ut tincidunt purus iaculis ipsum
											dctum non dtum quam consectetur adipisg elitm Ut tincidunt,
											Ut tincidunt purus iaculis ipsum dctum non dtum quam
											consectetur adipisg elitm Ut tincidunt. Lorem ipsum dolor sit
											amet, consectetur adipisg elitm Ut tincidunt purus iaculis
											ipsum dctum non dtum quam consectetur adipisg elitm Ut
											tincidunt.</p>
										<p>John Doe – Company Inc</p>
										<span class="clearfix"></span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section>

		<section class="slice animate-hover-slide bg-white">
		<div class="wp-section">
			<div class="container">
				<div class="section-title-wr">
					<h3 class="section-title left">
						<span>Latest news</span>
					</h3>
				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="wp-block article grid">
							<div class="article-image">
								<img src="resources/images/prv/magazine/magazine-small-1.jpg"
									alt="">
								<h4 class="image-title base">Must read</h4>
							</div>
							<span class="article-category">Business news</span>
							<h3 class="title">
								<a href="">Fortitor Posuere &amp; Praesent Metus Ins</a>
							</h3>
							<p>Laoreet dolore magna aliquam erat are esrseiiqetuer ipisci
								nibh euismod is tincidunt ut amat volutpat aliquam erat are
								esrseiiqetuer.</p>
						</div>
					</div>
					<div class="col-md-8">
						<div class="row">
							<div class="col-md-6">
								<div class="wp-block article list">
									<div class="article-image">
										<img src="resources/images/prv/magazine/magazine-small-2.jpg"
											alt="">
									</div>
									<div class="wp-block-body">
										<h3 class="title">
											<a href="" hidefocus="true">Lorem ipsum dolor sit ...</a>
										</h3>
										<p>Laoreet dolore magna aliquam erat are esrseiiqetuer
											ipisci nibh euismod is tincidunt.</p>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="wp-block article list">
									<div class="article-image">
										<img src="resources/images/prv/magazine/magazine-small-3.jpg"
											alt="">
									</div>
									<div class="wp-block-body">
										<h3 class="title">
											<a href="" hidefocus="true">Lorem ipsum dolor sit ...</a>
										</h3>
										<p>Laoreet dolore magna aliquam erat are esrseiiqetuer
											ipisci nibh euismod is tincidunt.</p>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="wp-block article list">
									<div class="article-image">
										<img src="resources/images/prv/magazine/magazine-small-4.jpg"
											alt="">
									</div>
									<div class="wp-block-body">
										<h3 class="title">
											<a href="" hidefocus="true">Lorem ipsum dolor sit ...</a>
										</h3>
										<p>Laoreet dolore magna aliquam erat are esrseiiqetuer
											ipisci nibh euismod is tincidunt.</p>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="wp-block article list">
									<div class="article-image">
										<img src="resources/images/prv/magazine/magazine-small-5.jpg"
											alt="">
									</div>
									<div class="wp-block-body">
										<h3 class="title">
											<a href="" hidefocus="true">Lorem ipsum dolor sit ...</a>
										</h3>
										<p>Laoreet dolore magna aliquam erat are esrseiiqetuer
											ipisci nibh euismod is tincidunt.</p>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="wp-block article list">
									<div class="article-image">
										<img src="resources/images/prv/magazine/magazine-small-6.jpg"
											alt="">
									</div>
									<div class="wp-block-body">
										<h3 class="title">
											<a href="" hidefocus="true">Lorem ipsum dolor sit ...</a>
										</h3>
										<p>Laoreet dolore magna aliquam erat are esrseiiqetuer
											ipisci nibh euismod is tincidunt.</p>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="wp-block article list">
									<div class="article-image">
										<img src="resources/images/prv/magazine/magazine-small-7.jpg"
											alt="">
									</div>
									<div class="wp-block-body">
										<h3 class="title">
											<a href="" hidefocus="true">Lorem ipsum dolor sit ...</a>
										</h3>
										<p>Laoreet dolore magna aliquam erat are esrseiiqetuer
											ipisci nibh euismod is tincidunt.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section>
		<!--  
    <section class="slice base p-15">
        <div class="cta-wr">
            <div class="container">
                <div class="row">
                    <div class="col-md-9">
                        <h1>
                            Enhance shopping experience with our template. Start selling your products! 
                        </h1>
                    </div>
                    <div class="col-md-3">
                        <a href="#" class="btn btn-lg btn-b-white btn-icon btn-cart pull-right">
                            <span>Visit the shop</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="slice light-gray bb">
        <div class="wp-section">
            <div class="container">
                <div class="section-title-wr">
                    <h3 class="section-title left"><span>Featured products</span></h3>
                </div>
                <div class="no-margin owl-carousel owl-carousel-4" data-owl-pagination="smth">
                    <div class="item">
                        <div class="wp-block product">
                            <figure>
                                <img alt="" src="resources/images/prv/product-1.jpg" class="img-responsive img-center">
                                <span class="ribbon base">New</span>
                            </figure>
                            <h2 class="product-title"><a href="">Nikon Coolpix L320</a></h2>
                            <p>
                            Lorem ipsum dolor sit amet consectetur adipisg elitm Ut tincidunt purus iaculis
                            </p>
                            <div class="wp-block-footer">
                                <span class="price pull-left">RON 233.33</span>
                                <a href="#" class="btn btn-sm btn-base btn-icon btn-cart pull-right">
                                    <span>Add to cart</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="item">
                        <div class="wp-block product">
                            <figure>
                                <img alt="" src="resources/images/prv/product-2.jpg" class="img-responsive img-center">
                                <span class="ribbon orange">Sale</span>
                            </figure>
                            <h2 class="product-title"><a href="">Samsung Galaxy S4</a></h2>
                            <p>
                            Lorem ipsum dolor sit amet consectetur adipisg elitm Ut tincidunt purus iaculis
                            </p>
                            <div class="wp-block-footer">
                                <span class="price pull-left">RON 233.33</span>
                                <a href="#" class="btn btn-sm btn-base btn-icon btn-cart pull-right">
                                    <span>Add to cart</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="item">
                        <div class="wp-block product">
                            <figure>
                                <img alt="" src="resources/images/prv/product-3.jpg" class="img-responsive img-center">
                            </figure>
                            <h2 class="product-title"><a href="">Asus Ultra Notebook</a></h2>
                            <p>
                            Lorem ipsum dolor sit amet consectetur adipisg elitm Ut tincidunt purus iaculis
                            </p>
                            <div class="wp-block-footer">
                                <span class="price pull-left">RON 233.33</span>
                                <a href="#" class="btn btn-sm btn-base btn-icon btn-cart pull-right">
                                    <span>Add to cart</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="item">
                        <div class="wp-block product">
                            <figure>
                                <img alt="" src="images/prv/product-4.jpg" class="img-responsive img-center">
                                <span class="ribbon red">Special</span>
                            </figure>
                            <h2 class="product-title"><a href="">PC mouse Microsoft</a></h2>
                            <p>
                            Lorem ipsum dolor sit amet consectetur adipisg elitm Ut tincidunt purus iaculis
                            </p>
                            <div class="wp-block-footer">
                                <span class="price pull-left">RON 233.33</span>
                                <a href="#" class="btn btn-sm btn-base btn-icon btn-cart pull-right">
                                    <span>Add to cart</span>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="item">
                        <div class="wp-block product">
                            <figure>
                                <img alt="" src="images/prv/product-1.jpg" class="img-responsive img-center">
                                <span class="ribbon base-alt">New</span>
                            </figure>
                            <h2 class="product-title"><a href="">Nikon Coolpix L320</a></h2>
                            <p>
                            Lorem ipsum dolor sit amet consectetur adipisg elitm Ut tincidunt purus iaculis
                            </p>
                            <div class="wp-block-footer">
                                <span class="price pull-left">RON 233.33</span>
                                <a href="#" class="btn btn-sm btn-base btn-icon btn-cart pull-right">
                                    <span>Add to cart</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="item">
                        <div class="wp-block product">
                            <figure>
                                <img alt="" src="images/prv/product-2.jpg" class="img-responsive img-center">
                                <span class="ribbon yellow">Sale</span>
                            </figure>
                            <h2 class="product-title"><a href="">Samsung Galaxy S4</a></h2>
                            <p>
                            Lorem ipsum dolor sit amet consectetur adipisg elitm Ut tincidunt purus iaculis
                            </p>
                            <div class="wp-block-footer">
                                <span class="price pull-left">RON 233.33</span>
                                <a href="#" class="btn btn-sm btn-base btn-icon btn-cart pull-right">
                                    <span>Add to cart</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="item">
                        <div class="wp-block product">
                            <figure>
                                <img alt="" src="images/prv/product-3.jpg" class="img-responsive img-center">
                            </figure>
                            <h2 class="product-title"><a href="">Asus Ultra Notebook</a></h2>
                            <p>
                            Lorem ipsum dolor sit amet consectetur adipisg elitm Ut tincidunt purus iaculis
                            </p>
                            <div class="wp-block-footer">
                                <span class="price pull-left">RON 233.33</span>
                                <a href="#" class="btn btn-sm btn-base btn-icon btn-cart pull-right">
                                    <span>Add to cart</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
-->
		<!-- CLIENTS -->
		<section class="slice bg-white">
		<div class="wp-section">
			<div class="container">
				<div class="section-title-wr">
					<h3 class="section-title left">
						<span>함께 활동중인 학교</span>
					</h3>
				</div>
				<div class="row">
					<div class="col-md-2 col-sm-4 col-xs-6">
						<div class="client">
							<a href="#"> <img src="resources/images/clients/client-1.png"
								alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-4 col-xs-6">
						<div class="client">
							<a href="#"> <img src="resources/images/clients/client-2.png"
								alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-4 col-xs-6">
						<div class="client">
							<a href="#"> <img src="resources/images/clients/client-3.png"
								alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-4 col-xs-6">
						<div class="client">
							<a href="#"> <img src="resources/images/clients/client-4.png"
								alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-4 col-xs-6">
						<div class="client">
							<a href="#"> <img src="resources/images/clients/client-7.png"
								alt="">
							</a>
						</div>
					</div>
					<div class="col-md-2 col-sm-4 col-xs-6">
						<div class="client">
							<a href="#"> <img src="resources/images/clients/client-6.png"
								alt="">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section>


		
		

</body>
</html>
