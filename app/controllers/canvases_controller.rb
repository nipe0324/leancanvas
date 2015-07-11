class CanvasesController < ApplicationController
  before_action :set_canvas, only: [:show, :edit, :update, :destroy]

  # GET /canvases
  def index
    @canvases = current_user.canvases.order(:created_at)
  end

  # GET /canvases/1
  def show
  end

  # GET /canvases/new
  def new
    @canvas = current_user.canvases.build
  end

  # GET /canvases/1/edit
  def edit
  end

  # POST /canvases
  def create
    @canvas = current_user.canvases.build(canvas_params)

    if @canvas.save
      redirect_to @canvas, notice: 'Canvas was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /canvases/1
  def update
    if @canvas.update(canvas_params)
      redirect_to @canvas, notice: 'Canvas was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /canvases/1
  def destroy
    @canvas.destroy
    redirect_to canvases_url, notice: 'Canvas was successfully destroyed.'
  end

  private
    def set_canvas
      @canvas = Canvas.find(params[:id])
    end

    def canvas_params
      params.require(:canvas).permit(:name, :problem, :solution, :key_metrics, :uvp, :unfair_advantage, :channels, :customer_segments, :cost_structure, :revenue_streams)
    end
end
