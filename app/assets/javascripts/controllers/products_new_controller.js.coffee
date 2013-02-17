DemoEmber.ProductsNewController = Ember.Controller.extend(
			
	#save record
	#clear trans
	save: -> 
		@transaction = @get('store').transaction()
		@transaction.createRecord(DemoEmber.Product, {name: @get('name'), description: @get('description')})
		@transaction.commit()
		@transaction = null
		@set("name", null)
		@set("description",null)
		@transitionTo("products")
	cancel: ->
		@transitionTo("products")		
	)