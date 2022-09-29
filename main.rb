require_relative 'lib/linked_list'
require_relative 'lib/node'

list = LinkedList.new
list.append('test1')
list.append('test2')
list.prepend('test0')
list.prepend('test-1')
list.append('test3')
list.pop

p list.contains?('test2')
p list.contains?('test3')
p list.find('test-2')

list.insert_at('test1.5', 3)
list.to_s
list.remove_at(1)
list.to_s