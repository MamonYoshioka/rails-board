class BoardsController < ApplicationController

  # 新規投稿アクション
  def new
    @board = Board.new
  end
  # 新規登録アクション(内容保存)
  def create
    board = Board.new(board_params)
    board.save
    redirect_to boards_path
  end

  # 一覧ページ表示アクション
  def index
    @boards = Board.all
  end

  # 詳細アクション
  def show
    @board = Board.find(params[:id])
  end

  # 編集アクション
  def edit
    @board = Board.find(params[:id])
  end
  # 更新アクション
  def update
    board = Board.find(params[:id])
    board.update(board_params)
    redirect_to board
  end



  # ストロングパラメータ
  private
  def board_params
    params.require(:board).permit(:name, :title, :body)
  end

end
