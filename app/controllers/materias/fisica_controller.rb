class Materias::FisicaController < ApplicationController
  before_action :set_breadcrumbs
  before_action :validate_page, only: :show

  def index
    @title = 'Fisica'
  end

  def show
    @page = params[:id]
    @breadcrumbs.push @page.titleize
  end

  private
  def validate_page
    redirect_to(root_path) unless %w{amplitud frecuencia longitud velocidad espectro_electrico problemas_de_aplicacion propiedades_de_las_ondas bibliografia contacto }.include?(params[:id])
  end

  def set_breadcrumbs
    @breadcrumbs = ["Home", "Materias", "Fisica"]
  end
end
