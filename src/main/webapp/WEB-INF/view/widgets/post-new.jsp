<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- new post  -->
<div id="post-new" ng-controller="newPostController" ng-init="">
  <div class="pn-header">
    <h2>Creta New Post</h2>
    <small>text, images, videos, soungs, alboums</small>
    <ul class="actions actions-alt">
      <li class="dropdown">
        <a href="#" data-toggle="dropdown">
          <i class="md md-more-vert"></i>
        </a>

        <ul class="dropdown-menu dropdown-menu-right">
          <li>
            <a href="#">Refresh</a>
          </li>
          <li>
            <a href="#">Manage Widgets</a>
          </li>
          <li>
            <a href="#">Widgets Settings</a>
          </li>
        </ul>
      </li>
    </ul>
  </div>

  <div class="clearfix"></div>

  <div class="pn-body" ng-class="{pn-body-normal : isToggled}">
    <div id="add-pn-item" ng-class="{toggled : isToggled}" ng-click="toggle()">
      <i class="add-new-item md md-add"></i>

      <div class="add-pn-body">
        <textarea placeholder="What's on your mind..."></textarea>

        <div class="add-pn-actions">
          <a href="#" data-pn-action="dismiss"><i class="md md-close"></i></a>
          <a href="#" data-pn-action="save"><i class="md md-check"></i></a>
        </div>
      </div>
    </div>

  </div>
</div>