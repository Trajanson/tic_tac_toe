class GamesController < ApplicationController
  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to games_path
  end
  
  def index
    @games = Game.all
  end
  
  def new
  end
  
  def edit
    @game = Game.find(params[:id])
  end

  
  def create
    @game = Game.new(params[:game])
    assign_roles
    @game.save
    redirect_to @game
  end
  
  def show
    @game = Game.find(params[:id])
    create_standardized_game_board_to_read #FOR DEBUG______________________________________________________________________________________________________________________
    @currently_available_moves = identify_available_moves(@standardized_current_game_board) # FOR DEBUG ________________________________________________________________________
  end
  
  def update
    @game = Game.find(params[:id])
    if @game.update(game_params)
      redirect_to @game
    else render 'edit'
    end
  end
  
  # HELPER FUNCTIONS ##########################################################
  def assign_roles
    @game.player1_role = ["X", "O"].sample
    if @game.player1_role == "X"
      @game.player2_role = "O"
    else
      @game.player2_role = "X"
    end    
  end
  
  def create_standardized_game_board_to_read
    @standardized_current_game_board = [] # ex: ["1","2","3","X","5","O","7","8","9"]
    for i in 1..9
      if @game.send("box#{i}" ) == @game.player1_role
        @standardized_current_game_board << @game.player1_role
      elsif @game.send("box#{i}") == @game.player2_role
        @standardized_current_game_board << @game.player2_role
      else
        @standardized_current_game_board << i.to_s
      end
    end
  end
  
  def identify_available_moves(standardized_game_board)
    available_moves = []
    for i in 0..8
      if (standardized_game_board[i] != @game.player1_role) && (standardized_game_board[i] != @game.player2_role)
        available_moves << (i+1).to_s
      end
    end
    return available_moves # ex: ["1","3","9"]
  end

  
  # END HELPER FUNCTIONS ##########################################################  
  
  
  
  
  
  
  
  
  
  
private
  def game_params
    params.require(:game).permit(:box1,:box2,:box3,:box4,:box5,:box6,:box7,:box8,:box9)
  end
  
end
