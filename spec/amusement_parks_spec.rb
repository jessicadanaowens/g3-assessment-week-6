require 'spec_helper'

describe Amusement_parks do
  let(:parks) { Amusement_parks.new }

describe "#id_hash" do
  it "returns a hash where the id points to a hash that contains the id" do

    parksarray = [
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
      }
    ]

    expect(parks.id_hash(parksarray)).to eq({
                                  546 => {
                                    :id=>546,
                                    :name=>"Kalahari Resorts",
                                    :city=>"Wisconsin Dells",
                                    :state=>"Wisconsin",
                                    :country=>"United States"
                                  },
                                  547 => {
                                    :id=>547,
                                    :name=>"Little Amerricka",
                                    :city=>"Marshall",
                                    :state=>"Wisconsin",
                                    :country=>"United States"
                                  }
                                })

  end
end

  describe "#country_hash" do
    it "returns a hash where the country is the key and it points to a hash that contains it" do

      parksarray = [
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

      expect(parks.country_hash(parksarray)).to eq({
                                         "Canada" => [
                                           {
                                             :id=>2,
                                             :name=>"Calaway Park",
                                             :city=>"Calgary",
                                             :state=>"Alberta",
                                             :country=>"Canada"
                                           }
                                         ],
                                         "United States" => [
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
                                           }
                                         ]
                                       })
    end
  end
end

