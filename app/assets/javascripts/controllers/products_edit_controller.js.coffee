DemoEmber.ProductsEditController = Ember.ObjectController.extend(
	prepareEditing: ->
		#console.log("ProductsEditController prepareEditing()")
		#get the product selected and sent by products controller
		editedProduct = @get('content')
		#get the local transaction
		trans = @get('store').transaction()
		#add the edited product to this transaction
		trans.add(editedProduct)
		#store the trans var to local transaction object
		@transaction = trans

	save: ->
		#console.log("inside ProductsEditController save()")
		#commit the changes to the store
		@transaction.commit()
		#nullify the local transaction
		@transaction = null
		#hide the edit form
		@controllerFor("products").stopEditing()


	)