class UsuarioController < ApplicationController
	def new
	  @usuario = Usuario.new
	end

	def create
	  @usuario = Usuario.new(usuario_params)

	  if @usuario.save
	    flash[:notice] = "Successfully created User." 
	    redirect_to root_path
	  else
	    render :action => 'new'
	  end
	end

	private

	def usuario_params
    params.require(:usuario).permit(:name, :apellido, :email, :password, :role_id, :encrypted_password)
  end
end
