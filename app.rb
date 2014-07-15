class Amusement_parks

  def id_hash(parks)
    new_hash = {}

    parks.each_with_index do |hash, index|
      new_hash[hash[:id]] = parks[index]
    end
    new_hash
  end

  def country_hash(parks)
    parks.group_by do |hash|
      hash[:country]
    end
  end

end



