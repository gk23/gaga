class ZhihusController < ApplicationController
  # GET /zhihus
  # GET /zhihus.json
  def index
    @zhihus = Zhihu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @zhihus }
    end
  end

  # GET /zhihus/1
  # GET /zhihus/1.json
  def show
    @zhihu = Zhihu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @zhihu }
    end
  end

  # GET /zhihus/new
  # GET /zhihus/new.json
  def new
    @zhihu = Zhihu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @zhihu }
    end
  end

  # GET /zhihus/1/edit
  def edit
    @zhihu = Zhihu.find(params[:id])
  end

  # POST /zhihus
  # POST /zhihus.json
  def create
    @zhihu = Zhihu.new(params[:zhihu])

    respond_to do |format|
      if @zhihu.save
        format.html { redirect_to @zhihu, notice: 'Zhihu was successfully created.' }
        format.json { render json: @zhihu, status: :created, location: @zhihu }
      else
        format.html { render action: "new" }
        format.json { render json: @zhihu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /zhihus/1
  # PUT /zhihus/1.json
  def update
    @zhihu = Zhihu.find(params[:id])

    respond_to do |format|
      if @zhihu.update_attributes(params[:zhihu])
        format.html { redirect_to @zhihu, notice: 'Zhihu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @zhihu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zhihus/1
  # DELETE /zhihus/1.json
  def destroy
    @zhihu = Zhihu.find(params[:id])
    @zhihu.destroy

    respond_to do |format|
      format.html { redirect_to zhihus_url }
      format.json { head :no_content }
    end
  end
end
