def stock_picker(array_of_days)
    best_price = 0
    first_day_of_price = 0
    second_day_of_price = 0
    days_of_price = []
    check_against_array = []
    index_offset = 0

    array_of_days.each do |element|
        check_against_array.push(element)
    end

    array_of_days.each_with_index do |first_day, first_index|
        check_against_array.each_with_index do |second_day, second_index|
            if (first_day < second_day)
                price = second_day - first_day
                if (price > best_price)
                    best_price = price
                    first_day_of_price = first_index
                    second_day_of_price = (second_index + index_offset)
                end
            end
        end
        check_against_array.shift
        index_offset += 1
    end
    days_of_price << first_day_of_price
    days_of_price << second_day_of_price
    return days_of_price
end

#Neither was an interface specified nor any exception catching expected, so the below was just for demonstration.
p stock_picker([17,3,6,9,15,8,6,1,10])