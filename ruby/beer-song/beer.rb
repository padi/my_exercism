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
    beers_left = case number_of_beers_left
                           when 0 then "no more bottles"
                           when 1 then "1 bottle"
                           else "#{number_of_beers_left} bottles"
                           end

    the_beer = case number_of_beers
               when 1 then "it"
               else "one"
               end
    "Take #{the_beer} down and pass it around, #{beers_left} of beer on the wall.\n"
  end
end
