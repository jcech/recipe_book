require 'spec_helper'

describe Recipe do
  it { should have_many :ratings }
  it { should validate_presence_of :name }
  it { should have_and_belong_to_many :tags}
end
