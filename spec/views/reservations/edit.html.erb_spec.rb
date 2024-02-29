# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'reservations/edit', type: :view do
  let(:reservation) do
    Reservation.create!(
      user_id: 1,
      hotel_id: 1,
      room_id: 1
    )
  end

  before(:each) do
    assign(:reservation, reservation)
  end

  it 'renders the edit reservation form' do
    render

    assert_select 'form[action=?][method=?]', reservation_path(reservation), 'post' do
      assert_select 'input[name=?]', 'reservation[user_id]'

      assert_select 'input[name=?]', 'reservation[hotel_id]'

      assert_select 'input[name=?]', 'reservation[room_id]'
    end
  end
end
