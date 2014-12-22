require 'spec_helper'

describe Moguera::Driver::CLI do
  let(:cli) { Moguera::Driver::CLI }

  describe '#generator' do
    describe '#post' do
      let(:post) { %w(generator post) }

      context 'create post' do
        it "display the post title" do
          #TODO: post title
          argv = post + %w(title) + {
              category: 'cat_01',
              tag: ['tag_01', 'tag_02'],
              user: 'usr_01 hoge'
          }.to_options

          expect(capture(:stdout){
            cli.start(argv)
          }).to match /title/
        end

        it "display the post subtitle" do
          #TODO: post subtitle
        end

        it "display the post url" do
          #TODO: post url
        end

        it "display the post id" do
          #TODO: post id
        end
      end

      context 'invalid argv' do
        it "user option is array" do
          argv = post + %w(title) + {
              category: ['cat_01', 'cat_02'],
              tag: ['tag_01', 'tag_02'],
              user: 'usr_01 hoge'
          }.to_options

          expect(capture(:stderr){
            cli.start(argv)
          }).to match /rspec generator post TITLE \[options\] c, --category=CATEGORY t, --tag=one two three u, --user=USER/
        end
      end

      context 'empty argv' do
        it "display the required options" do
          argv = post + %w(title)
          expect(capture(:stderr){
            cli.start(argv)
          }).to eq("No value provided for required options '--user', '--category', '--tag'\n")
        end

        it "without --user option" do
          argv = post + %w(title) + { category: 'cat_01', tag: 'tag_01' }.to_options
          expect(capture(:stderr){
            cli.start(argv)
          }).to eq("No value provided for required options '--user'\n")
        end

        it "without title" do
          argv = post + { category: 'cat_01', tag: 'tag_01', user: 'usr_01' }.to_options
          expect(capture(:stderr){
            cli.start(argv)
          }).to match /ERROR: \"rspec post\" was called with no arguments/
        end
      end
    end
  end
end
