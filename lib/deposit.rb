class Deposit < Transaction

  def string_converter
    date = @date.strftime("%d/%m/%Y")
    deposit_amount = '%.2f' % @amount

    "#{date} || #{deposit_amount} || || "
  end
end
