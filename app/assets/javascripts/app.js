var app = angular.module('shop', []);

$(document).on('ready page:load', function() {
  angular.bootstrap(document.body, ['shop'])
});

app.factory('models', [function(){
	var x = {
		orders: []
	};
	return x
}]);

app.controller('OrdersCtrl', ['$scope', function($scope){
	$scope.orders = [
		{id: 1, total: 24, product_id: 1, user_id: 1},
		{id: 2, total: 78, product_id: 2},
		{id: 3, total: 3, product_id: 3, user_id: 1},
		{id: 4, total: 3, product_id: 3, user_id: 1},
		{id: 5, total: 3, product_id: 3, user_id: 1}
	]

	$scope.addOrder = function(){
		if(!$scope.newOrder.product_id || $scope.newOrder.total === ''){return; }
		$scope.orders.push($scope.newOrder);
		$scope.newOrder = '';
	}

	$scope.deleteOrder = function(order){
		$scope.orders.splice($scope.orders.indexOf(order), 1);
	}
}]);