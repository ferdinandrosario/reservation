# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'rooms/index', type: :view do
  before(:each) do
    assign(:rooms, [
             Room.create!(
               name: 'Name',
               description: 'MyText',
               price: '9.99'
             ),
             Room.create!(
               name: 'Name',
               description: 'MyText',
               price: '9.99'
             )
           ])
  end

  it 'renders a list of rooms' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('MyText'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('9.99'.to_s), count: 2
  end
end
