# PlanetController ilustra el uso de *RDoc*. La documentación de un proyecto en
# genera en el directorio *proy/doc* en formato Web con
#      $proy> rake doc:app
#
# == Algunos comandos de formateo
#
# Tal y como muestra el subitulo anterior, este se define empezando la 
# línea con ==. En los títulos debe empezar por =.
#
# Un [ ... ] seguido de texto define una lista titulada, como aquí
# [Clases, Módulos o Métodos] Se documentan con comentarios justo encima de sus definición, como aquí.
#
# Un * o - definen las entradas de una lista itemizada
# * Un URL se define así email[mailto:pepe@ejemplo.com] 
# * o así {Pepe Rubio}[mailto:pepe@ejemplo.com]
#
# Un número o letra seguido de punto genera una lista númerada
# 1. + permite generar *negrita*, igual que <b>con HTML</b>
# 2. _ permite generar _cursiva_, igual que <em>con HTML</em>
# 3. * permite generar letra de +teletipo+, igual que <tt> con HTML</tt>
#
class PlanetController < ApplicationController
  
  # GET /sites /search
  def search
	@sites = Site.where("name like ? OR description like ?", "%#{params[:q]}%", "%#{params[:q]}%")
	@trips = Trip.where("name like ? OR description like ?", "%#{params[:q]}%", "%#{params[:q]}%")  
  end
  
  # Método que define una acción vacía del controlador
  def index
  end
  # Método que define una acción vacía del controlador
  def contact
  end
  # Método que define una acción vacía del controlador
  def author
  end
  # Método que define una acción vacía del controlador
  def ejemplo
  end
  
  # Método para definir la acción que nos permite parsear json de la API de googlemaps
  # +No renderiza el layout+
   def jsonp
  	render :layout => false
  end
    
end
