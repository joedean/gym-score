class AthletesMeetsController < ApplicationController
  # PATCH/PUT /athletes_meets/1
  # PATCH/PUT /athletes_meets/1.json
  def update
    @athletes_meet = AthletesMeet.find(params[:id])
    respond_to do |format|
      if @athletes_meet.update(athletes_meet_params)
        format.html { redirect_to @athletes_meet, notice: 'Athletes Meet was successfully updated.' }
        format.json { respond_with_bip @athletes_meet }
      else
        format.html { render :edit }
        format.json { respond_with_bip @athletes_meet }
      end
    end
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def athletes_meet_params
    params.require(:athletes_meet).permit(:athlete_id, :event_id, :place)
  end
end
