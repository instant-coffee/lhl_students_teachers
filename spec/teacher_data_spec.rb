require 'rspec'
require_relative '../config'
require_relative '../lib/teachers_importer'

describe Teacher, "Sample data" do

  before :each do
    TeachersImporter.new.import
  end

  it "should contain one of the teachers from the CSV" do
    Teacher.where("name = ? AND address = ?", "Bruce Wayne", "Wayne Manor").count.should be >= 1
  end

end
