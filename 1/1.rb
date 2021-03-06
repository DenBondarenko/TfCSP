#Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.
a = [1, 2, 4, 5, 3, 1]
print a.select.with_index { |_, index| index.even? } + a.select.with_index { |_, index| index.odd? }, "\n"

#Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - с четными.
print a.select.with_index { |_, index| index.odd? } + a.select.with_index { |_, index| index.even? }, "\n"

#Дан целочисленный массив. Вывести номер первого из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].
b = [1, 7, 4, 5, 2, 6]
puts b.index (b.select { |i| b[0] < i && i < b[-1] }.first) || []

#Дан целочисленный массив. Вывести номер последнего из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].
puts b.index (b.select { |i| b[0] < i && i < b[-1] }.last) || []

#Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент. Первый и последний элементы массива не изменять.
c = [3, 4, 7, 6, 1, 5]
print "[", c.first, ", "
c.index(c.first)+1.upto(c.rindex(c.last)-1) do |i|
  case c[i] %2 == 0
  when true
    print c[i]+=c.first, ", "
  else print c[i], ", "
  end
end
print c.last, "]\n"

#Дан целочисленный массив. Преобразовать его, прибавив к четным числам последний элемент. Первый и последний элементы массива не изменять.
d = [3, 4, 7, 6, 2, 8]
print "[", d.first, ", "
d.index(d.first)+1.upto(d.rindex(d.last)-1) do |i|
  case d[i] %2 == 0
  when true
    print d[i]+=d.last, ", "
  else print d[i], ", "
  end
end
print d.last, "]\n"

#Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам первый элемент. Первый и последний элементы массива не изменять.
e = [1, 5, 9, 8, 3, 2]
print "[", e.first, ", "
e.index(e.first)+1.upto(e.rindex(e.last)-1) do |i|
  case e[i] %2 != 0
  when true
    print e[i]+=e.first, ", "
  else print e[i], ", "
  end
end
print e.last, "]\n"

#Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам последний элемент. Первый и последний элементы массива не изменять.
f = [7, 9, 5, 6, 2, 1]
print "[", f.first, ", "
f.index(f.first)+1.upto(f.rindex(f.last)-1) do |i|
  case f[i] %2 != 0
  when true
    print f[i]+=f.last, ", "
  else print f[i], ", "
  end
end
print f.last, "]\n"

#Дан целочисленный массив. Заменить все положительные элементы на значение минимального.
g = [-3, 1, -6, -2, 5, 8]
gmin = g.map { |i| i > 0 ? g.min : i }
puts gmin.to_s

#Дан целочисленный массив. Заменить все положительные элементы на значение максимального.
gmax = g.map { |i| i > 0 ? g.max : i }
puts gmax.to_s

#Дан целочисленный массив. Заменить все отрицательные элементы на значение минимального.
h = [-4, 3, -5, -3, -7, 9]
hmin = h.map { |i| i < 0 ? h.min : i }
puts hmin.to_s

#Дан целочисленный массив. Заменить все отрицательные элементы на значение максимального.
hmax = h.map { |i| i < 0 ? h.max : i }
puts hmax.to_s
