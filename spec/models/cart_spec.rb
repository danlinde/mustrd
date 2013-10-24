require 'spec_helper'

describe Cart do
	it { should have_and_belong_to_many(:products)}

	it 'should not have a list of items if empty' do
		cart = Cart.create
		expect(cart.items.empty?).to be_true
	end

end
