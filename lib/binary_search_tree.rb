require_relative './node'

class BinarySearchTree
  attr_accessor :root

  def initialize(root = nil)
    @root = root
  end

  def search(target_value)
    current = @root

    while !current.nil?
      if target_value == current.value
        return current
      elsif target_value < current.value
        current = current.left
      else
        current = current.right
      end
    end

    return nil
  end

  def insert(value)
    new_node = Node.new(value)

    if @root.nil?
      @root = new_node
      return new_node
    end

    current = @root

    loop do
      if value == current.value
        return nil # Don't allow duplicate nodes
      elsif value < current.value
        if current.left.nil?
          current.left = new_node
          return new_node
        else
          current = current.left
        end
      else
        if current.right.nil?
          current.right = new_node
          return new_node
        else
          current = current.right
        end
      end
    end
  end
end 
