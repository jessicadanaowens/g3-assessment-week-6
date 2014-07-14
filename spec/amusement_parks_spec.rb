require 'spec_helper'
require 'app'

describe Amusement_parks do
  let(:parks) { Amusement_parks.new }

describe "#id_hash" do
  it "returns a hash where the id points to a hash of park information" do
    id_hash = parks.id_hash

    expect(id_hash.length).to eq(2)
    expect(small_dogs.first).to include(name: "Yapper")
    expect(small_dogs.last).to include(name: "Trixie")
  end
end