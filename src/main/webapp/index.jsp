<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Home</title>

    <link href="https://fonts.googleapis.com/css2?family=Hind:wght@300;400;500;600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:wght@400;700&display=swap" rel="stylesheet">

    <!-- Template CSS -->
    <link rel="stylesheet" href="assets/css/style-starter.css">
</head>
<body>
<!-- header -->
<header class="w3l-header">
    <div class="container">
        <!--/nav-->
        <nav class="navbar navbar-expand-lg navbar-light fill px-lg-0 py-0 px-sm-3 px-0">
            <a class="navbar-brand" href="index.jsp">
                <span class="fa fa-newspaper-o"></span> Love4Love</a>
            <!-- if logo is image enable this
                        <a class="navbar-brand" href="#index.html">
                            <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
                        </a> -->


            <button class="navbar-toggler collapsed" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                <!-- <span class="navbar-toggler-icon"></span> -->
                <span class="fa icon-expand fa-bars"></span>
                <span class="fa icon-close fa-times"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <nav class="mx-auto">
                    <div class="search-bar">
                        <form class="search">
                            <input type="search" class="search__input" name="search" placeholder="Discover news, articles and more"
                                   onload="equalWidth()" required>
                            <span class="fa fa-search search__icon"></span>
                        </form>
                    </div>
                </nav>
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="more.jsp" target="_blank">Me</a>
                    </li>
                    <li class="nav-item @@contact__active">
                        <a class="nav-link" href="login.jsp">Login</a>
                    </li>
                </ul>
            </div>
            <!-- toggle switch for light and dark theme -->
            <div class="mobile-position">
                <nav class="navigation">
                    <div class="theme-switch-wrapper">
                        <label class="theme-switch" for="checkbox">
                            <input type="checkbox" id="checkbox">
                            <div class="mode-container">
                                <i class="gg-sun"></i>
                                <i class="gg-moon"></i>
                            </div>
                        </label>
                    </div>
                </nav>
            </div>
            <!-- //toggle switch for light and dark theme -->
        </nav>
    </div>

    <!--//nav-->
</header>
<!-- //header -->
<!-- /homeblock1-->
<section class="w3l-homeblock1 py-sm-5 py-4">
    <div class="container py-md-4">
        <div class="grids-area-hny main-cont-wthree-fea row">
            <div class="col-lg-3 col-6 grids-feature">
                <a href="Movie.jsp">
                    <div class="area-box">
                        <span class="fa fa-bath"></span>
                        <h4 class="title-head">Movie</h4>
                    </div>
                </a>
            </div>
            <div class="col-lg-3 col-6 grids-feature">
                <a href="Cartoon.jsp" target="_blank">
                    <div class="area-box">
                        <span class="fa fa-female"></span>
                        <h4 class="title-head">Cartoon</h4>
                    </div>
                </a>
            </div>
            <div class="col-lg-3 col-6 grids-feature mt-lg-0 mt-md-4 mt-3">
                <a href="#food">
                    <div class="area-box">
                        <span class="fa fa-cutlery"></span>
                        <h4 class="title-head">Star</h4>
                    </div>
                </a>
            </div>
            <div class="col-lg-3 col-6 grids-feature mt-lg-0 mt-md-4 mt-3">
                <a href="#lifsetyle">
                    <div class="area-box">
                        <span class="fa fa-pie-chart"></span>
                        <h4 class="title-head">Novel</h4>
                    </div>
                </a>
            </div>
        </div>
    </div>
</section>
<!-- //homeblock1-->

<section class="w3l-testimonials" id="testimonials">
    <!-- main-slider -->
    <div class="testimonials pt-2 pb-5">
        <div class="container pb-lg-5">
            <div class="owl-testimonial owl-carousel owl-theme mb-md-0 mb-sm-5 mb-4">
                <div class="item">
                    <div class="row slider-info">
                        <div class="col-lg-8 message-info align-self">
                            <span class="label-blue mb-sm-4 mb-3">Movie</span>
                            <h3 class="title-big mb-4">Titanic, a American epic romance and disaster film
                            </h3>
                            <p class="message">The movie stars Leonardo DiCaprio and Kate Winslet and tells the story of the ill-fated maiden voyage of the RMS Titanic in 1912. The movie is set in two time periods, the early 20th century and the late 20th century, and follows the romance between the fictional characters Jack and Rose as they fall in love aboard the Titanic.</p>
                        </div>
                        <div class="col-lg-4 col-md-8 img-circle mt-lg-0 mt-4">
                            <img src="assets/images/movie.jpg" class="img-fluid radius-image-full" alt="client image">
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="row slider-info">
                        <div class="col-lg-8 message-info align-self">
                            <a href="Girls.jsp">
                            <span class="label-blue mb-sm-4 mb-3">Cartoon</span>
                            <h3 class="title-big mb-4">Girls revolution,An anime that saves each other
                            </h3>
                            <p class="message">Maiden Revolution tells the story of a girl who fantasizes about becoming a prince and saving a princess, but eventually realizes that she can save others without becoming a prince.During this time there is a villainous student council group that thwarts her, but the princess herself eventually overcomes her own nightmare and is saved by others while saving others at the same time.</p>
                            </a>
                        </div>
                        <div class="col-lg-4 col-md-8 img-circle mt-lg-0 mt-4">
                            <img src="assets/images/cartoon.webp" class="img-fluid radius-image-full" alt="client image">
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="row slider-info">
                        <div class="col-lg-8 message-info align-self">
                            <span class="label-blue mb-sm-4 mb-3">Star</span>
                            <h3 class="title-big mb-4">Twice, the super popular Korean girl group will have a comeback
                                in Korea in August
                            </h3>
                            <p class="message">Twice, the internationally beloved K-pop group, has officially announced
                                their highly anticipated comeback. After a period of rest and individual projects,
                                the nine-member girl group is returning with new music and a fresh concept. Fans are ecstatic
                                about the news, and social media is buzzing with excitement again.</p>
                        </div>
                        <div class="col-lg-4 col-md-8 img-circle mt-lg-0 mt-4">
                            <img src="assets/images/star.webp" class="img-fluid radius-image-full" alt="client image">
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="row slider-info">
                        <div class="col-lg-8 message-info align-self">
                            <span class="label-blue mb-sm-4 mb-3">Novel</span>
                            <h3 class="title-big mb-4">1984
                            </h3>
                            <p class="message">This dystopian masterpiece presents a chilling vision of a totalitarian society where individualism and freedom are suppressed. Orwell's thought-provoking exploration of surveillance, propaganda, and the manipulation of truth remains eerily relevant in today's world. The novel delves into themes of power, control, and the struggle for personal autonomy, leaving readers contemplating the fragility of human rights and the dangers of an all-encompassing state. </p>
                        </div>
                        <div class="col-lg-4 col-md-8 img-circle mt-lg-0 mt-4">
                            <img src="assets/images/novel.webp" class="img-fluid radius-image-full"
                                 alt="client image">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /main-slider -->
</section>
<!-- footer-28 block -->
<!-- //footer-28 block -->

<!-- disable body scroll which navbar is in active -->
<script>
    $(function () {
        $('.navbar-toggler').click(function () {
            $('body').toggleClass('noscroll');
        })
    });
</script>
<!-- disable body scroll which navbar is in active -->

<!-- Template JavaScript -->
<script src="assets/js/jquery-3.3.1.min.js"></script>

<!-- theme changer js -->
<script src="assets/js/theme-change.js"></script>
<!-- //theme changer js -->

<!-- courses owlcarousel -->
<script src="assets/js/owl.carousel.js"></script>

<!-- script for testimonials -->
<script>
    $(document).ready(function () {
        $('.owl-testimonial').owlCarousel({
            loop: true,
            margin: 0,
            nav: true,
            responsiveClass: true,
            autoplay: false,
            autoplayTimeout: 5000,
            autoplaySpeed: 1000,
            autoplayHoverPause: false,
            responsive: {
                0: {
                    items: 1,
                    nav: false
                },
                480: {
                    items: 1,
                    nav: false
                },
                667: {
                    items: 1,
                    nav: true
                },
                1000: {
                    items: 1,
                    nav: true
                }
            }
        })
    })
</script>
<!-- //script for testimonials -->

<!-- bootstrap -->
<script src="assets/js/bootstrap.min.js"></script>
<style>
    .copyrights{text-indent:-9999px;height:0;line-height:0;font-size:0;overflow:hidden;}
</style>
<div class="copyrights">
    Collect from <a href="http://www.cssmoban.com/"  title="网站模板">模板之家</a>
    <a href="http://cooco.net.cn/" title="组卷网">组卷网</a>
</div>
</body>
</html>
