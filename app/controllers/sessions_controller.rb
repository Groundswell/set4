class SessionsController < Devise::SessionsController
	
	layout 'sessions'


	def create
		self.resource = warden.authenticate!( auth_options )
		
		sign_in( resource_name, resource )
		respond_with resource, :location => after_sign_in_path_for( resource )

	end

	def new
		super

	end

end
