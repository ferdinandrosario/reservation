# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'reservations/show', type: :view do
  before(:each) do
    assign(:reservation, Reservation.create!(
                           user_id: 2,
                           hotel_id: 3,
                           room_id: 4
                         ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
