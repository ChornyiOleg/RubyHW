
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

p 'Дан целочисленный массив. Вывести номер первого из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].'

p "intArr = [7, 2, 9, 3, 55, 89, 45, 44, 367, 18, 23, 110]"

p "intArr.index { |i| intArr[0] < i && i < intArr[-1] } || []"

p intArr = [7, 2, 9, 3, 55, 89, 45, 44, 367, 18, 23, 110]

p intArr.index { |i| intArr[0] < i && i < intArr[-1] } || []

p '-----------------------------------------------------'
 