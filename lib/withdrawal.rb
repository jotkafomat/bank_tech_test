class Withdrawal < Transaction


  def string_converter
    date = @date.strftime("%d/%m/%Y")
    withdrawal_amount = '%.2f' % -@amount

    "#{date} || || #{withdrawal_amount} || "
  end
end
