import { Cliente } from "./Cliente.js";
import { Conta } from "./Conta.js";

export class ContaCorrente extends Conta{
    static numeroDeContas = 0;
    constructor(cliente, agencia){
        super(0, cliente, agencia);//super referencia a classe mãe
        ContaCorrente.numeroDeContas += 1;
    }
}
