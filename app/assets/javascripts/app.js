var app = angular.module('shop', ['ngResource']);

$(document).on('ready page:load', function() {
  angular.bootstrap(document.body, ['shop'])
});

app.factory('models', ['$resource', function($resource){
	var orders_model = $resource("/orders/:id.json", {id: "@id"});
	var products_model = $resource("/products/:id.json", {id: "@id"});
	var x = {
		orders: orders_model,
		products: products_model
	};
	return x
}]);

app.controller('OrdersCtrl', ['$scope', 'models', function($scope, models){
	$scope.orders = models.orders;

	$scope.addOrder = function(){
		if(!$scope.newOrder.product_id || $scope.newOrder.total === ''){return; }
		$scope.orders.push($scope.newOrder);
		$scope.newOrder = '';
	}

	$scope.deleteOrder = function(order){
		$scope.orders.splice($scope.orders.indexOf(order), 1);
	}
}]);