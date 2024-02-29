# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'reservations/new', type: :view do
  before(:each) do
    assign(:reservation, Reservation.new(
                           user_id: 1,
                           hotel_id: 1,
                           room_id: 1
                         ))
  end

  it 'renders new reservation form' do
    render

    assert_select 'form[action=?][method=?]', reservations_path, 'post' do
      assert_select 'input[name=?]', 'reservation[user_id]'

      assert_select 'input[name=?]', 'reservation[hotel_id]'

      assert_select 'input[name=?]', 'reservation[room_id]'
    end
  end
end
