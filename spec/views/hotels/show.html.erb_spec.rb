require 'rails_helper'

RSpec.describe "hotels/show", type: :view do
  before(:each) do
    assign(:hotel, Hotel.create!(
      name: "Name",
      city: 2,
      about: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
  end
end
