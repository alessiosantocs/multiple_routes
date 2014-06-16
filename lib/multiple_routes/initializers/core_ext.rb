class ActionDispatch::Routing::Mapper
	# Use this method to add routes from separate files
	def draw(routes_name)
		instance_eval(File.read(Rails.root.join("config/routes/#{routes_name}.rb")))
	end
end