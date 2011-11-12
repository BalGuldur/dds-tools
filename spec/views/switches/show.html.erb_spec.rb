require 'spec_helper'

describe "switches/show.html.erb" do
  before(:each) do
    @switch = assign(:switch, stub_model(Switch,
      :ipaddress => "Ipaddress",
      :address => "Address",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ipaddress/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Status/)
  end
end
