class LinksController < ApplicationController
  def new
    @link = Link.new
  end

  def create
    @link = Link.create(original: params[:link][:original], short: generate_short_code)
    render :new
  end

  def show
    @link = Link.find_by(short: params[:short])
    if @link
      url = @link.original
      url = "http://#{url}" unless url =~ /\Ahttp(s)?:\/\//
      redirect_to url, allow_other_host: true
    else
      render plain: "URL not found", status: :not_found
    end
  end

  private

  def generate_short_code
    loop do
      code = SecureRandom.urlsafe_base64(4).tr("-_", "0a")[0, 6]
      break code unless Link.exists?(short: code)
    end
  end
end
