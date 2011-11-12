require 'spec_helper'

describe "switches/index.html.erb" do
  before(:each) do
    assign(:switches, [
      stub_model(Switch,
        :ipaddress => "Ipaddress",
        :address => "Address",
        :status => "Status"
      ),
      stub_model(Switch,
        :ipaddress => "Ipaddress",
        :address => "Address",
        :status => "Status"
      )
    ])
  end

  it "renders a list of switches" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ipaddress".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
