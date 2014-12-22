module Moguera::Driver
  class Destroy < Base
    namespace :destroy

    desc "post", "delete post"
    def post(title, args={})
      ::Moguera::Driver::Post.delete(title)
    end

    desc "user", "delete user"
    def user(name, args={})
      ::Moguera::Driver::User.delete(name)
    end

    desc "category", "create category"
    def category(name, args={})
      p name
    end

    desc "tag", "create tag"
    def tag(name, args={})
      p name
    end

    desc "image", "create image"
    def image(name, args={})
      p name
    end
  end
end
