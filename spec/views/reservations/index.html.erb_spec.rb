# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'reservations/index', type: :view do
  before(:each) do
    assign(:reservations, [
             Reservation.create!(
               user_id: 2,
               hotel_id: 3,
               room_id: 4
             ),
             Reservation.create!(
               user_id: 2,
               hotel_id: 3,
               room_id: 4
             )
           ])
  end

  it 'renders a list of reservations' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
  end
end
