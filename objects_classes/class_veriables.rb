class Foo
  @@type = 'Foo'

  @i_type = 'Foo'

  def self.type
    @@type
  end

  def self.i_type
    @i_type
  end
end

class FooChild < Foo
  @@type = 'Child'

  @i_type = 'Child'
end

p "Foo type: #{Foo.type} & i_type : #{Foo.i_type}"
p "FooChild type: #{FooChild.type} & i_type : #{FooChild.type}"
