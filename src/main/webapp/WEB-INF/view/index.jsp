<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Baby Room</title>

  <!-- Vendor CSS -->
  <link href="/resources/vendors/fullcalendar/fullcalendar.css" rel="stylesheet">
  <link href="/resources/vendors/animate-css/animate.min.css" rel="stylesheet">
  <link href="/resources/vendors/sweet-alert/sweet-alert.min.css" rel="stylesheet">
  <link href="/resources/vendors/material-icons/material-design-iconic-font.min.css" rel="stylesheet">
  <link href="/resources/vendors/socicon/socicon.min.css" rel="stylesheet">

  <!-- CSS -->
  <link href="/resources/css/app.min.1.css" rel="stylesheet">
  <link href="/resources/css/app.min.2.css" rel="stylesheet">
  <link href="/resources/css/tab.css" rel="stylesheet">
  <link href="/resources/css/style.css" rel="stylesheet">

</head>
<body ng-app="app" ng-controller="indexController">
<header id="header">
  <ul class="header-inner">

    <li class="logo hidden-xs">
      <a href="/">Baby Room</a>
    </li>

  </ul>

</header>

<section id="main">

  <section id="content">
    <div class="container">

      <div class="card">

        <div class="card-body" style="min-height: 350px;">

          <div class="tabbable tabs-left">
            <ul class="nav nav-tabs">
              <li class="active">
                <a href="#tab-1" data-toggle="tab" class="waves-effect">Tab 1</a>
              </li>
              <li>
                <a href="#tab-2" data-toggle="tab" class="waves-effect">Tab 2</a>
              </li>
              <li>
                <a href="#tab-3" data-toggle="tab" class="waves-effect">Tab 3</a>
              </li>
              <li>
                <a href="#tab-4" data-toggle="tab" class="waves-effect">Tab 4</a>
              </li>
              <li>
                <a href="#tab-5" data-toggle="tab" class="waves-effect">Tab 5</a>
              </li>
              <li>
                <a href="#tab-6" data-toggle="tab" class="waves-effect">Tab 6</a>
              </li>
              <li>
                <a href="#tab-7" data-toggle="tab" class="waves-effect">Tab 7</a>
              </li>
            </ul>
            <div class="tab-content p-20">
              <div class="tab-pane active" id="tab-1">
                <h1>Tab 1</h1>
                Lorem ipsum dolor sit amet, charetra varius quam sit amet vulputate.
                Quisque mauris augue, molestie tincidunt condimentum vitae, gravida a libero.
              </div>
              <div class="tab-pane " id="tab-2">
                <div class="embed-responsive embed-responsive-16by9 m-b-20">
                  <iframe class="embed-responsive-item" src="http://www.youtube.com/embed/aaZXDm3RXuo"></iframe>
                </div>
              </div>
              <div class="tab-pane " id="tab-3">
                <h1>Tab 3</h1>
                Lorem ipsum dolor sit amet, charetra varius quam sit amet vulputate.
                Quisque mauris augue, molestie tincidunt condimentum vitae, gravida a libero.
              </div>
              <div class="tab-pane " id="tab-4">
                <h1>Tab 4</h1>
                Lorem ipsum dolor sit amet, charetra varius quam sit amet vulputate.
                Quisque mauris augue, molestie tincidunt condimentum vitae, gravida a libero.
              </div>
              <div class="tab-pane " id="tab-5">
                <h1>Tab 5</h1>
                Lorem ipsum dolor sit amet, charetra varius quam sit amet vulputate.
                Quisque mauris augue, molestie tincidunt condimentum vitae, gravida a libero.
              </div>
              <div class="tab-pane " id="tab-6">
                <h1>Tab 6</h1>
                Lorem ipsum dolor sit amet, charetra varius quam sit amet vulputate.
                Quisque mauris augue, molestie tincidunt condimentum vitae, gravida a libero.
              </div>
              <div class="tab-pane " id="tab-7">
                <h1>Tab 7</h1>
                Lorem ipsum dolor sit amet, charetra varius quam sit amet vulputate.
                Quisque mauris augue, molestie tincidunt condimentum vitae, gravida a libero.
              </div>
            </div>
          </div>






        </div>
      </div>






      <div class="card c-timeline">
        <div class="clearfix">
          <ul tabindex="1" style="overflow: hidden;" class="tab-nav tn-justified">
            <li class="waves-effect"><a href="index.html">About</a></li>
            <li class="active waves-effect"><a href="index.html">Timeline</a></li>
            <li class="waves-effect"><a href="index.html">Photos</a></li>
            <li class="waves-effect"><a href="index.html">Connections</a></li>
          </ul>


          <div class="timeline">
            <div class="t-view" data-tv-type="text">
              <div class="tv-header media">
                <a href="#" class="tvh-user pull-left">
                  <img class="img-responsive" src="/resources//resources/img/profile-pics/profile-pic-2.jpg" alt="">
                </a>
                <div class="media-body p-t-5">
                  <strong class="d-block">Malinda Hollaway</strong>
                  <small class="c-gray">April 23, 2014 at 05:00</small>
                </div>

                <ul class="actions m-t-20 hidden-xs">
                  <li class="dropdown">
                    <a href="#" data-toggle="dropdown">
                      <i class="md md-more-vert"></i>
                    </a>

                    <ul class="dropdown-menu dropdown-menu-right">
                      <li>
                        <a href="#">Edit</a>
                      </li>
                      <li>
                        <a href="#">Delete</a>
                      </li>
                    </ul>
                  </li>
                </ul>
              </div>
              <div class="tv-body">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sem dolor, posuere convallis blandit sit amet, aliquet in est. Ut condimentum magna enim, non venenatis elit interdum accumsan. In hac habitasse platea dictumst. Etiam molestie felis non mollis viverra. In ipsum lorem, fermentum vitae lectus in, accumsan malesuada neque.</p>

                <p>Suspendisse vehicula urna nisi, in luctus lacus consequat at. Nam purus dolor, tristique id lacinia sed, tincidunt congue metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec gravida leo. Sed nec ligula porta, dignissim elit molestie, finibus ligula. Nunc venenatis malesuada est ac molestie. Phasellus ornare nibh eu nisl rhoncus, vitae porttitor ante feugiat. Nulla vehicula erat nec odio dignissim, sit amet porttitor lorem auctor. Maecenas fermentum tellus ex, ac aliquet nisl malesuada id.</p>

                <div class="clearfix"></div>

                <ul class="tvb-stats">
                  <li class="tvbs-comments">54 Comments</li>
                  <li class="tvbs-likes">254 Likes</li>
                  <li class="tvbs-views">23K Views</li>
                </ul>

                <a class="tvc-more" href="#"><i class="md md-mode-comment"></i> View all 54 Comments</a>
              </div>

              <div class="tv-comments">
                <ul class="tvc-lists">
                  <li class="media">
                    <a href="#" class="tvh-user pull-left">
                      <img class="img-responsive" src="/resources//resources/img/profile-pics/1.jpg" alt="">
                    </a>
                    <div class="media-body">
                      <strong class="d-block">David Peiterson</strong>
                      <small class="c-gray">April 23, 2014 at 05:10</small>

                      <div class="m-t-10">Maecenas fermentum tellus ex, ac aliquet nisl malesuada id.</div>

                    </div>
                  </li>

                  <li class="media">
                    <a href="#" class="tvh-user pull-left">
                      <img class="img-responsive" src="/resources//resources/img/profile-pics/2.jpg" alt="">
                    </a>
                    <div class="media-body">
                      <strong class="d-block">Wernall Parnell</strong>
                      <small class="c-gray">April 22, 2014 at 13:00</small>

                      <div class="m-t-10">Nulla vehicula erat nec odio dignissim, sit amet porttitor lorem auctor. Maecenas fermentum tellus ex, ac aliquet nisl malesuada id.</div>

                    </div>
                  </li>

                  <li class="media">
                    <a href="#" class="tvh-user pull-left">
                      <img class="img-responsive" src="/resources//resources/img/profile-pics/3.jpg" alt="">
                    </a>
                    <div class="media-body">
                      <strong class="d-block">Shane Lee Yong</strong>
                      <small class="c-gray">April 19, 2014 at 10:10</small>

                      <div class="m-t-10">Sit amet porttitor lorem auctor. Maecenas fermentum tellus ex, ac aliquet nisl malesuada idwoon lorem ipsum.</div>
                    </div>
                  </li>

                  <li class="p-20">
                    <div class="fg-line">
                      <textarea style="overflow: hidden; word-wrap: break-word; height: 46px;" class="form-control auto-size" placeholder="Write a comment..."></textarea>
                    </div>

                    <button class="m-t-15 btn btn-primary btn-sm waves-effect waves-button waves-float">Post</button>
                  </li>
                </ul>
              </div>
            </div>

            <div class="t-view" data-tv-type="image">
              <div class="tv-header media">
                <a href="#" class="tvh-user pull-left">
                  <img class="img-responsive" src="/resources//resources/img/profile-pics/profile-pic-2.jpg" alt="">
                </a>
                <div class="media-body p-t-5">
                  <strong class="d-block">Malinda Hollaway</strong>
                  <small class="c-gray">April 05, 2014 at 11:00</small>
                </div>

                <ul class="actions m-t-20 hidden-xs">
                  <li class="dropdown">
                    <a href="#" data-toggle="dropdown">
                      <i class="md md-more-vert"></i>
                    </a>

                    <ul class="dropdown-menu dropdown-menu-right">
                      <li>
                        <a href="#">Edit</a>
                      </li>
                      <li>
                        <a href="#">Delete</a>
                      </li>
                    </ul>
                  </li>
                </ul>
              </div>
              <div class="tv-body">

                <div class="lightbox m-b-20">
                  <div data-src="/resources//resources/img/headers/sm/4.png">
                    <div class="lightbox-item pull-left">
                      <img src="/resources//resources/img/headers/sm/4.png" alt="">
                    </div>
                  </div>
                </div>

                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sem dolor, posuere convallis blandit sit amet, aliquet in est. Ut condimentum magna enim, non venenatis elit interdum accumsan. In hac habitasse platea dictumst. Etiam molestie felis non mollis viverra. In ipsum lorem, fermentum vitae lectus in, accumsan malesuada neque.</p>

                <div class="clearfix"></div>

                <ul class="tvb-stats">
                  <li class="tvbs-comments"><i class="md md-comment"></i> 120 <span class="hidden-xs">Comments</span></li>
                  <li class="tvbs-likes"><i class="md md-thumb-up"></i> 34K <span class="hidden-xs">Likes</span></li>
                  <li class="tvbs-views"><i class="md md-remove-red-eye"></i> 105K <span class="hidden-xs">Views</span></li>
                </ul>

                <a class="tvc-more" href="#"><i class="md md-mode-comment"></i> View all 290 Comments</a>
              </div>

              <div class="tv-comments">
                <ul class="tvc-lists">
                  <li class="media">
                    <a href="#" class="tvh-user pull-left">
                      <img class="img-responsive" src="/resources//resources/img/profile-pics/1.jpg" alt="">
                    </a>
                    <div class="media-body">
                      <strong class="d-block">Jolla Hatkin</strong>
                      <small class="c-gray">April 23, 2014 at 05.00</small>

                      <div class="m-t-10">Donec vel metus nisl. Nam euismod neque et finibus vulputate. Integer in vestibulum orci. Phasellus ut iaculis arcu, vitae commodo justo. Ut eu feugiat lorem, quis ornare risus</div>

                    </div>
                  </li>

                  <li class="media">
                    <a href="#" class="tvh-user pull-left">
                      <img class="img-responsive" src="/resources//resources/img/profile-pics/2.jpg" alt="">
                    </a>
                    <div class="media-body">
                      <strong class="d-block">David Simpson</strong>
                      <small class="c-gray">April 23, 2014 at 05.00</small>

                      <div class="m-t-10">Nulla vehicula erat nec odio dignissim, sit amet porttitor lorem auctor. Maecenas fermentum tellus ex, ac aliquet nisl malesuada id.</div>

                    </div>
                  </li>
                  <li class="p-20">
                    <div class="fg-line">
                      <textarea style="overflow: hidden; word-wrap: break-word; height: 46px;" class="form-control auto-size" placeholder="Write a comment..."></textarea>
                    </div>

                    <button class="m-t-15 btn btn-primary btn-sm waves-effect waves-button waves-float">Post</button>
                  </li>
                </ul>
              </div>
            </div>

            <div class="t-view" data-tv-type="video">
              <div class="tv-header media">
                <a href="#" class="tvh-user pull-left">
                  <img class="img-responsive" src="/resources//resources/img/profile-pics/profile-pic-2.jpg" alt="">
                </a>
                <div class="media-body p-t-5">
                  <strong class="d-block">Malinda Hollaway</strong>
                  <small class="c-gray">April 01, 2014 at 15:00</small>
                </div>

                <ul class="actions m-t-20 hidden-xs">
                  <li class="dropdown">
                    <a href="#" data-toggle="dropdown">
                      <i class="md md-more-vert"></i>
                    </a>

                    <ul class="dropdown-menu dropdown-menu-right">
                      <li>
                        <a href="#">Edit</a>
                      </li>
                      <li>
                        <a href="#">Delete</a>
                      </li>
                    </ul>
                  </li>
                </ul>
              </div>
              <div class="tv-body">

                <div class="embed-responsive embed-responsive-16by9 m-b-20">
                  <iframe class="embed-responsive-item" src="http://www.youtube.com/embed/aaZXDm3RXuo"></iframe>
                </div>

                <p>Duis sem dolor, posuere convallis blandit sit amet, aliquet in est. Ut condimentum magna enim, non venenatis elit interdum accumsan. In hac habitasse platea dictumst. Etiam molestie felis non mollis viverra. In ipsum lorem, fermentum vitae lectus in, accumsan malesuada neque.</p>

                <div class="clearfix"></div>

                <ul class="tvb-stats">
                  <li class="tvbs-comments">21 Comments</li>
                  <li class="tvbs-likes">156 Likes</li>
                  <li class="tvbs-views">2365 Views</li>
                </ul>

                <a class="tvc-more" href="#"><i class="md md-mode-comment"></i> View all 14 Comments</a>
              </div>

              <div class="tv-comments">
                <ul class="tvc-lists">
                  <li class="media">
                    <a href="#" class="tvh-user pull-left">
                      <img class="img-responsive" src="/resources//resources/img/profile-pics/6.jpg" alt="">
                    </a>
                    <div class="media-body">
                      <strong class="d-block">Jolla Hatkin</strong>
                      <small class="c-gray">April 23, 2014 at 05.00</small>

                      <div class="m-t-10">Donec vel metus nisl. Nam euismod neque et finibus vulputate. Integer in vestibulum orci. Phasellus ut iaculis arcu, vitae commodo justo. Ut eu feugiat lorem, quis ornare risus</div>

                    </div>
                  </li>

                  <li class="media">
                    <a href="#" class="tvh-user pull-left">
                      <img class="img-responsive" src="/resources//resources/img/profile-pics/5.jpg" alt="">
                    </a>
                    <div class="media-body">
                      <strong class="d-block">Sean Paul Jr.</strong>
                      <small class="c-gray">April 23, 2014 at 05.00</small>

                      <div class="m-t-10">Nulla vehicula erat nec odio dignissim, sit amet porttitor lorem auctor. Maecenas fermentum tellus ex, ac aliquet nisl malesuada id.</div>

                    </div>
                  </li>
                  <li class="p-20">
                    <div class="fg-line">
                      <textarea style="overflow: hidden; word-wrap: break-word; height: 46px;" class="form-control auto-size" placeholder="Write a comment..."></textarea>
                    </div>

                    <button class="m-t-15 btn btn-primary btn-sm waves-effect waves-button waves-float">Post</button>
                  </li>
                </ul>
              </div>
            </div>

            <div class="t-view" data-tv-type="image">
              <div class="tv-header media">
                <a href="#" class="tvh-user pull-left">
                  <img class="img-responsive" src="/resources//resources/img/profile-pics/profile-pic-2.jpg" alt="">
                </a>
                <div class="media-body p-t-5">
                  <strong class="d-block">Malinda Hollaway</strong>
                  <small class="c-gray">March 11, 2014 at 09:00</small>
                </div>

                <ul class="actions m-t-20 hidden-xs">
                  <li class="dropdown">
                    <a href="#" data-toggle="dropdown">
                      <i class="md md-more-vert"></i>
                    </a>

                    <ul class="dropdown-menu dropdown-menu-right">
                      <li>
                        <a href="#">Edit</a>
                      </li>
                      <li>
                        <a href="#">Delete</a>
                      </li>
                    </ul>
                  </li>
                </ul>
              </div>
              <div class="tv-body">

                <div class="lightbox tvb-lightbox clearfix">
                  <div data-src="media/gallery/1.jpg" class="col-sm-2 col-xs-3">
                    <div class="lightbox-item">
                      <img src="media/gallery/thumbs/1.jpg" alt="">
                    </div>
                  </div>

                  <div data-src="media/gallery/2.jpg" class="col-sm-2 col-xs-3">
                    <div class="lightbox-item">
                      <img src="media/gallery/thumbs/2.jpg" alt="">
                    </div>
                  </div>

                  <div data-src="media/gallery/3.jpg" class="col-sm-2 col-xs-3">
                    <div class="lightbox-item">
                      <img src="media/gallery/thumbs/3.jpg" alt="">
                    </div>
                  </div>

                  <div data-src="media/gallery/4.jpg" class="col-sm-2 col-xs-3">
                    <div class="lightbox-item">
                      <img src="media/gallery/thumbs/4.jpg" alt="">
                    </div>
                  </div>
                </div>

                <p>Ut condimentum magna enim, non venenatis elit interdum accumsan. In hac habitasse platea dictumst. Etiam molestie felis non mollis viverra. In ipsum lorem, fermentum vitae lectus in, accumsan malesuada neque.</p>

                <div class="clearfix"></div>

                <ul class="tvb-stats">
                  <li class="tvbs-comments">33 Comments</li>
                  <li class="tvbs-likes">983 Likes</li>
                  <li class="tvbs-views">19889 Views</li>
                </ul>

                <a class="tvc-more" href="#"><i class="md md-mode-comment"></i> View all 89 Comments</a>
              </div>

              <div class="tv-comments">
                <ul class="tvc-lists">
                  <li class="media">
                    <a href="#" class="tvh-user pull-left">
                      <img class="img-responsive" src="/resources//resources/img/profile-pics/6.jpg" alt="">
                    </a>
                    <div class="media-body">
                      <strong class="d-block">Jolla Hatkin</strong>
                      <small class="c-gray">March 30, 2014 at 05.00</small>

                      <div class="m-t-10">Donec vel metus nisl. Nam euismod neque et finibus vulputate. Integer in vestibulum orci. Phasellus ut iaculis arcu, vitae commodo justo. Ut eu feugiat lorem, quis ornare risus</div>

                    </div>
                  </li>

                  <li class="media">
                    <a href="#" class="tvh-user pull-left">
                      <img class="img-responsive" src="/resources//resources/img/profile-pics/5.jpg" alt="">
                    </a>
                    <div class="media-body">
                      <strong class="d-block">Marwell Wecker</strong>
                      <small class="c-gray">March 31, 2014 at 05.00</small>

                      <div class="m-t-10">Nulla vehicula erat nec odio dignissim, sit amet porttitor lorem auctor. Maecenas fermentum tellus ex, ac aliquet nisl malesuada id.</div>

                    </div>
                  </li>
                  <li class="p-20">
                    <div class="fg-line">
                      <textarea style="overflow: hidden; word-wrap: break-word; height: 46px;" class="form-control auto-size" placeholder="Write a comment..."></textarea>
                    </div>

                    <button class="m-t-15 btn btn-primary btn-sm waves-effect waves-button waves-float">Post</button>
                  </li>
                </ul>
              </div>
            </div>

            <div class="clearfix"></div>

            <div class="load-more">
              <a href="#"><i class="md md-refresh"></i> Load More...</a>
            </div>
          </div>
        </div>
      </div>






    </div>
  </section>
</section>

<%@include file="widgets/old-browser.jsp" %>

<!-- Javascript Libraries -->
<script src="/resources/js/jquery-2.1.1.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>

<script src="/resources/vendors/flot/jquery.flot.min.js"></script>
<script src="/resources/vendors/flot/jquery.flot.resize.min.js"></script>
<script src="/resources/vendors/flot/plugins/curvedLines.js"></script>
<script src="/resources/vendors/sparklines/jquery.sparkline.min.js"></script>
<script src="/resources/vendors/easypiechart/jquery.easypiechart.min.js"></script>

<script src="/resources/vendors/simpleWeather/jquery.simpleWeather.min.js"></script>
<script src="/resources/vendors/auto-size/jquery.autosize.min.js"></script>
<script src="/resources/vendors/nicescroll/jquery.nicescroll.min.js"></script>
<script src="/resources/vendors/waves/waves.min.js"></script>
<script src="/resources/vendors/bootstrap-growl/bootstrap-growl.min.js"></script>
<script src="/resources/vendors/sweet-alert/sweet-alert.min.js"></script>

<script src="/resources/js/functions.js"></script>
<script src="/resources/js/demo.js"></script>

<%@include file="widgets/angular-includes.jsp"%>

</body>

</html>