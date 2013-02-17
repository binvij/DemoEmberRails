DemoEmber.ProductsController = Em.ArrayController.extend(
	addNew: ->
		@transitionTo "products.new"

	deleteProduct: (product)->
		product.deleteRecord()
		@get("store").commit()

	editProduct: (product)->
		editProductController = @controllerFor("products.edit")
		#console.log(editProductController)
		editProductController.set("content",product)
		editProductController.prepareEditing()
		@set "isEditing", true

	stopEditing: ->
		@set "isEditing", false
)