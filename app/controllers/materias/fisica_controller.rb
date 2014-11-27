class Materias::FisicaController < ApplicationController
  before_action :set_breadcrumbs
  before_action :validate_page, only: :show

  def index
    @title = 'FISICA INDEX'
  end

  def show
    @page = params[:id]
    @breadcrumbs.push @page.titleize
  end

  private
  def validate_page
    redirect_to(root_path) unless %w{amplitud frecuencia periodo longitud velocidad}.include?(params[:id])
  end

  def set_breadcrumbs
    @breadcrumbs = ["Home", "Materias", "Fisica"]
  end
end
