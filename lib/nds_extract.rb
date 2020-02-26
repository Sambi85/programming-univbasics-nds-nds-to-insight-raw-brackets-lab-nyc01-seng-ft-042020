$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)

grand_total1 = 0
grand_total2 = 0
row_index = 0
   
while row_index < directors_database.length do
#good, iterates 9 times

#column_index = 0

#while column_index < directors_database[row_index].length do
#good, iterates 2 times

inner_index = 0
inner_len = directors_database[row_index][:movies].length
#good, iterates 6 times, gives access to :worldwide_gross values

while inner_index < inner_len do
#good
pp grand_total

if directors_database[row_index][:name] == directors_database[0][:name] 
dir_name1 =  "#{directors_database[row_index][:name]}"
grand_total1 += directors_database[row_index][:movies][inner_index][:worldwide_gross]
end

if directors_database[row_index][:name] == directors_database[1][:name] 
dir_name2 =  "#{directors_database[row_index][:name]}"
grand_total2 += directors_database[row_index][:movies][inner_index][:worldwide_gross]
end

  inner_index += 1 
end

 # column_index += 1
#end

  row_index += 1 
end
result = {
dir_name1 => grand_total1,
dir_name2 => grand_total2
   
}
# pp directors_database
  pp result
end