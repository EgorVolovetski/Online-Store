require 'rails_helper'

RSpec.describe "customers/index", type: :view do
  before(:each) do
    assign(:customers, [
      Customer.create!(
        customer_name: "Customer Name",
        email: "Email",
        password: "Password",
        address: "Address",
        phone: "Phone"
      ),
      Customer.create!(
        customer_name: "Customer Name",
        email: "Email",
        password: "Password",
        address: "Address",
        phone: "Phone"
      )
    ])
  end

  it "renders a list of customers" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Customer Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Password".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Address".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Phone".to_s), count: 2
  end
end
