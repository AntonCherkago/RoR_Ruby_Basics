# Дан целочисленный массив. Найти все четные элементы
array = [1, 14, 13, 20, 75, 78, 54, 31]
a = array.find_all{ |elem| elem % 2 == 0 }
puts a
