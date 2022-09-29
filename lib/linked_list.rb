# frozen_string_literal: true

require_relative './node'

# Class Linked List
class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(value)
    if @head.nil?
      @head = Node.new(value)
    else
      tail.next_node = Node.new(value)
    end
  end

  def prepend(value)
    if @head.nil?
      @head = Node.new(value)
    else
      temp_node = @head
      @head = Node.new(value)
      @head.next_node = temp_node
    end
  end

  def tail(node = @head)
    if node.next_node.nil?
      node
    else
      tail(node.next_node)
    end
  end

  def size(node = @head, count = 0)
    if @head.nil?
      count
    elsif node.next_node.nil?
      count += 1
      count
    else
      count += 1
      size(node.next_node, count)
    end
  end

  def at(index, node = @head, count = 0)
    if index == count
      node
    else
      count += 1
      at(index, node.next_node, count)
    end
  end

  def pop
    if head.nil?
      puts 'list empty'
    else
      new_tail = at(size - 2)
      new_tail.next_node = nil
    end
  end

  def contains?(value, node = @head, count = 1)
    if count > size
      false
    elsif node.value == value
      true
    else
      count += 1
      contains?(value, node.next_node, count)
    end
  end

  def find(value, node = @head, index = 0)
    if index == size
      nil
    elsif node.value == value
      index
    else
      index += 1
      find(value, node.next_node, index)
    end
  end

  def to_s(node = @head, index = 0)
    if index == size
      puts 'nil'
    else
      print "( #{node.value} ) -> "
      index += 1
      to_s(node.next_node, index)
    end
  end

  def insert_at(value, index, node = @head, count = 0)
    if index.zero?
      prepend(value)
    elsif count == index - 1
      temp_node = node.next_node
      new_node = Node.new(value)
      node.next_node = new_node
      new_node.next_node = temp_node
    else
      count += 1
      insert_at(value, index, node.next_node, count)
    end
  end

  def remove_at(index, node = @head, count = 0)
    if index.zero?
      @head = @head.next_node
    elsif count == index - 1
      node.next_node = node.next_node.next_node
    else
      count += 1
      remove_at(index, node.next_node, count)
    end
  end
end
