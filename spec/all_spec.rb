require 'rails_helper'

RSpec.describe Person, :type => :model do
    it "does not allow person's duplicated data" do
        p = Person.new
        p.name="a"
        p.save

        p2 = Person.new
        p2.name="a"
        p2.save

        expect(Person.count).to be(1)
    end

    it "does not allow empty person's data" do
        p2 = Person.new
        p2.name=""
        p2.save

        expect(Person.count).to be(0)
    end

    it "save a person with valid data" do
        p2 = Person.new
        p2.name="test"
        p2.save

        expect(Person.count).to be(1)
    end


end