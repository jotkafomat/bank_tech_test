class Statement

  def show_statement(transactions)
    head_statement + body_statement(transactions)
  end

  private
  def head_statement
    "date || credit || debit || balance\n"
  end

  def body_statement(transactions)
    partial_transactions(transactions)
      .zip(partial_balance(transactions)).map { |row|
        row[0] + "#{row[1]}" }.reverse.join("\n")
  end

  def partial_transactions(transactions)
    transactions
      .reverse_each
      .map { |transaction| transaction.string_converter }
  end

  def partial_balance(transactions)
    1.upto(transactions.length)
      .map { |number|
        '%.2f' % amounts(transactions)
          .take(number)
          .sum
    }
  end

  def amounts(transactions)
    transactions
    .reverse_each
    .map { |transaction| transaction.amount }
  end

end
