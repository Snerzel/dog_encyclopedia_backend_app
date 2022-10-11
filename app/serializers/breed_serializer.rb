class BreedSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :info, :image_url, :likes, :group_id, :group
end
