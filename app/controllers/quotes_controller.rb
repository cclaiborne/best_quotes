# best_quotes/app/controllers/quotes_controller.rb
# testing out rerun
class QuotesController < Rulers::Controller
  def a_quote
    render :a_quote, :noun => :winking
  end

  def quote_1
    quote_1 = Rulers::Model::FileModel.find(1)
    render :quote, :obj => quote_1
  end

  def exception
    raise "It's a bad one!"
  end

  def index
    @quotes = FileModel.all
    render :index, :quotes => quotes
  end

  def new_quote
    attrs = {
      "submitter" => "web user",
      "quote" => "A picture is worth one k pixels",
      "attribution" => "Me"
    }
    m = FileModel.create attrs
    render :quote, :obj => m
  end

  def update_quote
    attrs = {
      "id" => "1",
      "submitter" => "another user",
      "quote" => "Lorem ipsum",
      "attribution" => "Me again"
    }
    m = FileModel.update attrs
    render :quote, :obj => m
  end

  def show
    @quote = FileModel.find(params["id"])
    ua = request.user_agent
    render_response :quote, :obj => quote, :ua => ua
  end

end
