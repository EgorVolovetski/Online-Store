require 'rails_helper'

RSpec.describe "customers/new", type: :view do
  before(:each) do
    assign(:customer, Customer.new(
      customer_name: "MyString",
      email: "MyString",
      password: "MyString",
      address: "MyString",
      phone: "MyString"
    ))
  end

  it "renders new customer form" do
    render

    assert_select "form[action=?][method=?]", customers_path, "post" do

      assert_select "input[name=?]", "customer[customer_name]"

      assert_select "input[name=?]", "customer[email]"

      assert_select "input[name=?]", "customer[password]"

      assert_select "input[name=?]", "customer[address]"

      assert_select "input[name=?]", "customer[phone]"
    end
  end
end
