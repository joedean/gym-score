class AthletesMeetsController < ApplicationController
  # PATCH/PUT /athletes_meets/1
  # PATCH/PUT /athletes_meets/1.json
  def update
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
end
