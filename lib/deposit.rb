class Deposit < Transaction

  def to_s
    date = @date.strftime("%d/%m/%Y")
    deposit_amount = '%.2f' % @amount

    "#{date} || #{deposit_amount} || || "
  end
end
