# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'cities/edit', type: :view do
  let(:city) do
    City.create!(
      name: 'MyString',
      state: 'MyString'
    )
  end

  before(:each) do
    assign(:city, city)
  end

  it 'renders the edit city form' do
    render

    assert_select 'form[action=?][method=?]', city_path(city), 'post' do
      assert_select 'input[name=?]', 'city[name]'

      assert_select 'input[name=?]', 'city[state]'
    end
  end
end
