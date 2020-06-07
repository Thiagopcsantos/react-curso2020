import React, {Component} from 'react';
import original from './data/original.json'

class OriginalCar extends Component{
  render(){
    const{original, id} = this.props
    return (
      <li >
        <p>key {id}</p>
        <p><strong>Nombre: </strong>{original.name}</p>
        <p><strong>Marca: </strong>{original.company}</p>
      </li>
    )}
}

class App extends Component{
  render(){
    return(
      <div className= "App">
        <h2>Trabajando con listas</h2>
        <ul>
          {
            original.map(original =>{
              return <OriginalCar id ={original.id} key={original.id} 
              original = {original} />          
              
            })
          }
        </ul>
       
      </div>
    )
  }
}

export default App;