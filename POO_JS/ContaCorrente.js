export class ContaCorrente {
   // #saldo = 0; seria uma boa forma de definir atributo privado porém por convenção usa-se _saldo
   agencia; //atributos de uma classe
   cliente;
   
   _saldo = 0;

   sacar(valor) { //métodos são funções de uma classe (dos objetos dela)
      if (this._saldo >= valor) {
         this._saldo -= valor;
         return valor;
      }
   }

   depositar(valor) { //método
      if (valor <= 0) {
         return;
      }
      this._saldo += valor;
   }

   transferir(valor, conta) {
      const valorSacado = this.sacar(valor);
      conta.depositar(valorSacado)
   }
}