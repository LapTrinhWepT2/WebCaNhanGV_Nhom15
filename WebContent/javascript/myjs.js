$(document).ready(function() {
    $("div.bhoechie-tab-menu>div.list-group>a").click(function(e) {
        e.preventDefault();
        $(this).siblings('a.active').removeClass("active");
        $(this).addClass("active");
        var index = $(this).index();
        $("div.bhoechie-tab>div.bhoechie-tab-content").removeClass("active");
        $("div.bhoechie-tab>div.bhoechie-tab-content").eq(index).addClass("active");
    });
});

var demoApp = angular.module('demoApp',[])
 .controller( "RegisterCtrl", ['$scope', function($scope) {
 $scope.success = false;
 $scope.register = function() {
 $scope.success=true;
 }
 }]);

 var demoApp = angular.module('demoApp2',[])
 .controller( "CommentCtrl", ['$scope', function($scope) {
 $scope.success = false;
 $scope.comment = function() {
 $scope.success=true;
 }
 }]);