require 'pry'
def nyc_pigeon_organizer(data)
  hash = {}
  data.each do |cgl, cgl_value|
    cgl_value.each do |categories, names|
      names.each do |name|
        hash.store(name, {:color => [], :gender => [], :lives => []})
      end
    end
  end
  data[:color].each do |category, names|
    names.each do |name|
      hash[name][:color] << category.to_s
    end
  end
  data[:gender].each do |category, names|
    names.each do |name|
      hash[name][:gender] << category.to_s
    end
  end
  data[:lives].each do |category, names|
    names.each do |name|
      hash[name][:lives] << category.to_s
    end
  end
  hash
end
