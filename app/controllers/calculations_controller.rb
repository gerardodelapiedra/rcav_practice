class CalculationsController < ApplicationController
  def instructions
  end

  def sqrt

    @number = params[:number]
    @sqrt = Math.sqrt(@number.to_i).round(2)

  end

  def sqr

    @number = params[:number]
    @sqr = @number.to_i**2

  end


  def payment

    @interest = params[:i].to_f
    @period = params[:m].to_i
    @principal = params[:principal].to_f

    @payment = (@interest/100 * @principal)/(1 - (1 + @interest/100)**-@period).round(2)
    @pmt = @payment.round(2)


  end
end
