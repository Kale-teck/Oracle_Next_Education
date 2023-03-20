//por não poder ser chamada diretamente, dar-se o nome de Classe Abstrata
//pois a classe Conta não pode ser herdada diretamente, apenas através de outras classes
export class Conta{
   constructor(saldoInicial, cliente, agencia) {
       if (this.constructor == Conta) {
         throw new Error('Você não deveria instanciar um objeto do tipo conta');
       }

      this._saldo = saldoInicial;
      this._cliente = cliente;
      this._agencia = agencia;

   }

   set cliente(novoValor){
      if(novoValor instanceof Cliente){
          this._cliente = novoValor;
      }
  }

  get cliente(){
      return this._cliente;
  }

  get saldo(){
      return this._saldo;
  }

   sacar(valor){
        let taxa = 1;
        return this._sacar(valor, taxa);
  }

  _sacar(valor, taxa) {
    const valorSacado = taxa * valor;
    if(this._saldo >= valorSacado){
        this._saldo -= valorSacado;
        return valorSacado;
    }

    return 0;
  }

  depositar(valor){
      this._saldo += valor;           
  }

  tranferir(valor, conta){

      const valorSacado = this.sacar(valor);
      conta.depositar(valorSacado);
  }
}