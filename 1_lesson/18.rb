# Дан целочисленный массив. Найти количество его локальных минимумов
a = [1,2,3,2,3,4,2,4,6,7,5,7]
p( (1..a.size-2).to_a.select{ |i| (a[i] < a[i-1])&&(a[i] < a[i+1]) }.size )
