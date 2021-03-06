class DateProblems
  def sum_time(time, k)
    hour, minute = time.split(':').map(&:to_i)
    add_minutes = minute + k
    hour += add_minutes/60
    minute = add_minutes%60
    "#{hour}:#{minute}"
  end

  def find_age(current_date, current_month, current_year, 
    birth_date, birth_month, birth_year)
  
    month =[31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    if birth_date > current_date
      current_month = current_month - 1
      current_date = current_date + month[birth_month-1]
    end
  
  
    if(birth_month > current_month)
      calculated_date = current_date - birth_date
      calculated_month = current_month - birth_date
      calculated_year = current_year - birth_year
    end

    "Year: #{calculated_year}, months: #{calculated_month}, Days: #{calculated_date}"
  end

  def day_week(y, m, d)
    t = [ 0, 3, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4 ]
    y = y - 1 if m < 3
    (y + y / 4 - y / 100 + y / 400 + t[m-1] + d) % 7
  end
end