# Дан целочисленный массив. Найти количество элементов, расположенных перед последним минимальным
a = [1,2,3,4,5,6,7,1]
b = a.rindex( a.min )
p a[0...b].size
