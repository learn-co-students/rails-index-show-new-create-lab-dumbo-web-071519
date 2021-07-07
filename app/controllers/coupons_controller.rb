class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def new
        # @coupon=Coupon.new
    end

    def create
        @coupon=Coupon.create(coupon_params)
       
        redirect_to @coupon
    end

    def show
        @coupon=Coupon.find(params[:id])
    end

    def edit
         @coupon=Coupon.find(params[:id])
    end

    def update
        @coupon.coupon_code=params[:coupon_code]
        @coupon.store=params[:store]
        @coupon.update
        redirect_to @coupon
    end

    def destroy
        @coupon=Coupon.find(params[:id])
        @coupon.destroy
        redirect_to coupons_path
    end

    def coupon_params
        params.require(:coupon).permit(:coupon_code, :store)
      end


end