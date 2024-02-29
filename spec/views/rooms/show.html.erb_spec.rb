# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'rooms/show', type: :view do
  before(:each) do
    assign(:room, Room.create!(
                    name: 'Name',
                    description: 'MyText',
                    price: '9.99'
                  ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
  end
end
