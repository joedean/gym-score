class AthletesEventsMeetsController < ApplicationController
  before_action :set_athletes_events_meet, only: [:show, :edit, :update, :destroy]

  # GET /athletes_events_meets
  # GET /athletes_events_meets.json
  def index
    @athletes_events_meets = AthletesEventsMeet.new params
  end

  # GET /athletes_events_meets/1
  # GET /athletes_events_meets/1.json
  def show
  end

  # GET /athletes_events_meets/new
  def new
    @athletes_events_meet = AthletesEventsMeet.new
  end

  # GET /athletes_events_meets/1/edit
  def edit
  end

  # POST /athletes_events_meets
  # POST /athletes_events_meets.json
  def create
    @athletes_events_meet = AthletesEventsMeet.new(athletes_events_meet_params)

    respond_to do |format|
      if @athletes_events_meet.save
        format.html { redirect_to @athletes_events_meet, notice: 'Athletes Events Meet was successfully created.' }
        format.json { render :show, status: :created, location: @athletes_events_meet }
      else
        format.html { render :new }
        format.json { render json: @athletes_events_meet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /athletes_events_meets/1
  # PATCH/PUT /athletes_events_meets/1.json
  def update
    respond_to do |format|
      if @athletes_events_meet.update(athletes_events_meet_params)
        format.html { redirect_to @athletes_events_meet, notice: 'Event was successfully updated.' }
        format.json { respond_with_bip @athletes_events_meet }
      else
        format.html { render :edit }
        format.json { respond_with_bip @athletes_events_meet }
      end
    end
  end

  # DELETE /athletes_events_meets/1
  # DELETE /athletes_events_meets/1.json
  def destroy
    @athletes_events_meet.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Athletes Events Meet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_athletes_events_meet
      @athletes_events_meet = AthletesEventsMeet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def athletes_events_meet_params
      params.require(:athletes_events_meet).permit(:meet_id, :athlete_id, :event_id, :score, :place)
    end
end
