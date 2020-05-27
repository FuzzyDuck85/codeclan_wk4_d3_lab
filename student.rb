require_relative('../db/sql_runner.rb')

class Student

  attr_reader :id, :first_name, :last_name, :house_id, :age

  def initialize(options)
    @id = options['id'].to_i() if options['id'].to_i()
    @first_name = options['first_name']
    @last_name = options['last_name']
    @house_id = options['house_id']
    @age = options['age'].to_i()
  end

  def full_name()
    return "#{@first_name} #{@last_name}"
  end

  #SAVE

  def house_name()
    sql = "SELECT name
    FROM houses
    WHERE houses.id = $1"
    values = [@house_id]
    pg_result = SqlRunner.run(sql, values)
    return pg_result
  end

  def save()
    sql = "INSERT INTO students (
    first_name, last_name, house_id, age
    )VALUES(
      $1,$2,$3,$4
      ) RETURNING *"
      values = [@first_name,@last_name,@house_id,@age]
      student_data = SqlRunner.run(sql,values)
      @id = student_data.first()['id'].to_i()
    end

    #FIND
    def self.find(id)
      sql = "Select * FROM students WHERE id = $1"
      values = [id]
      student = SqlRunner.run(sql, values)
      result = Student.new(student.first)
      return result
    end

    #FIND ALL
    def self.all()
      sql = "SELECT * FROM students"
      students = SqlRunner.run(sql)
      result = students.map{|student| Student.new(student)}
      return result
    end

  end
