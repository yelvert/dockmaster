class Image < Docker::Image
  class << self
    def where(finders = {})
      all.select do |image|
        finders.keys.all? do |attribute|
          attribute == 'Id' ? image.id == finders[attribute] : image.info[attribute] == finders[attribute]
        end
      end
    end

    def find(id)
      where('Id' => id).first
    end

    def find_by(finders = {})
      where(finders).first
    end
  end

  alias_method :show, :json

  def name
    [info['Repository'], info['Tag']].compact.join(':')
  end
  
  ['Repository', 'Tag', 'Created', 'Size', 'VirtualSize'].each do |attribute|
    define_method attribute.underscore.to_sym do
      info[attribute]
    end
  end
end