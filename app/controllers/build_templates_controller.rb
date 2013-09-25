class BuildTemplatesController < ApplicationController
  before_action :set_build_template, only: [:show, :edit, :update, :destroy]

  # GET /build_templates
  # GET /build_templates.json
  def index
    @build_templates = BuildTemplate.all
  end

  # GET /build_templates/1
  # GET /build_templates/1.json
  def show
  end

  # GET /build_templates/new
  def new
    @build_template = BuildTemplate.new
  end

  # GET /build_templates/1/edit
  def edit
  end

  # POST /build_templates
  # POST /build_templates.json
  def create
    @build_template = BuildTemplate.new(build_template_params)

    respond_to do |format|
      if @build_template.save
        format.html { redirect_to @build_template, notice: 'Build template was successfully created.' }
        format.json { render action: 'show', status: :created, location: @build_template }
      else
        format.html { render action: 'new' }
        format.json { render json: @build_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /build_templates/1
  # PATCH/PUT /build_templates/1.json
  def update
    respond_to do |format|
      if @build_template.update(build_template_params)
        format.html { redirect_to @build_template, notice: 'Build template was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @build_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /build_templates/1
  # DELETE /build_templates/1.json
  def destroy
    @build_template.destroy
    respond_to do |format|
      format.html { redirect_to build_templates_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_build_template
      @build_template = BuildTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def build_template_params
      params.require(:build_template).permit(:name, :from, :body, :cmd)
    end
end
