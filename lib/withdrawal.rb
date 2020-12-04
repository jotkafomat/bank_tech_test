class Withdrawal < Transaction


  def string_converter
    date = @date.strftime("%d/%m/%Y")
    withdrawal_amount = '%.2f' % -@amount
    account_balance = '%.2f' % @account_balance

    "#{date} || || #{withdrawal_amount} || #{account_balance}"
  end
end
