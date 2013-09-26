class Image < Docker::Image
  class << self
    def where(finders = {})
      all.select do |image|
        finders.each_pair do |attribute, test|
          attribute == 'Id' ? image.id == test : image.info[attribute] == test
        end
      end
    end

    def find(id)
      where('Id' => id).first
    end
  end

  alias_method :show, :json

  def name
    [info['Repository'], info['Tag']].compact.join(':')
  end
end