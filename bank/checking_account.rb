require_relative 'account'

# Essa classe herda de Account, ou seja, tem tudo o que Account tem.

# Regra: a conta corrente tem limite de crédito para saque (conta padrão não tem limite).
class CheckingAccount < Account
  attr_accessor :limit

  # Aqui estamos invocando o initialize da classe Account
  # e passando os valores que serão recebidos no construtor dessa classe filha CheckingAccount.
  # Adicionamos o limit
  def initialize(number, owner, balance, limit)
    super(number, owner, balance, limit)
    @limit = limit
  end

  # Aqui sobreescrevemos o método withdraw:
  def withdraw(value)
    if (balance + limit) >= value
      self.balance -= value
    else
      puts 'Ops, não foi possivel executar o saque :('
    end
  end
end
