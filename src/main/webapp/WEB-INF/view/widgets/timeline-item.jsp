<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/ng-template" id="/timeline/item.html" ng-model="data">

<div class="t-view" data-tv-type="{{data.post.type}}">
  <div class="tv-header media">
    <a href="#" class="tvh-user pull-left">
      <img class="img-responsive" src="{{data.profile.image}}" alt="{{data.profile.name}}">
    </a>
    <div class="media-body p-t-5">
      <strong class="d-block" ng-bind="data.profile.name"></strong>
      <small class="c-gray" ng-bind="data.post.date"></small>
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
    {{data.post.content}}

    <div class="clearfix"></div>

    <ul class="tvb-stats">
      <li class="tvbs-comments" ng-show="data.statistics.comments > 0">{{data.statistics.comments}} Comments</li>
      <li class="tvbs-likes"    ng-show="data.statistics.likes > 0">{{data.statistics.likes}} Likes</li>
      <li class="tvbs-views"    ng-show="data.statistics.views > 0">{{data.statistics.views}} Views</li>
    </ul>

    <a class="tvc-more" href="#" ng-show="data.statistics.comments > 5"><i class="md md-mode-comment"></i> View all {{data.statistics.comments}} Comments</a>
  </div>

  <ng-include src="'/timeline/comments.html'" ng-model="data.comments">
  </ng-include>

</div>
</script>
