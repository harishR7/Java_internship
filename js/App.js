
import './App.css';
import { Header } from './Header';

import {Footer} from './Footer';

function App() {
  const emailLink={"mail":'ram@abc.com',"text":'Administrator'}
  return (
    <div className="App">
      <Header heading='Sai taxi service'></Header>
      <Footer designer={'ABC Corporation'} email={emailLink}></Footer>
      
    
        
    </div>
  );
}

export default App;
