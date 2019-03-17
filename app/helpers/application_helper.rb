module ApplicationHelper
	def resource_name
		:user
	end
	def resource
		@resource ||= current_user
	end
	def device_mapping
		@devise_mapping ||= Devise.mapping[:user]
	end

	def link_to_add_fields(name,  f, association)
		partial = "address_field"
		option = {}
		html_options = {}
		locals = {}

			# new_object = f.object.class.reflect_on_associtions(association).klass.new
  	new_object = f.object.addresses.build
  	fields = f.fields_for(association,new_object,child_index: 'new_record') do |address|
  		render(partial, locals.merge!(address: address))
  end

  html_options['data-form-prepend'] = raw CGI::escapeHTML(fields)
  html_options['class'] = 'add-new-address'
  html_options['href'] = 'javascript://'

  content_tag(:a, name, html_options)
	end
end
