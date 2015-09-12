<!DOCTYPE html>
<html lang="en" ng-app="app">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Dashboard</title>

  <%@include file="widgets/style-includes.jsp" %>

</head>

<body ng-controller="DashboardController">

<div layout="column" style="height:500px;">
  <section layout="row" flex>

    <md-sidenav class="md-sidenav-left md-whiteframe-z2" md-component-id="left">
      <md-toolbar class="md-theme-indigo">
        <h1 class="md-toolbar-tools">Menu</h1>
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
          Close Sidenav Left
        </md-button>
      </md-content>
    </md-sidenav>

    <md-content flex layout-padding class="{{$route.current.scope.theme}}">
      <div layout="column" layout-fill layout-align="top center">
        <p>Current selected<div ng-view></div><div>Current theme{{$route.current.scope.theme}}</div>
        <p>
          The right sidenav will focus on a specific child element.
        </p>
        <div>
          <md-button ng-click="toggleLeft()" class="md-primary">
            Toggle left
          </md-button>
        </div>
      </div>
      <div flex></div>
    </md-content>

    <md-sidenav class="md-sidenav-right md-whiteframe-z2" md-component-id="right">
      <md-toolbar class="md-theme-light">
        <h1 class="md-toolbar-tools">Sidenav Right</h1>
      </md-toolbar>
      <md-content ng-controller="RightCtrl" layout-padding>
        <form>
          <md-input-container>
            <label for="testInput">Test input</label>
            <input type="text" id="testInput"
                   ng-model="data" md-sidenav-focus>
          </md-input-container>
        </form>
        <md-button ng-click="close()" class="md-primary">
          Close Sidenav Right
        </md-button>
      </md-content>
    </md-sidenav>

  </section>
</div>






<%@include file="widgets/old-browser.jsp" %>

<%@include file="widgets/script-includes.jsp" %>

</body>

</html>