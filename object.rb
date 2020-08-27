class Task
  attr_accessor :id, :name, :content
  @@count = 0

  def initialize(**params)
    @id = @@count += 1
    @name = params[:name]
    @content = params[:content]
  end

  def info
    puts "タスクNO.#{@id} #{@name}:#{@content}"
  end
end

class Todo
  def initialize
    @tasks = []
  end

  def add(task)
    puts "#{}"
  end
end


task1 = Task.new(name: "洗濯", content: "８時までに干し終える" )
task2 = Task.new(name: "仕事", content: "9時〜18時")
task3 = Task.new(name: "買い物", content: "卵、ネギ")

puts task1.info
puts task2.info
puts task3.info

