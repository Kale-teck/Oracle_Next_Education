import { Conta } from "./Conta.js";

export class ContaCorrente extends Conta{
    static numeroDeContas = 0;
    constructor(cliente, agencia){
        super(0, cliente, agencia);//super referencia a classe mãe
        ContaCorrente.numeroDeContas += 1;
    }

    //está sobreescrevendo o compoprtamento de sacar
    sacar(valor){
        let taxa = 1.1
        //por não usar o super esse método sacar(valor) != do que existe em Conta
        const valorSacado = taxa * valor;
        
        return this._sacar(valor, taxa);
    }
}
