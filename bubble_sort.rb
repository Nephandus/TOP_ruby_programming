def bubble_sort(array)
#I left those three testing prints in the method because the blocks are neat. Uncommit JUST THEM to see.
    clean_pass = 0
    until (clean_pass == array.length)
#        print "\nGO   #{array}\n"
        clean_pass = 0
        array.each_with_index do |element, index|
            if ( array[index + 1] and (element > array[index + 1]) )
                array[index] = array[index + 1]
                array[index + 1] = element
#                print "P#{clean_pass}   #{array} C#{element}\n"
                clean_pass = 0
            else
                clean_pass += 1
#                print "P#{clean_pass}   #{array}\n"
            end
        end
    end
    return array
end

#Neither was an interface specified nor any exception catching expected, so the below was just for demonstration.
p bubble_sort([4,3,78,2,0,2])