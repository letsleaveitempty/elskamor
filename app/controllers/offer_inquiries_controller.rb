class OfferInquiriesController < ApplicationController
  before_action :authenticate_user!, except: [:new, :create]

  def index
    @inquiries = OfferInquiry.all
  end

  def show
    @inquiry = OfferInquiry.find(params[:id])
  end

  def new
    @offer = Offer.find(params[:id])
    @inquiry = OfferInquiry.new
  end

  def create
    @inquiry = OfferInquiry.new(inquiry_params)
    @inquiry.offer_id = params[:id]

    if @inquiry.save
      flash[:notice] = "Your message has been sent! We will contact you shortly"
      redirect_to offer_path(params[:id])
    else
      flash[:notice] = "Following fields are required: #{@inquiry.errors.messages.values.join(', ')}. Please fill it in."
      redirect_to :back
    end

    # respond_to do |format|
    #   if @inquiry.save
    #     # redirect_to offer_path(params[:id])
    #     # flash[:notice] = "Your message has been sent! We will contact you shortly"
    #     format.html { redirect_to :offer_path,
    #       flash[:notice] = "Your message has been sent! We will contact you shortly" }
    #     # format.json { render :show, status: :created, location: @offer }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @offer.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  private
    def inquiry_params
      params.require(:inquiry).permit!
    end
end
