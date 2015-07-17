<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/ng-template" id="/timeline/comments.html" ng-model="comments">
<div class="tv-comments">
  <ul class="tvc-lists">

    <li class="media" ng-repeat="comment in comments">
      <ng-include src="'/timeline/comment-item.html'" ng-model="comment">
      </ng-include>
    </li>

    <li class="p-20">
      <div class="fg-line">
        <textarea style="overflow: hidden; word-wrap: break-word; height: 46px;" class="form-control auto-size" placeholder="Write a comment..."></textarea>
      </div>

      <button class="m-t-15 btn btn-primary btn-sm waves-effect waves-button waves-float">Post</button>
    </li>
  </ul>
</div>
</script>

<script type="text/ng-template" id="/timeline/comment-item.html" ng-model="comment">
  <a href="#" class="tvh-user pull-left">
    <img class="img-responsive" src="{{comment.profile.image}}" alt="{{comment.profile.name}}">
  </a>
  <div class="media-body">
    <strong class="d-block" ng-bind="comment.profile.name"></strong>
    <small class="c-gray" ng-bind="comment.date"></small>

    <div class="m-t-10" ng-bind="comment.content"></div>

  </div>
</script>