class Project < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validate do |project|
    project.base_image || project.errors[:name] << "Docker Image `#{project.name}:base` must exist"
  end

  def base_image
    Image.find_by('Repository' => name, 'Tag' => 'base')
  end

  def images(include_base = false)
    Image.where('Repository' => name)
  end
end
