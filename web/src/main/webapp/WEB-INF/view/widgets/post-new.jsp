<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- new post  -->
<div id="post-new" ng-controller="newPostController" ng-init="init()">
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

  <div class="pn-body" ng-class="{ 'pn-body-normal' : opened}">
    <div id="add-pn-item" ng-class="{'toggled' : opened}" >
      <i class="add-new-item md md-add" ng-click="open()"></i>

      <div class="add-pn-body">
        <textarea id="post_content" ng-model="post.content" placeholder="What's on your mind..."  ng-focus="focus()" ng-blur="blur()"></textarea>

        <div class="add-pn-actions">
          <a class="pn-action-dismiss" ng-click="dismiss()"><i class="md md-close"></i></a>
          <a class="pn-action-save"    ng-click="save()"><i class="md md-check"></i></a>
        </div>
      </div>
    </div>

  </div>
</div>