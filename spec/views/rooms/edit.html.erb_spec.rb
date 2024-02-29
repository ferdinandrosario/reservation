# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'rooms/edit', type: :view do
  let(:room) do
    Room.create!(
      name: 'MyString',
      description: 'MyText',
      price: '9.99'
    )
  end

  before(:each) do
    assign(:room, room)
  end

  it 'renders the edit room form' do
    render

    assert_select 'form[action=?][method=?]', room_path(room), 'post' do
      assert_select 'input[name=?]', 'room[name]'

      assert_select 'textarea[name=?]', 'room[description]'

      assert_select 'input[name=?]', 'room[price]'
    end
  end
end
