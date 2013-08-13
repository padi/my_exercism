class Beer
  def verse number_of_beers
    result = first_line(number_of_beers)
    result << second_line(number_of_beers)
    result
  end

  def first_line number_of_beers
    bottles = case number_of_beers
              when 1 then "1 bottle"
              else "#{number_of_beers} bottles"
              end

    "#{bottles} of beer on the wall, #{bottles} of beer.\n"
  end

  def second_line number_of_beers
    number_of_beers_left = number_of_beers - 1
    number_of_beers_left = "no more" if number_of_beers_left == 0

    the_beer = case number_of_beers
               when 1 then "it"
               else "one"
               end
    "Take #{the_beer} down and pass it around, #{number_of_beers_left} bottles of beer on the wall.\n"
  end
end
