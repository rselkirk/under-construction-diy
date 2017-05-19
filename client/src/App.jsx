import React, {Component} from 'react';
import axios from 'axios';

class App extends Component {
  componentDidMount(){
    axios.get('/articles.json').then((articles) => {
      console.log('Articles', articles);
    }, (error) => {
      console.log('Error', error);
    })
  }
  render() {
    return (
      <h1>Hello React, you magnificent test :)</h1>
    );
  }
}
export default App;
