
p 'Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.'


p "intArr = [7, 2, 9, 3, 55, 89, 45, 44, 367, 18, 23, 110]"
 
p "intArr.select.each_with_index { |_, i| i.even? }"

p "intArr.select.each_with_index { |_, i| i.odd? }"



p intArr = [7, 2, 9, 3, 55, 89, 45, 44, 367, 18, 23, 110]
 
p intArr.select.each_with_index { |_, i| i.even? }

p intArr.select.each_with_index { |_, i| i.odd? }


p '--------------------------------------------------------------------------------'


p 'Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.'


p "intArr = [7, 2, 9, 3, 55, 89, 45, 44, 367, 18, 23, 110]"

p "intArr.select.each_with_index { |_, i| i.odd? }"

p "intArr.select.each_with_index { |_, i| i.even? }"


p intArr = [7, 2, 9, 3, 55, 89, 45, 44, 367, 18, 23, 110]
 
p intArr.select.each_with_index { |_, i| i.odd? }

p intArr.select.each_with_index { |_, i| i.even? }


p '--------------------------------------------------------------------------------'


p 'Дан целочисленный массив. Вывести номер первого из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].'


p "intArr = [7, 2, 9, 3, 55, 89, 45, 44, 367, 18, 23, 110]"

p "intArr.index { |i| intArr[0] < i && i < intArr[-1] } || []"


p intArr = [7, 2, 9, 3, 55, 89, 45, 44, 367, 18, 23, 110]

p intArr.index { |i| intArr[0] < i && i < intArr[-1] } || []


p '--------------------------------------------------------------------------------'

 
p 'Дан целочисленный массив. Вывести номер последнего из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].'


p "intArr = [7, 2, 9, 3, 55, 89, 45, 44, 367, 18, 23, 110]"

p "intArr.index(intArr.select { |i| intArr[0] < i && i < intArr[-1] }.last) || []"


p intArr = [7, 2, 9, 3, 55, 89, 45, 44, 367, 18, 23, 110]

p intArr.index(intArr.select { |i| intArr[0] < i && i < intArr[-1] }.last) || []


p '--------------------------------------------------------------------------------'


p 'Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент. Первый и последний элементы массива не изменять.'


p "intArr = [7, 2, 9, 3, 55, 89, 45, 44, 367, 18, 23, 110]"

p "intArr.map { |e| e != intArr[0] && e != intArr[-1] && e.even? ? e + intArr[0] : e }"


p intArr = [7, 2, 9, 3, 55, 89, 45, 44, 367, 18, 23, 110]

p intArr.map { |e| e != intArr[0] && e != intArr[-1] && e.even? ? e + intArr[0] : e }


p '--------------------------------------------------------------------------------'


p 'Дан целочисленный массив. Преобразовать его, прибавив к четным числам последний элемент. Первый и последний элементы массива не изменять.'


p "intArr = [7, 2, 9, 3, 55, 89, 45, 44, 367, 18, 23, 110]"

p "intArr.map { |e| e != intArr[0] && e != intArr[-1] && e.even? ? e + intArr[0] : e }"


p intArr = [7, 2, 9, 3, 55, 89, 45, 44, 367, 18, 23, 110]

p intArr.map { |e| e != intArr[0] && e != intArr[-1] && e.even? ? e + intArr[-1] : e }


p '--------------------------------------------------------------------------------'


p 'Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам последний элемент. Первый и последний элементы массива не изменять.'


p "intArr = [7, 2, 9, 3, 55, 89, 45, 44, 367, 18, 23, 110]"

p "intArr.map { |e| e != intArr[0] && e != intArr[-1] && e.odd? ? e + intArr[-1] : e }"


p intArr = [7, 2, 9, 3, 55, 89, 45, 44, 367, 18, 23, 110]

p intArr.map { |e| e != intArr[0] && e != intArr[-1] && e.odd? ? e + intArr[-1] : e }


p '--------------------------------------------------------------------------------'


p 'Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам первый элемент. Первый и последний элементы массива не изменять.'


p "intArr = [7, 2, 9, 3, 55, 89, 45, 44, 367, 18, 23, 110]"

p "intArr.map { |e| e != intArr[0] && e != intArr[-1] && e.odd? ? e + intArr[0] : e }"


p intArr = [7, 2, 9, 3, 55, 89, 45, 44, 367, 18, 23, 110]

p intArr.map { |e| e != intArr[0] && e != intArr[-1] && e.odd? ? e + intArr[0] : e }


p '--------------------------------------------------------------------------------'


p 'Дан целочисленный массив. Заменить все положительные элементы на значение минимального.'


p "intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110]"

p "intArr.map { |e| e > 0 ? e = intArr.min : e }"


p intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110]

p intArr.map { |e| e > 0 ? e = intArr.min : e }


p '--------------------------------------------------------------------------------'


p 'Дан целочисленный массив. Заменить все положительные элементы на значение максимального.'


p "intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110]"

p "intArr.map { |e| e > 0 ? e = intArr.max : e }"


p intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110]

p intArr.map { |e| e > 0 ? e = intArr.max : e }

p '--------------------------------------------------------------------------------'