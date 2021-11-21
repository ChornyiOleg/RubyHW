
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


p 'Дан целочисленный массив. Заменить все отрицательные элементы на значение минимального.'


p "intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110]"

p "intArr.map { |e| e < 0 ? e = intArr.min : e }"


p intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110]

p intArr.map { |e| e < 0 ? e = intArr.min : e }


p '--------------------------------------------------------------------------------'


p 'Дан целочисленный массив. Заменить все отрицательные элементы на значение максимального.'


p "intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110]"

p "intArr.map { |e| e < 0 ? e = intArr.max : e }"


p intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110]

p intArr.map { |e| e < 0 ? e = intArr.max : e }


p '--------------------------------------------------------------------------------'

p 'Дан целочисленный массив. Осуществить циклический сдвиг элементов массива влево на одну позицию.'


p "intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110]"

p "intArr.roate"


p intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110]

p intArr.rotate


p '--------------------------------------------------------------------------------'


p 'Дан целочисленный массив. Осуществить циклический сдвиг элементов массива вправо на одну позицию.'


p "intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110]"

p "intArr.roate"


p intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110]

p intArr.rotate(-1)


p '--------------------------------------------------------------------------------'


p 'Дан целочисленный массив. Проверить, образуют ли элементы арифметическую прогрессию. Если да, то вывести разность прогрессии, если нет - вывести nil.'


p "intArray = [3, 6, 9, 12, 15, 18, 21, 24, 27, 30, 33, 36]"

p "progressionDiff = intArray.each_cons(2).map { |el| el[1] - el[0] }.uniq"

p "progressionDiff.size > 1 ? nil : progressionDiff[0]"


p intArray = [3, 6, 9, 12, 15, 18, 21, 24, 27, 30, 33, 36]

p progressionDiff = intArray.each_cons(2).map { |el| el[1] - el[0] }.uniq

p progressionDiff.size > 1 ? nil : progressionDiff[0]


p 'Вариант 2 с первым массивом:'

p intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110]

p progressionDiff = intArr.each_cons(2).map { |el| el[1] - el[0] }.uniq

p progressionDiff.size > 1 ? nil : progressionDiff[0]


p '--------------------------------------------------------------------------------'

p 'Дан целочисленный массив. Проверить, образуют ли элементы геометрическую прогрессию. Если да, то вывести знаменатель прогрессии, если нет - вывести nil.'


p "intArr = [3, 9, 27, 81, 243]"

p "if intArr.include?(0)"
p "Array contains 0, check is iterrupted"
p "else"

p "progressionDiff = intArr.each_cons(2).map { |el| el[1] / el[0] }.uniq"
p "progressionDiff.size > 1 ? nil : progressionDiff[0]"
p "end"


p intArr = [3, 9, 27, 81, 243]

  if intArr.include?(0)

    p "Array contains 0, check is iterrupted"

  else

   p progressionDiff = intArr.each_cons(2).map { |el| el[1] / el[0] }.uniq

   p progressionDiff.size > 1 ? nil : progressionDiff[0]

  end


  p 'Вариант 2 с элементом 0:'

p intArr = [3, 0, 27, 81, 243]

  if intArr.include?(0)

    p "Array contains 0, check is iterrupted"

  else

   p progressionDiff = intArr.each_cons(2).map { |el| el[1] / el[0] }.uniq

   p progressionDiff.size > 1 ? nil : progressionDiff[0]

  end



p '--------------------------------------------------------------------------------'


p 'Дан целочисленный массив. Найти количество его локальных максимумов.'



p "intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110]"

p "counter = 0"

p "intArr.each_cons(3) { |a,b,c| counter += 1 if a < b and b > c }"

p "counter"


p intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110]

  counter = 0

  intArr.each_cons(3) { |a,b,c| counter += 1 if a < b and b > c }

p counter

p '--------------------------------------------------------------------------------'


p 'Дан целочисленный массив. Найти количество его локальных минимумов.'


p "intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110]"

p "counter = 0"

p "intArr.each_cons(3) { |a,b,c| counter += 1 if a > b and b < c }"

p "counter"


p intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110]

  counter = 0

  intArr.each_cons(3) { |a,b,c| counter += 1 if a > b and b < c }

p counter

p '--------------------------------------------------------------------------------'


p 'Дан целочисленный массив. Найти максимальный из его локальных максимумов.'


p "intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110]"

p "maximus = []"

p "intArr.each_cons(3) { |a, b, c| maximus << b if a < b && b > c }"



intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110]

maximus = []

intArr.each_cons(3) { |a, b, c| maximus << b if a < b && b > c }

p maximus.max


p '--------------------------------------------------------------------------------'

p 'Дан целочисленный массив. Найти минимальный из его локальных минимумов.'


p "intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110]"

p "minimus = []"

p "intArr.each_cons(3) { |a, b, c| minimus << b if a > b && b < c }"



intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110]

minimus = []

intArr.each_cons(3) { |a, b, c| minimus << b if a > b && b < c }

p minimus.min

p '--------------------------------------------------------------------------------'


p 'Дан целочисленный массив. Упорядочить его по возрастанию.'


p "intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110].sort"

p intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110].sort


p '--------------------------------------------------------------------------------'


p 'Дан целочисленный массив. Упорядочить его по убыванию.'


p "intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110].sort.reverse"

p intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110].sort.reverse

p '--------------------------------------------------------------------------------'



p 'Дан целочисленный массив. Найти индекс минимального элемента.'


p "intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110]"

p "intArr.index(intArr.min)"


p intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110]

p intArr.index(intArr.min)

p '--------------------------------------------------------------------------------'

p 'Дан целочисленный массив. Найти индекс максимального элемента.'


p "intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110]"

p "intArr.index(intArr.max)"


p intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110]

p intArr.index(intArr.max)

p '--------------------------------------------------------------------------------'


p 'Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют убывающую последовательность.'


p "intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110]"

p "(0...intArr.size).sort_by{ |i| intArr[i] }.reverse"


p intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110]

p (0...intArr.size).sort_by{ |i| intArr[i] }.reverse


p '--------------------------------------------------------------------------------'


p 'Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют возрастающую последовательность.'


p "intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110]"

p "(0...intArr.size).sort_by{ |i| intArr[i] }"


p intArr = [7, 2, 9, 3, 55, 89, -45, 44, 367, -18, 23, 110]

p (0...intArr.size).sort_by{ |i| intArr[i] }

p '--------------------------------------------------------------------------------'


p 'Дан целочисленный массив. Найти индекс первого минимального элемента.'


p "intArr = [7, 2, 9, 3, 55, 89, 45, -44, 367, -18, 23, 110]"

p "intArr.index(intArr.min)"


p intArr = [7, 2, 9, 3, 55, 89, 45, -44, 367, -18, 23, 110]

p intArr.index(intArr.min)


p '--------------------------------------------------------------------------------'


p 'Дан целочисленный массив. Найти индекс первого максимального элемента.'


p "intArr = [7, 2, 9, 3, 55, 89, 45, -44, 367, -18, 23, 110]"

p "intArr.index(intArr.max)"


p intArr = [7, 2, 9, 3, 55, 89, 45, -44, 367, -18, 23, 110]

p intArr.index(intArr.max)


p '--------------------------------------------------------------------------------'


p 'Дан целочисленный массив. Найти индекс последнего минимального элемента.'


p "intArr = [7, 2, 9, 3, 55, 89, 45, -44, 367, -18, 23, 110]"

p "intArr.rindex(intArr.min)"


p intArr = [7, 367, 9, -44, 55, 89, 45, -43, 366, -18, 23, 110]

p intArr.rindex(intArr.min)


p '--------------------------------------------------------------------------------'


p 'Дан целочисленный массив. Найти индекс последнего максимального элемента.'


p "intArr = [7, 2, 9, 3, 55, 89, 45, -44, 367, -18, 23, 110]"

p "intArr.rindex(intArr.max)"


p intArr = [7, 367, 9, -44, 55, 89, 45, -43, 366, -18, 23, 110]

p intArr.rindex(intArr.max)


p '--------------------------------------------------------------------------------'


p 'Дано целое число. Найти сумму его цифр.'

p "23"

p "23.digits.sum"

p 23.digits.sum

p '--------------------------------------------------------------------------------'


p 'Дано целое число. Найти произведение его цифр.'

p "23"

p 23.digits.inject(:*)

p '--------------------------------------------------------------------------------'


p 'Дан целочисленный массив и интервал a..b. Найти минимальный из элементов в этом интервале.'


p "intArr = [7, 2, 9, 3, 55, 89, 45, -44, 367, -18, 23, 110]"

p "intArr[a..b].min"

p "intArr[2..5].min"

p intArr = [7, 2, 9, 3, 55, 89, 45, -44, 367, -18, 23, 110]

p intArr [2..5].min


p '--------------------------------------------------------------------------------'


p 'Дан целочисленный массив и интервал a..b. Найти максимальный из элементов в этом интервале.'


p "intArr = [7, 2, 9, 3, 55, 89, 45, -44, 367, -18, 23, 110]"

p "intArr[a..b].max"

p "intArr[2..5].max"

p intArr = [7, 2, 9, 3, 55, 89, 45, -44, 367, -18, 23, 110]

p intArr [2..5].max


p '--------------------------------------------------------------------------------'


p 'Дан целочисленный массив. Найти все четные элементы.'



p "intArr = [7, 2, 9, 3, 55, 89, 45, -44, 367, -18, 23, 110]"

p "intArr.select(&:even?)"


p intArr = [7, 2, 9, 3, 55, 89, 45, -44, 367, -18, 23, 110]

p intArr.select(&:even?)


p '--------------------------------------------------------------------------------'



p 'Дан целочисленный массив. Найти все нечетные элементы.'


p "intArr = [7, 2, 9, 3, 55, 89, 45, -44, 367, -18, 23, 110]"

p "intArr.select(&:odd?)"


p intArr = [7, 2, 9, 3, 55, 89, 45, -44, 367, -18, 23, 110]

p intArr.select(&:odd?)


p '--------------------------------------------------------------------------------'
