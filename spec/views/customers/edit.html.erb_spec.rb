require 'rails_helper'

RSpec.describe "customers/edit", type: :view do
  let(:customer) {
    Customer.create!(
      customer_name: "MyString",
      email: "MyString",
      password: "MyString",
      address: "MyString",
      phone: "MyString"
    )
  }

  before(:each) do
    assign(:customer, customer)
  end

  it "renders the edit customer form" do
    render

    assert_select "form[action=?][method=?]", customer_path(customer), "post" do

      assert_select "input[name=?]", "customer[customer_name]"

      assert_select "input[name=?]", "customer[email]"

      assert_select "input[name=?]", "customer[password]"

      assert_select "input[name=?]", "customer[address]"

      assert_select "input[name=?]", "customer[phone]"
    end
  end
end
