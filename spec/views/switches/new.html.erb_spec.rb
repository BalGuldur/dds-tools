require 'spec_helper'

describe "switches/new.html.erb" do
  before(:each) do
    assign(:switch, stub_model(Switch,
      :ipaddress => "MyString",
      :address => "MyString",
      :status => "MyString"
    ).as_new_record)
  end

  it "renders new switch form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => switches_path, :method => "post" do
      assert_select "input#switch_ipaddress", :name => "switch[ipaddress]"
      assert_select "input#switch_address", :name => "switch[address]"
      assert_select "input#switch_status", :name => "switch[status]"
    end
  end
end
