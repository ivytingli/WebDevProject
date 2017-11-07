import React, { Component } from 'react';
import './App.css';

class App extends Component {

  render() {
    return (
      <div className="App">
        <nav class="navbar navbar-inverse navbar-fixed-top">
          <div class="topnav" id="myTopnav">
            <p><a href="#home">Log In</a></p>
            <p><a href="#news">Register New Account</a></p>
          </div>
        </nav>


        <header className="App-header">
          <h1 className="App-title">Welcome to MangaLike!</h1>
        </header>
        <p className="App-intro">
          Please log in or register to start.
        </p>
      </div>
    );
  }
}

export default App;
