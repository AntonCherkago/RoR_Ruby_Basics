array = [621, 445, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14, 126, 532, 387, 441, 471, 337, 446, 18, 36, 202, 574, 556, 458, 16, 139, 222, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 336]
# узнать количество элементов в массиве
p array.size
# перевернуть массив
p array.reverse
# найти наибольшее число
p array.max
# найти наименьшее число
p array.min
# отсортировать от меньшего к большему
p array.sort
# отсортировать от большего к меньшему
p array.sort.reverse
# удалить все нечетные числа
p array.reject{ |elem| elem % 2 != 0 }
# оставить только те числа, которые без остатка делятся на 3
p array.reject{ |elem| elem % 3 != 0 }
# удалить из массива числа, которые повторяются (то есть, нужно вывести массив, в котором нет повторов)
p array.uniq
# разделить каждый элемент на 10, в результате элементы не должны быть округлены до целого
p array.map{ |elem| elem.to_f / 10 }
# получить новый массив, который бы содержал в себе те буквы английского алфавита, порядковый номер которых есть в нашем массиве
p abc_v2 = ('a'..'z').to_a.select {|x| array.include?(('a'..'z').to_a.index(x))}
# поменять местами минимальный и максимальный элементы массива
max_index = array.each_with_index.max[1]
min_index = array.each_with_index.min[1]
array_copy = array.dup
array_copy[min_index], array_copy[max_index] = array_copy[max_index], array_copy[min_index]
p array_copy
# найти элементы, которые находятся перед минимальным числом в массиве
a = array.rindex( array.min )
p array[0...a]
# необходимо найти три наименьших элемента./
p array.sort.uniq[0..2]
