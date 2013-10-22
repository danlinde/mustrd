require 'spec_helper'

describe Cart do
  it { should have_and_belong_to_many(:products) }
end
