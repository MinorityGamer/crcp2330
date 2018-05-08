#CURRENT GOALS: 1) TRY TO GET IT TO READ A LINE 2) GET IT TO RECOGNIZE A or C instructions
# Secondary Goals: 1) convert a instructions 2) convert c instructions
#tertiary goals: 1) get it to handle symbols 
#ruby sample code.
# process every line in a text file with ruby (version 2).
class Parser
  def initialize(fileName,currChar,array_currInstructions)
    @fileName = fileName
    @currChar = currChar
    @array_currInstructions = array_currInstructions
  end
  def createTable
    #creates conversion table 
  end
  def readLabels
    #reads through files and creates a table of labels 
  def readIt
    #reads through files and calls whatIs
  def whatIs
    #checks if it's a or c based off of the first bit 
      #if it's a or c call a converter
    #if it's a comment ignore it 
  end
  def convertA
    
  end
  def convertC
    #-Then need to break down each into it's parts 
	#-what instruction is it? Dest? Comp? Jump?
	#Ex: Of Parser and converter 
#String c = parser.comp(); "M+1"
#String d = parser.dest(); "D"
#String j = parser.jump(); "JGT'
#String biC = code.comp(c ); //"1110111"
#String biD = code.dest(d); //"010"
#String biJ = code.jump(j); //"001"

String converted = "111"+biC+biD+biJ
  end 
    
end

