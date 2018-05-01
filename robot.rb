# Try running ruby test_robot.rb. If all is well, you should see 8 skipped tests and no error messages.
# Read the code in robot.rb and the descriptions of the unit test to be implemented in test_robot.rb.
# One by one, remove skip from each unit test and in its place write your test code. In the end your test output should read:
# 8 runs, 8 assertions, 0 failures, 0 errors, 0 skips

class Robot

  def initialize
    @todos = []
  end

  def station
    if needs_repairs && foreign_model
      return 1
    elsif needs_repairs && vintage_model
      return 2
    elsif needs_repairs
      return 3
    else
      return 4
    end
  end

  def prioritize_tasks
    if todos.empty?
      return -1
    else
      return todos.max
    end
  end

  def workday?(today)
    today != day_off
  end

  def needs_repairs
    @needs_repairs
  end

  def needs_repairs=(new_val)
    @needs_repairs = new_val
  end

  def foreign_model
    @foreign_model
  end

  def foreign_model=(new_val)
    @foreign_model = new_val
  end

  def vintage_model
    @vintage_model
  end

  def vintage_model=(new_val)
    @vintage_model = new_val
  end

  def todos
    @todos
  end

  def todos=(new_val)
    @todos = new_val
  end

  def day_off
    @day_off
  end

  def day_off=(new_val)
    @day_off = new_val
  end

end
