module currentOutfit
	private 

    def set_outfit
      @outfit =  Outfit.find(session[:outfit_id])
      rescue 
        @outfit = Outfit.create
        session[:outfit_id] = @outfit.id
    end
end