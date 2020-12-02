class Statement

  def show_statement(account)
    head_statement + body_statement(account)
  end

  def head_statement
    "date || credit || debit || balance\n"
  end

  def body_statement(account)
    account.transactions.reverse_each.map { |transaction| transaction.string_converter }.join("\n")
  end
end
