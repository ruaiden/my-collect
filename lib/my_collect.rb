def my_collect(stuff)
i = 0
collects = []
while i < stuff.length
    collects << yield(stuff[i])
    i+= 1
end 
collects
end 

collection = ['ruby', 'javascript', 'python', 'objective-c']
my_collect(collection) do |lang|
  lang.upcase
end