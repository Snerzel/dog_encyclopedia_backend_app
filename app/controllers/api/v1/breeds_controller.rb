class Api::V1::BreedsController < ApplicationController

    def index
       breeds = Breed.all
       #render json: breeds 
       render json: BreedSerializer.new(breeds)
    end

    def create
        breed = Breed.new(breed_params)
        if breed.save!
            render json: breed, status: :accepted
        else
            render json: {errors: breed.errors.full_messages}, status: :unprocessible_entity
        end
    end


    private

    def breed_params
        params.require(:breed).permit.(:name, :info, :image_url, :group_id)
    end
end
