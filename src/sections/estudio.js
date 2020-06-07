import React, {Component} from 'react';


class EstouCerto1 extends Component{
    render(){
        return <h2>SIM vc esta Indo bem</h2>
    }
}

class EstouCerto2 extends Component{
    render(){
        return <h1>Muito bem COntinue assim</h1>
    }
}

function condicionFuncionando (iniciar1) {
    if(iniciar1){
        return <EstouCerto1 />
    }
    return <EstouCerto2 />
}


export default class Estudio2 extends Component{
    constructor(){
        super()
        this.state = {iniciar1: false}
    }
    render(){
        return(
            <div>
                <h1>Novo exercicio</h1>
                {condicionFuncionando(this.state.iniciar1)}
            </div>
        )
    }
}