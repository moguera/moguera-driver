module Moguera::Driver
  class Generator < Base
    namespace :generator

    desc "post TITLE [options]", "create post"
    long_desc <<-LONGDESC
    `moguera generate post` will generate post.

    > $ moguera generate post "Hello" -c category1 -t tag1,tag2 -u mogera
        LONGDESC
    option :user, type: :string, aliases: 'u', required: true
    option :category, type: :string, aliases: 'c', required: true
    option :tag, type: :array, aliases: 't', required: true
    def post(title)
      #args = ::Moguera::Driver::ARGVScrubber.new(argv).prepare!
      Moguera::Driver::Post.create(title, options)
    end

    desc "user NAME [options]", "create user"
    option :role, type: :string, aliases: 'r'
    def user(name)
      ask("What is your name?", path: true)
      Moguera::Driver::User.create(name, options)
    end

    desc "category NAME [options]", "create category"
    def category(name)
      Moguera::Driver::Category.create(name, options)
    end

    desc "tag NAME [options]", "create tag"
    def tag(name, args={})
      Moguera::Driver::Tag.create(name, options)
    end

    desc "image LABEL PATH [options]", "create image"
    def image(name, args={})
      p name
    end
  end
end
