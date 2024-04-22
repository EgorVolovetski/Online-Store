require 'rails_helper'

RSpec.describe "suppliers/edit", type: :view do
  let(:supplier) {
    Supplier.create!(
      supplier_name: "MyString",
      email: "MyString",
      password: "MyString",
      phone: "MyString"
    )
  }

  before(:each) do
    assign(:supplier, supplier)
  end

  it "renders the edit supplier form" do
    render

    assert_select "form[action=?][method=?]", supplier_path(supplier), "post" do

      assert_select "input[name=?]", "supplier[supplier_name]"

      assert_select "input[name=?]", "supplier[email]"

      assert_select "input[name=?]", "supplier[password]"

      assert_select "input[name=?]", "supplier[phone]"
    end
  end
end
