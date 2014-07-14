class Amusement_parks

  def initialize

    @amusement_parks=
    [
    {
      :id=>546,
      :name=>"Kalahari Resorts",
      :city=>"Wisconsin Dells",
      :state=>"Wisconsin",
      :country=>"United States"
    },
    {
      :id=>547,
      :name=>"Little Amerricka",
      :city=>"Marshall",
      :state=>"Wisconsin",
      :country=>"United States"
    },
    {
      :id=>2,
      :name=>"Calaway Park",
      :city=>"Calgary",
      :state=>"Alberta",
      :country=>"Canada"
    }
  ]

  end

  def id_hash(id)
    park = @amusement_parks.each { |hash| hash[:id] = id}

    id => park
    end

  end

  def name_lengths(dogs)

  end

  def reverse_dog_names(dogs)

  end

end