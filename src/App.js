
import './App.css';
import { Header } from './Header';

import {Footer} from './Footer';


import Content from './Content';
import Article from './Article';
import { ContentAsFunction } from './ContentAsFunction';
import { FetchDate } from './FetchDate';
import { CrudComponent } from './CrudComponent';

function App() {
  const emailLink={"mail":'ram@abc.com',"text":'Administrator'}
  return (
    <div className='container'>
    <div className="row">
      <Header heading='Sai taxi service'></Header>
      </div>
      <div>
        <div className='row'>
         
          
        <ContentAsFunction></ContentAsFunction>
        
        <CrudComponent></CrudComponent>
        </div>
      </div>
      <div className="row">
      <Footer designer={'ABC Corporation'} email={emailLink}></Footer>
      
      </div>
        
    </div>
  );
}

export default App;
