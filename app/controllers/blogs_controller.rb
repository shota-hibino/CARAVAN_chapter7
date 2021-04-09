class BlogsController < ApplicationController
  def index
  end

  def show
  end

  def new
    # Viewへ渡すためのインスタンス変数に空のモデルオブジェクトを生成する。
    @blog = Blog.new
  end

  def create
  end

  def edit
  end
end
