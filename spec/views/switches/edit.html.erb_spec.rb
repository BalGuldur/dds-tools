require 'spec_helper'

describe "switches/edit.html.erb" do
  before(:each) do
    @switch = assign(:switch, stub_model(Switch,
      :ipaddress => "MyString",
      :address => "MyString",
      :status => "MyString"
    ))
  end

  it "renders the edit switch form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => switches_path(@switch), :method => "post" do
      assert_select "input#switch_ipaddress", :name => "switch[ipaddress]"
      assert_select "input#switch_address", :name => "switch[address]"
      assert_select "input#switch_status", :name => "switch[status]"
    end
  end
end
