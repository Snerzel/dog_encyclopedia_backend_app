class BreedSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :info, :image_url, :group_id, :group
end
