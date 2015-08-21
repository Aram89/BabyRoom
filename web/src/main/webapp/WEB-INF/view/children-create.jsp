<!DOCTYPE html>
<html lang="en" ng-app="app">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Baby Room</title>

  <%@include file="widgets/style-includes.jsp" %>
  <link href="/resources/css/style.css" rel="stylesheet">

</head>

<body ng-controller="childController" class="form-part">
<!--<img src="/resources/img/baby-room-back.jpg"/>-->
  <div layout layout-align="center center">
    <div class="form-inner form-create">
    <form name="childDataForm" novalidate ng-submit="saveChildData()">
      <md-input-container>
        <label>First name</label>
        <input required minlength="2" maxlength="50" name="firstName" ng-model="childData.firstName" />
        <div ng-messages="childDataBlock.showWarnings && childDataForm.firstName.$error">
          <div ng-message="required">First Name required</div>
          <div ng-message="minlength">Name must contain at least 2 symbols</div>
          <div ng-message="maxlength">Name must contain maximum 50 symbols</div>
        </div>
      </md-input-container>
      <md-input-container>
        <label>Last name</label>
        <input required maxlength="50" minlength="2" name="lastName" ng-model="childData.lastName" />
        <div ng-messages="childDataBlock.showWarnings && childDataForm.lastName.$error">
          <div ng-message="required">Last name is  required</div>
          <div ng-message="minlength">Last name must contain at least 2 symbols</div>
          <div ng-message="maxlength">Last name must contain at maximum 50 symbols</div>
        </div>
      </md-input-container>
      <md-radio-group required name="gender" ng-model="childData.gender">
        <md-radio-button value="male">Male</md-radio-button>
        <md-radio-button value="female">Female</md-radio-button>
      </md-radio-group>

      <md-input-container>
        <input required maxlength="50" minlength="2" is-open="calendar.opened" max-date="calendar.maxDate" min-date="calendar.minDate" datepicker-popup ng-model="childData.birthday"/>
          <span class="input-group-btn">
          <button type="button" class="btn btn-default" ng-click="calendar.open($event)"><i class="glyphicon glyphicon-calendar"></i></button>
        </span>
      </md-input-container>
      <md-button class="md-raised md-primary btn-blue"
                 ng-disabled="childDataBlock.showWarnings && childDataForm.$invalid">
        Save
      </md-button>
    </form>
  </div>
</div>
<%@include file="widgets/old-browser.jsp" %>

<%@include file="widgets/script-includes.jsp" %>

</body>

</html>