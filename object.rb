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
    @tasks << task
    puts "#{task.info}が追加されました。"
    puts ""
  end

  def info
    puts "＜タスク一覧＞"
    @tasks.each do |task|
      puts "#{task.info}"
    end
  end

  def delete(id:)
      if delete_task = @tasks.find { |task| task.id == id }
        @tasks.delete(delete_task)
        puts "#{delete_task.info}を削除しました。"
      end
  end
end




task1 = Task.new(name: "洗濯", content: "８時までに干し終える" )
task2 = Task.new(name: "仕事", content: "9時〜18時")
task3 = Task.new(name: "買い物", content: "卵、ネギ")

todo = Todo.new
todo.add(task1)
todo.add(task2)
todo.add(task3)
todo.info
todo.delete(id: 1)
todo.info



