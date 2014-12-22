module Moguera::Driver
  class Update < Base
    namespace :update

    desc "post", "update post"
    option :name, type: :string, aliases: 'n'
    option :subtitle, type: :string, aliases: 's'
    option :user, type: :string, aliases: 'u'
    option :category, type: :string, aliases: 'c'
    option :tag, type: :array, aliases: 't'
    option :file, type: :string, aliases: 'f'
    option :describe, type: :string, aliases: 'd'
    def post(id)
      Moguera::Driver::Post.read(title)
    end

    desc "user", "update user"
    option :name, type: :string, aliases: 'n'
    option :role, type: :string, aliases: 'r'
    option :describe, type: :string, aliases: 'd'
    def user(id)
      Moguera::Driver::User.read
    end

    desc "category", "update category"
    option :name, type: :string, aliases: 'n'
    option :describe, type: :string, aliases: 'd'
    def category(id)
      p name
    end

    desc "tag", "update tag"
    option :name, type: :string, aliases: 'n'
    option :describe, type: :string, aliases: 'd'
    def tag(id)
      p name
    end

    desc "image", "update image"
    option :name, type: :string, aliases: 'n'
    option :file, type: :string, aliases: 'f'
    option :describe, type: :string, aliases: 'd'
    def image(id)
      p name, options
    end
  end
end
