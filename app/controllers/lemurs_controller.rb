class LemursController < ApplicationController
  before_filter :authenticate_user!
  # GET /lemurs
  # GET /lemurs.json
  def index
    @lemurs = Lemur.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lemurs }
    end
  end

  # GET /lemurs/1
  # GET /lemurs/1.json
  def show
    @lemur = Lemur.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lemur }
    end
  end

  # GET /lemurs/new
  # GET /lemurs/new.json
  def new
    @lemur = Lemur.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lemur }
    end
  end

  # GET /lemurs/1/edit
  def edit
    @lemur = Lemur.find(params[:id])
  end

  # POST /lemurs
  # POST /lemurs.json
  def create
    @lemur = Lemur.new(params[:lemur])

    respond_to do |format|
      if @lemur.save
        format.html { redirect_to @lemur, notice: 'Lemur was successfully created.' }
        format.json { render json: @lemur, status: :created, location: @lemur }
      else
        format.html { render action: "new" }
        format.json { render json: @lemur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lemurs/1
  # PUT /lemurs/1.json
  def update
    @lemur = Lemur.find(params[:id])

    respond_to do |format|
      if @lemur.update_attributes(params[:lemur])
        format.html { redirect_to @lemur, notice: 'Lemur was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lemur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lemurs/1
  # DELETE /lemurs/1.json
  def destroy
    @lemur = Lemur.find(params[:id])
    @lemur.destroy

    respond_to do |format|
      format.html { redirect_to lemurs_url }
      format.json { head :no_content }
    end
  end
end
