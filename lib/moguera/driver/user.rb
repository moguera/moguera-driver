module Moguera::Driver::User
  def create(name, args)
    p name, args
  end

  def read(name='')
    p name
  end

  def update(name, args={})
    p name
  end

  def delete(name)
    p name
  end

  module_function :create
  module_function :read
  module_function :update
  module_function :delete
end
