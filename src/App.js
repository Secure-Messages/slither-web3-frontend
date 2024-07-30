import React, { useEffect } from 'react';
import './App.css';

function App() {
  useEffect(() => {
    window.Telegram.WebApp.ready();
  }, []);

  const sendData = () => {
    const data = { message: 'Hello from React Mini App!' };
    window.Telegram.WebApp.sendData(JSON.stringify(data));
    window.Telegram.WebApp.close();
  };

  return (
      <div className="App">
        <header className="App-header">
          <h1>Welcome to React Telegram Mini App</h1>
          <button onClick={sendData}>Send Data</button>
        </header>
      </div>
  );
}

export default App;
