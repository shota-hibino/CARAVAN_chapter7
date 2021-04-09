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
    # データを新規登録するためのインスタンス作成
    blog = Blog.new(blog_params)
    # データをデータベースに保存するためのsaveメソッド実行
    blog.save
    # リダイレクト
    redirect_to blogs_path
  end

  def edit
  end

  private
  # ストロングパラメータ
  def blog_params
    params.require(:blog).permit(:title, :category, :body)
  end

end
