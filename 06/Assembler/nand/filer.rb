# ruby sample code.
# process every line in a text file with ruby (version 2).
class Parser
  def initialize(fileName,currChar,array_currInstructions)
    @fileName = fileName
    @currChar = currChar
    @array_currInstructions = array_currInstructions
    
  end
  def readIt
  end
  def anyMore
  end
  def advance
  end
  def isComment
  end

end

#assembler opens file
#reads first 'word' and puts temporarily in an variable
#then looks at the most significant bit and if it's @
#then it's an A instruction
#if it's not then it's a c instruction
