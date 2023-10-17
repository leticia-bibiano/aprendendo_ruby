class Account
  attr_reader :number, :owner # libera a leitura do atributo
  attr_accessor :balance # libera a leitura e escrita(podemos modificar) do atributo

  # O método initialize sempre está presente na classe.
  # Quando formos instanciar a classe 'Class.new' ela vai sempre chamar o def initialize
  def initialize(number, owner, balance)
    @number = number
    @owner = owner
    @balance = balance
  end

  def withdraw(value)
    if balance >= value
      self.balance -= value
    else
      puts 'Ops, não foi possivel executar o saque :('
    end
  end

  def deposit(value)
    self.balance += value
  end

  def transfer(another_account, value)
    withdraw(value)

    another_account.deposit(value)
  end
end
