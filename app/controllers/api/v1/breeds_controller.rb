class Api::V1::BreedsController < ApplicationController

    def index
       breeds = Breed.all
       #render json: breeds 
       render json: BreedSerializer.new(breeds)
    end

    def create
        breed = Breed.new(breed_params)
        if breed.save
            render json: BreedSerializer.new(breed), status: :accepted
        else
            render json: {errors: breed.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def update
       breed = Breed.find(params[:id])
       breed.update(breed_params)
        render json: BreedSerializer.new(breed)
    end


    def destroy
        breed = Breed.find(params[:id])
        breed.destroy
    end

    private

    def breed_params
        params.require(:breed).permit(:name, :image_url, :info, :likes, :group_id)
    end
end
