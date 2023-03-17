class Cliente {
   nome;
   cpf;
}

class ContaCorrente {
   // #saldo = 0; seria uma boa forma de definir atributo privado porém por convenção usa-se _saldo
   agencia;
   _saldo = 0;

   sacar(valor) {
      if (this._saldo >= valor) {
         this._saldo -= valor;
         return valor;
      }
   }

   depositar(valor) {
      if (valor <= 0) {
         return;
      }
      this._saldo += valor;
   }
}

const cliente1 = new Cliente();
cliente1.nome = 'Ricardo';
cliente1.cpf = 11122233309;

const cliente2 = new Cliente();
cliente2.nome = 'Alice';
cliente2.cpf = 8882223309;

const contaCorrenteRicardo = new ContaCorrente();
contaCorrenteRicardo.agencia = 1001;


contaCorrenteRicardo.depositar(-100);
contaCorrenteRicardo.depositar(100);
contaCorrenteRicardo.depositar(100);
valorSacado = contaCorrenteRicardo.sacar(50);

console.log(valorSacado)
console.log(contaCorrenteRicardo)