class Beer
  def verse number_of_beers
    result = first_line(number_of_beers)
    result << second_line(number_of_beers)
    result
  end

  def first_line number_of_beers
    "#{bottles(number_of_beers)} of beer on the wall, #{bottles(number_of_beers)} of beer.\n"
  end

  def second_line number_of_beers
    "Take #{the_beer(number_of_beers)} down and pass it around, #{beers_left(number_of_beers)} of beer on the wall.\n"
  end

  private

  def bottles number_of_beers
    case number_of_beers
    when 1 then "1 bottle"
    else "#{number_of_beers} bottles"
    end
  end

  def the_beer number_of_beers
    case number_of_beers
    when 1 then "it"
    else "one"
    end
  end

  def beers_left(number_of_beers)
    number_of_beers_left = number_of_beers - 1
    case number_of_beers_left
    when 0 then "no more bottles"
    when 1 then "1 bottle"
    else "#{number_of_beers_left} bottles"
    end
  end
end
