require 'rails_helper'

RSpec.describe "suppliers/index", type: :view do
  before(:each) do
    assign(:suppliers, [
      Supplier.create!(
        supplier_name: "Supplier Name",
        email: "Email",
        password: "Password",
        phone: "Phone"
      ),
      Supplier.create!(
        supplier_name: "Supplier Name",
        email: "Email",
        password: "Password",
        phone: "Phone"
      )
    ])
  end

  it "renders a list of suppliers" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Supplier Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Password".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Phone".to_s), count: 2
  end
end
