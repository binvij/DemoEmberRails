DemoEmber.ProductsRoute = Ember.Route.extend({
	setupController: function(controller,product) {
   		 controller.set('content', DemoEmber.Product.find());
   		 controller.set('title', "Products List");
  }
});
