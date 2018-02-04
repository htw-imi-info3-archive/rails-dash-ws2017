class OrdersController < ApplicationController
  before_action :set_locale, :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index

    @orders = Order.search(params[:term])
  #  @order_customer_pairs = @orders.map { |o| [o, o.customer] }

  end
  # GET /orders/1
  # GET /orders/1.json
  def show
    line_items = @order.line_items.includes(:pumpkin)
    @li_pumpkin_pairs = line_items.map { |li| [li, li.pumpkin] }
    @customer = @order.customer
  end

  # GET /orders/new
  def new
    @order = Order.new
  end
  #sets locale
   def set_locale
     I18n.locale = extract_locale_from_subdomain || I18n.locale = params[:locale] || I18n.default_locale
   end

   #extracts locale from possible subdomains
   def extract_locale_from_subdomain
       parsed_locale = request.subdomains.first
    I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
    end

  # GET /orders/1/edits
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:customer_id)
    end
end
