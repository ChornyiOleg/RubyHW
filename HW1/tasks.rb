
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
