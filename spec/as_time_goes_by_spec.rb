require File.expand_path(File.dirname(__FILE__)+'/spec_helper')

describe 'AsTimeGoesBy' do
  describe "when visiting /" do
    it "should say hello" do
      visit '/'

      response.should have_selector("p:contains('Hello!')")
    end
  end
end
