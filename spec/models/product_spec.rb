require 'spec_helper'

describe Product do
  it { should have_and_belong_to_many(:carts) }
end
