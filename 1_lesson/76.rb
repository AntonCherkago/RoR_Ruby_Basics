# Дан целочисленный массив. Найти среднее арифметическое квадратов его элементов
a = [1, 2, 3, 4, 5]
p (a.inject(0){ |sum, i| sum + i**2.abs }.to_f) / a.size
