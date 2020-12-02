class Statement

  def show_statement(transactions)
    head_statement + body_statement(transactions)
  end

  private
  def head_statement
    "date || credit || debit || balance\n"
  end

  def body_statement(transactions)
    transactions.reverse_each.map { |transaction| transaction.string_converter }.join("\n")
  end
end
