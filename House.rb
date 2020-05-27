require_relative('../db/sql_runner.rb')

class House

  attr_reader :id, :name, :logo

  def initialize(options)
    @id = options['id'].to_i() if options['id'].to_i()
    @name = options['name']
    @logo = options['logo']

  end

  #SAVE
  def save()
    sql = "INSERT INTO houses (
    name, logo
    )VALUES(
      $1,$2
      ) RETURNING *"
      values = [@name,@logo]
      house_data = SqlRunner.run(sql,values)
      @id = house_data.first()['id'].to_i()
    end

    #FIND
    def self.find(id)
      sql = "Select * FROM houses WHERE id = $1"
      values = [id]
      house = SqlRunner.run(sql, values)
      result = House.new(house.first)
      return result
    end
    
    #FIND ALL
    def self.all()
      sql = "SELECT * FROM houses"
      houses = SqlRunner.run(sql)
      result = houses.map{|house| House.new(house)}
      return result
    end

  end
