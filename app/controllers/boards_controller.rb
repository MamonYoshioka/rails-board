class BoardsController < ApplicationController

  # 新規投稿
  def new
    @board = Board.new
  end

  # 一覧ページ
  def index
  end
end
