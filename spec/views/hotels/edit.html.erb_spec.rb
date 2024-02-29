require 'rails_helper'

RSpec.describe "hotels/edit", type: :view do
  let(:hotel) {
    Hotel.create!(
      name: "MyString",
      city: 1,
      about: "MyText"
    )
  }

  before(:each) do
    assign(:hotel, hotel)
  end

  it "renders the edit hotel form" do
    render

    assert_select "form[action=?][method=?]", hotel_path(hotel), "post" do

      assert_select "input[name=?]", "hotel[name]"

      assert_select "input[name=?]", "hotel[city]"

      assert_select "textarea[name=?]", "hotel[about]"
    end
  end
end
