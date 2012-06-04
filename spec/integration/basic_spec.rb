require "yoga_pants/client"
$DEBUG = true
require 'pp'

describe "basic tests" do
  subject do
    YogaPants::Client.new("http://localhost:9200/")
  end

  before(:all) do
    if subject.exists?("/yoga_pants_test")
      subject.delete("/yoga_pants_test")
    end
    subject.post("/yoga_pants_test")
    subject.put("/yoga_pants_test/doc/_mapping", :body => {
      :doc => {
        :properties => {
           :foo => {:type => 'string'}
        }
      }
    })
  end

  it "indexing a document" do
    subject.post("/yoga_pants_test/doc/1", :body => {
      :foo => 'bar'
    })
    subject.get("/yoga_pants_test/doc/1").should == {
      '_index' => 'yoga_pants_test',
      '_type' => 'doc',
      '_id' => '1',
      '_version' => 1,
      'exists' => true,
      '_source' => {
        'foo' => 'bar'
      }
    }
  end

  it "works for a real item" do
    subject.get("/3docean.net/item/51708")
  end

  it "fails for a broken request" do
    expect { subject.get("/baloeuaoeu") }.to raise_error(YogaPants::Connection::HTTPError)
  end
end
