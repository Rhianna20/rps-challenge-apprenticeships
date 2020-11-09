class Start

  GAME_LOGIC = {
    rock: { rock: :draw, paper: :lose, scissors: :win },
    paper: { rock: :win, paper: :draw, scissors: :lose },
    scissors: { rock: :lose, paper: :win, scissors: :draw }
                 }

  attr_reader :playername, :computer_choice, :playerchoice

   def initialize(options)
      @playername = options["playername"]
      @computer_choice = options["computer_choice"]
      @playerchoice = options["playerchoice"]
      
      end
    def win?
        result == :win 
    end

    def lose?
        result == :lose
    end
    def draw?
       result == :draw
    end

    private
    
    def result
        return if @computer_choice.nil?
        GAME_LOGIC[@playerchoice][@computer_choice]
    end


end