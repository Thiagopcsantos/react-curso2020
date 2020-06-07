import React, {Component} from 'react';


class App extends Component{
  constructor(){
    super()
    this.state = {mouseX: 0 , mouseY:0}
    //this.handleMouseMove = this.handleMouseMove.bind(this)
  }

  handleMouseMove = (e)=> {
    const {clientX, clientY} = e
    this.setState({mouseX: clientX, mouseY: clientY})
  }


  handleClick (e){
    console.log(e)
    alert('Hola Maximo')
  }

  render(){
    return(
      <div className="App">
       <h1>Eventos </h1>
       <button onClick={this.handleClick}>Clique aquí</button>
        <div 
          onMouseMove= {this.handleMouseMove}
          style={{border: '1px solid #000', marginTop: 10, paddin: 10}}>            
            <p>{this.state.mouseX}, {this.state.mouseY}</p>
        </div>
      </div>      
    );
  }
}

export default App;