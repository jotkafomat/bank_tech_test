class Statement

  def initialize(transactions)
    @transactions = transactions.reverse
  end

  def show_statement
    header + body
  end

  private
  def header
    "date || credit || debit || balance\n"
  end

  def body
    transaction_rows
      .zip(balances_after_each_transaction)
      .map { |row| row[0] + "#{row[1]}" }
      .reverse
      .join("\n")
  end

  def transaction_rows
    @transactions
      .map { |transaction| transaction.to_s }
  end

  def balances_after_each_transaction
    1.upto(@transactions.length)
      .map { |number|
        '%.2f' % amounts
          .take(number)
          .sum
    }
  end

  def amounts
    @transactions
      .map { |transaction| transaction.amount }
  end

end
