$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)

grand_total1 = 0
grand_total2 = 0
grand_total3 = 0
grand_total4 = 0
grand_total5 = 0
grand_total6 = 0
grand_total7 = 0
grand_total8 = 0
grand_total9 = 0
row_index = 0
   
while row_index < directors_database.length do
#good, iterates 9 times

inner_index = 0
inner_len = directors_database[row_index][:movies].length
#good, iterates 6 times, gives access to :worldwide_gross values

while inner_index < inner_len do
#good
pp grand_total1
pp grand_total2

if directors_database[row_index][:name] == directors_database[0][:name] 
dir_name1 =  "#{directors_database[row_index][:name]}"
grand_total1 += directors_database[row_index][:movies][inner_index][:worldwide_gross]
end

if directors_database[row_index][:name] == directors_database[1][:name] 
dir_name2 =  "#{directors_database[row_index][:name]}"
grand_total2 += directors_database[row_index][:movies][inner_index][:worldwide_gross]
end

if directors_database[row_index][:name] == directors_database[3][:name] 
dir_name3 =  "#{directors_database[row_index][:name]}"
grand_total3 += directors_database[row_index][:movies][inner_index][:worldwide_gross]
end

if directors_database[row_index][:name] == directors_database[4][:name] 
dir_name4 =  "#{directors_database[row_index][:name]}"
grand_total4 += directors_database[row_index][:movies][inner_index][:worldwide_gross]
end

  inner_index += 1 
end

  row_index += 1 
end
result = {
dir_name1 => grand_total1,
dir_name2 => grand_total2,
dir_name3 => grand_total3,
dir_name4 => grand_total4,
dir_name5 => grand_total5,
dir_name6 => grand_total6,
dir_name7 => grand_total7,
dir_name8 => grand_total8,
dir_name9 => grand_total9
}
  pp result
end