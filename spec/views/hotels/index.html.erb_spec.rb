require 'rails_helper'

RSpec.describe "hotels/index", type: :view do
  before(:each) do
    assign(:hotels, [
      Hotel.create!(
        name: "Name",
        city: 2,
        about: "MyText"
      ),
      Hotel.create!(
        name: "Name",
        city: 2,
        about: "MyText"
      )
    ])
  end

  it "renders a list of hotels" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
