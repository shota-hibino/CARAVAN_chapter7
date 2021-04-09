class BlogsController < ApplicationController
  def show
    # 記事のidを取得して、インスタンス変数としてViewへ渡す
     @blog = Blog.find(params[:id])
  end

  def index
    # Blogモデル内のすべての投稿記事データを取得
    @blogs = Blog.all
  end

  def new
    # Viewへ渡すためのインスタンス変数に空のモデルオブジェクトを生成
    @blog = Blog.new
  end

  def create
    # データを新規登録するためのインスタンス作成
    blog = Blog.new(blog_params)
    # データをデータベースに保存するためのsaveメソッド実行
    blog.save
    # 詳細ページへリダイレクト
    redirect_to blog_path(blog.id)
  end

  def edit
    # データベースから投稿データを探し、インスタンス変数としてviewへ渡す
    @blog = Blog.find(params[:id])
  end

  def update
    # データベースから投稿データを探し、blogに渡す
    blog = Blog.find(params[:id])
    # 記事を更新
    blog.update(blog_params)
    # 記事の詳細ページにリダイレクト
    redirect_to blog_path(blog)
  end

  def destroy
    # データベースから投稿データを探し、blogに渡す
    blog = Blog.find(params[:id])
    # 投稿データを削除する
    blog.destroy
    # 一覧ページにリダイレクト
    redirect_to blogs_path
  end

  private
  # ストロングパラメータ
  def blog_params
    params.require(:blog).permit(:title, :category, :body)
  end

end
