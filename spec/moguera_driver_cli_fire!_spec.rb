require 'spec_helper'

describe Moguera::Driver::CLI do
  let(:cli) { Moguera::Driver::CLI }

  describe '#fire!' do
    context 'execute fire!' do
      it "display the id" do
        argv = %w(fire! 1)
        expect(capture(:stdout){
          cli.start(argv)
        }).to match /1/
      end
    end
  end
end
