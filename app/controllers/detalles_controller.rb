class DetallesController < ApplicationController
  before_action :set_detalle, only: [:show, :edit, :update, :destroy]

  # GET /detalles
  # GET /detalles.json
  def index
    @detalles = Detalle.all
    if params[:factura_id].present?
      session[:factura_id] = params[:factura_id]
    end
  end

  # GET /detalles/1
  # GET /detalles/1.json
  def show
  end

  # GET /detalles/new
  def new
    @detalle = Detalle.new
  end

  # GET /detalles/1/edit
  def edit
  end

  # POST /detalles
  # POST /detalles.json
  def create 
    @detalle = Detalle.new(detalle_params)
    unless ((params[:detalle][:producto])).blank?
      @detalle.producto = (Producto.find(params[:detalle][:producto])).nombre
      @detalle.precio = (Producto.find(params[:detalle][:producto])).precio
      @detalle.factura_id = session[:factura_id]
    end 
    respond_to do |format|
      if @detalle.save
        format.html { redirect_to detalles_url }
        format.json { render :show, status: :created, location: @detalle } 
      else
        format.html { render :new }
        format.json { render json: @detalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detalles/1
  # PATCH/PUT /detalles/1.json
  def update
    respond_to do |format|
      if @detalle.update(detalle_params)
        format.html { redirect_to @detalle, notice: 'Detalle actualizado.' }
        format.json { render :show, status: :ok, location: @detalle }
      else
        format.html { render :edit }
        format.json { render json: @detalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detalles/1
  # DELETE /detalles/1.json
  def destroy
    @detalle.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Detalle eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detalle
      @detalle = Detalle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detalle_params
      params.require(:detalle).permit(:producto, :precio, :cantidad, :factura_id)
    end
end
