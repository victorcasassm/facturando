class FacturasController < ApplicationController
  before_action :set_factura, only: [:show, :edit, :update, :destroy]

  # GET /facturas
  # GET /facturas.json
  def index
    @facturas = Factura.all
  end

  # GET /facturas/1
  # GET /facturas/1.json
  def show
  end

  # GET /facturas/new
  def new
    @factura = Factura.new
  end

  # GET /facturas/1/edit
  def edit
  end

  # POST /facturas
  # POST /facturas.json
  def create
    @factura = Factura.new(factura_params)
    respond_to do |format|
      if @factura.save
        session[:factura_id] = @factura.id
        format.html { redirect_to new_detalle_url }
        format.json { render :show, status: :created, location: @factura }
      else
        format.html { render :new }
        format.json { render json: @factura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /facturas/1
  # PATCH/PUT /facturas/1.json
  def update
    respond_to do |format|
      if @factura.update(factura_params)
        format.html { redirect_to @factura, notice: 'Factura was successfully updated.' }
        format.json { render :show, status: :ok, location: @factura }
      else
        format.html { render :edit }
        format.json { render json: @factura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facturas/1
  # DELETE /facturas/1.json
  def destroy
    begin
    @factura.destroy
      respond_to do |format|
      format.html { redirect_to facturas_url, notice: 'Factura eliminada correctamente.' }
      format.json { head :no_content }
      end
    rescue
      respond_to do |format|
        format.html { redirect_to facturas_url, notice: 'Factura imposible de eliminar mientras tenga detalles.' }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_factura
      @factura = Factura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def factura_params
      params.require(:factura).permit(:fecha, :cliente_id)
    end
end
