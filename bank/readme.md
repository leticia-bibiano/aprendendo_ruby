# Pasta bank

Essa pasta 'bank' simula um sistema de banco, contendo conta bancária principal que é o account.rb e também um outro tipo de conta, a conta corrente, no arquivo checking_account.rb.

Aqui relembrei conceitos importantes de orientação à objetos:

+ Em ruby TUDO É OBJETO. Tudo tem uma class e podemos descobrir isso com `objeto.class`.

+ Podemos ver a quais métodos esse objeto responde (O que ele faz?) com `objeto.methods`

+ O conceito de herança é muito utilizado, nesse exemplo temos a classe pai Account e a classe CheckingAccount sendo sua herdeira(filha). A classe filha herda tudo o que a classe pai tem, podemos sobreescrever os métodos da classe pai ou adicionar novos métodos que pertencem apenas à classe filha.