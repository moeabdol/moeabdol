require 'rails_helper'

RSpec.describe "layouts/application.html.haml", type: :view do
  it "shows correct year in footer" do
    current_year = Time.now.strftime("%Y")
    render
    expect(rendered).to have_selector("footer .footer_copyright",
                                      text: current_year)
  end
end
