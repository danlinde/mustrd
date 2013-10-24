require 'spec_helper'

     describe 'an order confirmation email' do
          it 'is sent when an order is created' do
               expect {Order.create(number_of_items: 3)}.to change {emails.count}.by 1
          end

          it ' should have the subject "Order Confirmation"' do
               Order.create(number_of_items: 3)               
               expect(emails.last.subject).to eq "Order Confirmation"
          end
          
          it 'should include the number of items ordered' do
               Order.create(number_of_items: 3)               
               expect(emails.last.body).to match /3 items/
          end
     end

