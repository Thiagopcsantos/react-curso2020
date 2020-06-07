mport React,  {Component} from 'react';
import logo from './logo.svg';
import './App.css';

class Hello extends Component{
  render(){
    return <h2>{this.props.title}</h2>

  }
}

class Text extends Component{
  render(){
    const{ 
      title,
      isActivated, 
      arrayOfNumbers, 
      multiplica,
      objectoInfo,      
     } = this.props

    const textoSegunBool = isActivated ? 'Cierto' : 'Falso'
    const mappedNumbers = arrayOfNumbers.map(multiplica)

    return (
      <div>
        {title}
        <p>{this.props.text}</p>
        <p>{this.props.number}</p>
        <p>{textoSegunBool}</p>
        <p>{mappedNumbers.join(', ')}</p>
        <p>{objectoInfo.key}</p>
      </div>
    )
  }
}


function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <Hello title='hello from props'/>        
      </header>

      <Text 
        title={<h1>Este es el titulo</h1>}
        arrayOfNumbers = {[2, 4, 123]}
        objectoInfo ={{key: 'value', key2: 'valeu2'}}
        multiplica={(number) => number * 4}
        number={2} 
        text='Texto en String' 
        boolean={true} />
        
    </div>
  );
}

export default App;

import React, {Component} from 'react';

class Contador extends Component{
  constructor(props){
    super(props)
    this.state = {contador: this.props.contadorInicial}
   setInterval(() =>{
     this.setState({ contador: this.state.contador +1 })
   },1000)
  }

  render(){
        return <ContadorNumero numero={this.state.contador}/>
  }
}
Contador.defaultProps= {
  contadorInicial : 0
}

class ContadorNumero extends Component{
  render(){
    console.log('ContadorNumero render()')
  return <span>{this.props.numero}</span>
  }
}

class App extends Component{
  render(){
    return(
      <div className="App">
        <p>Primer componente con state</p>
        <Contador contadorInicial={100}/>
      </div>
    );
  }

}
export default App;

class App extends Component{
  render(){
    const numbers = [1, 1, 3, 4, 5];
    return(
      <div className= "App">
        <h2>Trabajando con listas</h2>
        {numbers.map((number, index) => {
          return <p key={index}>Soy el numero {number}</p>
        })}
      </div>
    )
  }
}

export default App;