<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>superstar</title>

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
                <span class="fa fa-newspaper-o"></span> NewsBlog</a>
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
<div class="w3l-homeblock2 py-5">
    <div class="container pt-md-4 pb-md-5">
        <!-- block -->
        <h3 class="category-title mb-3"> Cartoon</h3>
        <p class="mb-sm-5 mb-4 max-width">Explore secondary creation, infinite possibilities</p>
        <div class="row">
            <div class="col-lg-4 col-md-6 item">
                <div class="card">
                    <div class="card-header p-0 position-relative">
                        <a href="#blog-single.html">
                            <img class="card-img-bottom d-block radius-image-full" src="assets/images/cartoon.jpg"
                                 alt="Card image cap">
                        </a>
                    </div>
                    <div class="card-body blog-details">
                        <a href="commentController?type=girls" class="blog-desc" target="_blank">Girls' revolution
                        </a>
                        <p>A Japanese anime work created in 1998 by Kunihiko Kibara, which is liked by many people.</p>
                        <div class="author align-items-center mt-3 mb-1">
                            <img src="assets/images/a1.jpg" alt="" class="img-fluid rounded-circle" />
                            <ul class="blog-meta">
                                <li>
                                    <a href="author.html">Home of Cartoon</a> </a>
                                </li>
                                <li class="meta-item blog-lesson">
                                    <span class="meta-value"> July 13, 2020 </span>. <span
                                        class="meta-value ml-2"><span class="fa fa-clock-o"></span> 1 min</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mt-md-0 mt-4">
                <div class="card">
                    <div class="card-header p-0 position-relative">
                        <a href="#blog-single.html">
                            <img class="card-img-bottom d-block radius-image-full" src="assets/images/进击的巨人.webp"
                                 alt="Card image cap">
                        </a>
                    </div>
                    <div class="card-body blog-details">
                        <a href="#blog-single.html" class="blog-desc">Attack on Titan
                        </a>
                        <p>The story follows Eren Yeager and his companions as they unravel the secrets of the Titans
                            and humanity's struggle for survival.</p>
                        <div class="author align-items-center mt-3 mb-1">
                            <img src="assets/images/a3.jpg" alt="" class="img-fluid rounded-circle" />
                            <ul class="blog-meta">
                                <li>
                                    <a href="author.html">ELizabeth</a> </a>
                                </li>
                                <li class="meta-item blog-lesson">
                                    <span class="meta-value"> July 13, 2020 </span>. <span
                                        class="meta-value ml-2"><span class="fa fa-clock-o"></span> 1 min</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mt-lg-0 mt-4">
                <div class="card">
                    <div class="card-header p-0 position-relative">
                        <a href="#blog-single.html">
                            <img class="card-img-bottom d-block radius-image-full" src="assets/images/四月是你的谎言.webp"
                                 alt="Card image cap">
                        </a>
                    </div>
                    <div class="card-body blog-details">
                        <a href="#blog-single.html" class="blog-desc">Your Lie in April
                        </a>
                        <p> It explores themes of loss, healing, and the power of music, offering a poignant and
                            beautifully animated narrative.</p>
                        <div class="author align-items-center mt-3 mb-1">
                            <img src="assets/images/a2.jpg" alt="" class="img-fluid rounded-circle" />
                            <ul class="blog-meta">
                                <li>
                                    <a href="author.html">Charlotte mia</a> </a>
                                </li>
                                <li class="meta-item blog-lesson">
                                    <span class="meta-value"> July 13, 2020 </span>. <span
                                        class="meta-value ml-2"><span class="fa fa-clock-o"></span> 1 min</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mt-lg-5 mt-4">
                <div class="card">
                    <div class="card-header p-0 position-relative">
                        <a href="#blog-single.html">
                            <img class="card-img-bottom d-block radius-image-full" src="assets/images/钢炼.webp"
                                 alt="Card image cap">
                        </a>
                    </div>
                    <div class="card-body blog-details">
                        <a href="#blog-single.html" class="blog-desc">Fullmetal Alchemist: Brotherhood
                        </a>
                        <p>It offers a captivating storyline, well-developed characters, and explores themes of
                            sacrifice, redemption</p>
                        <div class="author align-items-center mt-3 mb-1">
                            <img src="assets/images/a1.jpg" alt="" class="img-fluid rounded-circle" />
                            <ul class="blog-meta">
                                <li>
                                    <a href="author.html">Johnson smith</a> </a>
                                </li>
                                <li class="meta-item blog-lesson">
                                    <span class="meta-value"> July 13, 2020 </span>. <span
                                        class="meta-value ml-2"><span class="fa fa-clock-o"></span> 1 min</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mt-lg-5 mt-4">
                <div class="card">
                    <div class="card-header p-0 position-relative">
                        <a href="#blog-single.html">
                            <img class="card-img-bottom d-block radius-image-full" src="assets/images/未来都市.webp"
                                 alt="Card image cap">
                        </a>
                    </div>
                    <div class="card-body blog-details">
                        <a href="#blog-single.html" class="blog-desc">N0.6
                        </a>
                        <p>"NO.6" is a captivating and thought-provoking dystopian novel series. It takes readers on a
                            journey through a meticulously controlled utopian city </p>
                        <div class="author align-items-center mt-3 mb-1">
                            <img src="assets/images/a1.jpg" alt="" class="img-fluid rounded-circle" />
                            <ul class="blog-meta">
                                <li>
                                    <a href="author.html">Johnson smith</a> </a>
                                </li>
                                <li class="meta-item blog-lesson">
                                    <span class="meta-value"> July 13, 2020 </span>. <span
                                        class="meta-value ml-2"><span class="fa fa-clock-o"></span> 1 min</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mt-lg-5 mt-4">
                <div class="card">
                    <div class="card-header p-0 position-relative">
                        <a href="#blog-single.html">
                            <img class="card-img-bottom d-block radius-image-full" src="assets/images/恶魔人.webp"
                                 alt="Card image cap">
                        </a>
                    </div>
                    <div class="card-body blog-details">
                        <a href="#blog-single.html" class="blog-desc">Devilman，Cry baby
                        </a>
                        <p>L"Devilman" has left a lasting impact on the manga landscape. It pushes boundaries, challenges
                            societal norms, and offers a thought-provoking examination of the human psyche. </p>
                        <div class="author align-items-center mt-3 mb-1">
                            <img src="assets/images/a1.jpg" alt="" class="img-fluid rounded-circle" />
                            <ul class="blog-meta">
                                <li>
                                    <a href="author.html">Johnson smith</a> </a>
                                </li>
                                <li class="meta-item blog-lesson">
                                    <span class="meta-value"> July 13, 2020 </span>. <span
                                        class="meta-value ml-2"><span class="fa fa-clock-o"></span> 1 min</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mt-lg-5 mt-4">
                <div class="card">
                    <div class="card-header p-0 position-relative">
                        <a href="#blog-single.html">
                            <img class="card-img-bottom d-block radius-image-full" src="assets/images/eva.jpg"
                                 alt="Card image cap">
                        </a>
                    </div>
                    <div class="card-body blog-details">
                        <a href="#blog-single.html" class="blog-desc">EVA，Neon Genesis Evangelion
                        </a>
                        <p>"EVA" is known for its deep and introspective exploration of characters' psyches, as well as
                            its intricate narrative. It delves into psychological and philosophical concepts, challenging
                            viewers to question their own existence and purpose. </p>
                        <div class="author align-items-center mt-3 mb-1">
                            <img src="assets/images/a1.jpg" alt="" class="img-fluid rounded-circle" />
                            <ul class="blog-meta">
                                <li>
                                    <a href="author.html">Isabella ava</a> </a>
                                </li>
                                <li class="meta-item blog-lesson">
                                    <span class="meta-value"> July 13, 2020 </span>. <span
                                        class="meta-value ml-2"><span class="fa fa-clock-o"></span> 1 min</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mt-lg-5 mt-4">
                <div class="card">
                    <div class="card-header p-0 position-relative">
                        <a href="#blog-single.html">
                            <img class="card-img-bottom d-block radius-image-full" src="assets/images/lovelive.webp"
                                 alt="Card image cap">
                        </a>
                    </div>
                    <div class="card-body blog-details">
                        <a href="#blog-single.html" class="blog-desc">Love Live!
                        </a>
                        <p>If you're looking for an anime that combines music, friendship, and a feel-good atmosphere,
                            "Love Live!" is a delightful choice.</p>
                        <div class="author align-items-center mt-3 mb-1">
                            <img src="assets/images/a3.jpg" alt="" class="img-fluid rounded-circle" />
                            <ul class="blog-meta">
                                <li>
                                    <a href="author.html">Elizabeth</a> </a>
                                </li>
                                <li class="meta-item blog-lesson">
                                    <span class="meta-value"> July 13, 2020 </span>. <span
                                        class="meta-value ml-2"><span class="fa fa-clock-o"></span> 1 min</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mt-lg-5 mt-4">
                <div class="card">
                    <div class="card-header p-0 position-relative">
                        <a href="#blog-single.html">
                            <img class="card-img-bottom d-block radius-image-full" src="assets/images/凉宫春日.webp"
                                 alt="Card image cap">
                        </a>
                    </div>
                    <div class="card-body blog-details">
                        <a href="#blog-single.html" class="blog-desc">The Melancholy of Haruhi Suzumiya
                        </a>
                        <p>With its witty dialogue, charming characters, and moments of unexpected twists, "The
                            Melancholy of Haruhi Suzumiya" offers a refreshing and entertaining anime experience. </p>
                        <div class="author align-items-center mt-3 mb-1">
                            <img src="assets/images/a1.jpg" alt="" class="img-fluid rounded-circle" />
                            <ul class="blog-meta">
                                <li>
                                    <a href="author.html">Johnson smith</a> </a>
                                </li>
                                <li class="meta-item blog-lesson">
                                    <span class="meta-value"> July 13, 2020 </span>. <span
                                        class="meta-value ml-2"><span class="fa fa-clock-o"></span> 1 min</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <ul class="site-pagination text-center mt-md-5 mt-4">
            <li><span aria-current="page" class="page-numbers current">1</span></li>
            <li><a class="page-numbers" href="#page2">2</a></li>
            <li><a class="page-numbers" href="#page3">3</a></li>
            <li><span class="page-numbers dots">…</span></li>
            <li><a class="page-numbers" href="#page7">7</a></li>
            <li><a class="next page-numbers" href="#next">Next »</a></li>
        </ul>
    </div>
</div>
<!-- footer-28 block -->
<section class="app-footer">
    <footer class="footer-28 py-5">
        <div class="footer-bg-layer">
            <div class="container py-lg-3">
                <div class="row footer-top-28">
                    <div class="col-lg-4 footer-list-28 copy-right mb-lg-0 mb-sm-5 mt-sm-0 mt-4">
                        <a class="navbar-brand mb-3" href="index.jsp">
                            <span class="fa fa-newspaper-o"></span> NewsBlog</a>
                        <p class="copy-footer-28">Copyright &copy; 2020.Company name All rights reserved.</p>
                        <h5 class="mt-2"></h5>
                    </div>
                    <div class="col-lg-8 row">
                        <div class="col-sm-4 col-6 footer-list-28">
                            <h6 class="footer-title-28">Useful links</h6>
                            <ul>
                                <li><a href="#categories">food blogs</a></li>
                                <li><a href="#advertise">Advertise with us</a></li>
                                <li><a href="#authors">Our Authors</a></li>
                                <li><a href="contact.html">Get in touch</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-4 col-6 footer-list-28">
                            <h6 class="footer-title-28">Categories</h6>
                            <ul>
                                <li><a href="beauty.html">Beauty</a></li>
                                <li><a href="fashion.html">Fashion and Style</a></li>
                                <li><a href="#food"> Food and Wellness</a></li>
                                <li><a href="#lifestyle">Lifestyle</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-4 col-6 footer-list-28 mt-sm-0 mt-4">
                            <h6 class="footer-title-28">Social Media</h6>
                            <ul class="social-icons">
                                <li class="facebook">
                                    <a href="#facebook"><span class="fa fa-facebook"></span> Facebook</a></li>
                                <li class="twitter"> <a href="#twitter"><span class="fa fa-twitter"></span> Twitter</a></li>
                                <li class="linkedin"> <a href="#linkedin"><span class="fa fa-linkedin"></span> Linkedin</a></li>
                                <li class="dribbble"><a href="#dribbble"><span class="fa fa-dribbble"></span> Dribbble</a></li>
                            </ul>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </footer>

    <!-- move top -->
    <button onclick="topFunction()" id="movetop" title="Go to top">
        <span class="fa fa-angle-up"></span>
    </button>
    <script>
        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function () {
            scrollFunction()
        };

        function scrollFunction() {
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                document.getElementById("movetop").style.display = "block";
            } else {
                document.getElementById("movetop").style.display = "none";
            }
        }

        // When the user clicks on the button, scroll to the top of the document
        function topFunction() {
            document.body.scrollTop = 0;
            document.documentElement.scrollTop = 0;
        }
    </script>
    <!-- /move top -->
</section>
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

</body>
</html>
