def process_file
f = File.open("/home/student11b/marto_bo/test.csv","r")
content = f.read
result1 = 0
result2 = 0
content.each_line do |line|
 array = line.split(",")
  if array[5] == "Python\n"
   result1 = result1 + array[1].to_i()
  end
  if array[5] == "Ruby\n"
   result2 = result2 + array[1].to_i()
  end
end
p result1
p result2
end

process_file
