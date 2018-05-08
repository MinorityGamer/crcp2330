#reads in a command. checks if it's an a or a c command.  

if ARGV.length != 1
    puts "We need exactly one parameter. The name of a file."
    exit;
end
 
filename = ARGV[0]
puts "Going to open '#{filename}'"
 
fh = open filename
 
while (line = fh.gets) 
   target_words = line.split (" ")

target_words.each do |a_word|
    if a_word.start_with? '@'
      print "A instruction detected"
    else print "C instruction detected"
        a_word.split(" ").each do |i|
        puts i
        end
    end
end
end
 
fh.close

