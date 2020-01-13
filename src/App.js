import React from 'react';
import logo from './logo.svg';
import './App.css';

function App() {

  const [date, setDate] = React.useState(null);
  React.useEffect(() => {
    async function getDate() {
      const res = await fetch('/api/date');
      console.log(res)
      const newDate = await res.text();
      console.log(newDate)
      setDate(newDate);
    }
    getDate();
  }, []);

  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      <p>{date ? date : 'Loading date...'}</p>
      </header>
    </div>
  );
}

export default App;
