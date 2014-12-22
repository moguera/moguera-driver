module Moguera::Driver
  class Info < Base
    namespace :info

    desc "post", "show post"
    option :list, type: :boolean, aliases: 'l'
    def post
      ::Moguera::Driver::Post.read(title)
    end

    desc "user", "show user"
    option :list, type: :boolean, aliases: 'l'
    def user
      Moguera::Driver::User.read
    end

    desc "category", "create category"
    option :list, type: :boolean, aliases: 'l'
    def category
      p name
    end

    desc "tag", "create tag"
    option :list, type: :boolean, aliases: 'l'
    def tag
      p name
    end

    desc "image", "create image"
    option :list, type: :boolean, aliases: 'l'
    def image
      p name, options
    end
  end
end
