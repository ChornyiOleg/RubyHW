
p 'Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.'


p "intArr = [7, 2, 9, 3, 55, 89, 45, 44, 367, 18, 23, 110]"
 
p "intArr.select.each_with_index { |_, i| i.even? }"

p "intArr.select.each_with_index { |_, i| i.odd? }"



p intArr = [7, 2, 9, 3, 55, 89, 45, 44, 367, 18, 23, 110]
 
p intArr.select.each_with_index { |_, i| i.even? }

p intArr.select.each_with_index { |_, i| i.odd? }


p '-----------------------------------------------------'


p 'Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.'


p "intArr = [7, 2, 9, 3, 55, 89, 45, 44, 367, 18, 23, 110]"

p "intArr.select.each_with_index { |_, i| i.odd? }"

p "intArr.select.each_with_index { |_, i| i.even? }"


p intArr = [7, 2, 9, 3, 55, 89, 45, 44, 367, 18, 23, 110]
 
p intArr.select.each_with_index { |_, i| i.odd? }

p intArr.select.each_with_index { |_, i| i.even? }

p '-----------------------------------------------------'

 