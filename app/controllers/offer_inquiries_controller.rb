class OfferInquiriesController < ApplicationController
  before_action :set_inquiry, only: [:show]
  before_action :authenticate_user!, except: [:new, :create]

  def index
    @inquiries = OfferInquiry.all
  end

  def show
  end

  def new
    @offer = Offer.find(params[:id])
    @inquiry = OfferInquiry.new
  end

  def create
    @inquiry = OfferInquiry.new(inquiry_params)
    @inquiry.offer_id = params[:id]

    respond_to do |format|
      if @inquiry.save
        format.html { redirect_to :back, notice: 'Your message was sent' }
        format.json { render :show, status: :created, location: @offer }
      else
        format.html { render :new }
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_inquiry
      @inquiry = OfferInquiry.find(params[:id])
    end

    def inquiry_params
      params.require(:offer_inquiry).permit!
    end
end
