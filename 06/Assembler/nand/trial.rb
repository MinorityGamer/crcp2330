#reads in a command. checks if it's an a or a c command.

if ARGV.length != 1
    puts "we need a file."
    exit;
end
 
filename = ARGV[0]
puts "Going to open '#{filename}'"
 
fi = open filename
 
while (line = fi.gets) 
   target_words = line.split (" ")

target_words.each do |a_word|
    if a_word.start_with? '@'
      print "A instruction detected"
      #call A command and send in the a_word
    else
        print "C instruction detected"
        a_word.split(" ").each do |i|
           #call command and sen each of the words split           
           puts i
        end
    end
end
end
 
fi.close

