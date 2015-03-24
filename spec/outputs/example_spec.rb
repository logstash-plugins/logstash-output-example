require "logstash/devutils/rspec/spec_helper"
require "logstash/outputs/example"
require "logstash/codecs/plain"
require "logstash/event"

describe LogStash::Outputs::Example do
  let(:sample_event) { LogStash::Event.new }

  context "#receive" do
    subject do
      output = LogStash::Outputs::Example.new
      output.register
      output
    end

    it "returns hello world" do
      expect(subject.receive(sample_event)).to eq("Event received")
    end
  end
end
