class Task
  attr_accessor :task_name, :details
  @@count = 0

  def initialize(task_name:, datails:)
    @task_name = task_name
    @datails = datails
  end

  def info
    @@count += 1
    puts "タスクNO.#{@@count}#{@task_name}:#{@datails}"
  end
end

task1 = Task.new(task_name: "仕事", datails: "AM8：00〜PM18:00まで仕事を行う" )
task2 = Task.new(task_name: "買い物", datails: "豚肉、ニンニクの芽、玉ねぎ、焼肉のタレ")
task3 = Task.new(task_name: "就寝", datails: "PM23:00〜就寝")

task1.info
task2.info
task3.info