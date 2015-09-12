<!DOCTYPE html>
<html lang="en" ng-app="app">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">


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

  <title>Home page</title>

  <%@include file="widgets/style-includes.jsp" %>

</head>

<body ng-controller="DashboardController">

< layout="column">
  <section layout="row" flex>

    <md-sidenav class="md-sidenav-left md-whiteframe-z2" md-component-id="left">
        <md-toolbar class="md-theme-indigo">
          <h1 class="md-toolbar-tools menu-back">Menu</h1>
        </md-toolbar>
        <md-content layout-padding ng-controller="LeftCtrl">
          <div>
            <a href="#soial">Social</a>
          </div>
          <div>
            <a href="#market">Market</a>
          </div>
          <div ng-view></div>
          <md-button ng-click="close()" class="md-primary">
            Close
          </md-button>
        </md-content>
      </md-sidenav>

      <md-content flex layout-padding class="{{$route.current.scope.theme}}">

        <div layout="row">
          <div flex="66" flex-sm="33">
            <md-button ng-click="toggleLeft()" class="md-primary">
              <ng-md-icon md-menu-origin icon="menu" style="fill: #000" ></ng-md-icon>
            </md-button>
          </div>
          <div flex="33" flex-sm="66">
            <ng-md-icon icon="search"></ng-md-icon>
            <input ng-model="user.name" type="text">
          </div>
        </div>

        <div flex></div>
      </md-content>
    </md-sidenav>
  </section>

  <section id="main">

    <section id="content">
      <div class="container">


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
    <%@ include file="widgets/post-new.jsp"%>
    <div class="timeline">
      <div class="t-view" data-tv-type="text">
        <div class="tv-header media">
          <a href="#" class="tvh-user pull-left">
            <img class="img-responsive" src="/resources/img/profile-pics/profile-pic-2.jpg" alt="">
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
                <img class="img-responsive" src="/resources/img/profile-pics/1.jpg" alt="">
              </a>
              <div class="media-body">
                <strong class="d-block">David Peiterson</strong>
                <small class="c-gray">April 23, 2014 at 05:10</small>

                <div class="m-t-10">Maecenas fermentum tellus ex, ac aliquet nisl malesuada id.</div>

              </div>
            </li>

            <li class="media">
              <a href="#" class="tvh-user pull-left">
                <img class="img-responsive" src="/resources/img/profile-pics/2.jpg" alt="">
              </a>
              <div class="media-body">
                <strong class="d-block">Wernall Parnell</strong>
                <small class="c-gray">April 22, 2014 at 13:00</small>

                <div class="m-t-10">Nulla vehicula erat nec odio dignissim, sit amet porttitor lorem auctor. Maecenas fermentum tellus ex, ac aliquet nisl malesuada id.</div>

              </div>
            </li>

            <li class="media">
              <a href="#" class="tvh-user pull-left">
                <img class="img-responsive" src="/resources/img/profile-pics/3.jpg" alt="">
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
            <img class="img-responsive" src="/resources/img/profile-pics/profile-pic-2.jpg" alt="">
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
            <div data-src="/resources/img/headers/sm/4.png">
              <div class="lightbox-item pull-left">
                <img src="/resources/img/headers/sm/4.png" alt="">
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
                <img class="img-responsive" src="/resources/img/profile-pics/1.jpg" alt="">
              </a>
              <div class="media-body">
                <strong class="d-block">Jolla Hatkin</strong>
                <small class="c-gray">April 23, 2014 at 05.00</small>

                <div class="m-t-10">Donec vel metus nisl. Nam euismod neque et finibus vulputate. Integer in vestibulum orci. Phasellus ut iaculis arcu, vitae commodo justo. Ut eu feugiat lorem, quis ornare risus</div>

              </div>
            </li>

            <li class="media">
              <a href="#" class="tvh-user pull-left">
                <img class="img-responsive" src="/resources/img/profile-pics/2.jpg" alt="">
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
            <img class="img-responsive" src="/resources/img/profile-pics/profile-pic-2.jpg" alt="">
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
                <img class="img-responsive" src="/resources/img/profile-pics/6.jpg" alt="">
              </a>
              <div class="media-body">
                <strong class="d-block">Jolla Hatkin</strong>
                <small class="c-gray">April 23, 2014 at 05.00</small>

                <div class="m-t-10">Donec vel metus nisl. Nam euismod neque et finibus vulputate. Integer in vestibulum orci. Phasellus ut iaculis arcu, vitae commodo justo. Ut eu feugiat lorem, quis ornare risus</div>

              </div>
            </li>

            <li class="media">
              <a href="#" class="tvh-user pull-left">
                <img class="img-responsive" src="/resources/img/profile-pics/5.jpg" alt="">
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
            <img class="img-responsive" src="/resources/img/profile-pics/profile-pic-2.jpg" alt="">
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
                <img class="img-responsive" src="/resources/img/profile-pics/6.jpg" alt="">
              </a>
              <div class="media-body">
                <strong class="d-block">Jolla Hatkin</strong>
                <small class="c-gray">March 30, 2014 at 05.00</small>

                <div class="m-t-10">Donec vel metus nisl. Nam euismod neque et finibus vulputate. Integer in vestibulum orci. Phasellus ut iaculis arcu, vitae commodo justo. Ut eu feugiat lorem, quis ornare risus</div>

              </div>
            </li>

            <li class="media">
              <a href="#" class="tvh-user pull-left">
                <img class="img-responsive" src="/resources/img/profile-pics/5.jpg" alt="">
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

</div>






<%@include file="widgets/old-browser.jsp" %>

<%@include file="widgets/script-includes.jsp" %>
<script src="//cdnjs.cloudflare.com/ajax/libs/angular-material-icons/0.5.0/angular-material-icons.min.js"></script>

<script src="//cdnjs.cloudflare.com/ajax/libs/SVG-Morpheus/0.1.8/svg-morpheus.js"></script>

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


<script src="/resources/js/init-effects.js"></script>


<%@include file="widgets/script-includes.jsp"%>
<script src='resources/ng/ctrl/page.js'></script>
<script src='resources/ng/ctrl/market.js'></script>
<script src='resources/ng/ctrl/social.js'></script>

</body>

</html>