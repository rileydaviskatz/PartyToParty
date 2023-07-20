import './App.css';
import NavBar from './components/navBar';
import CategoryView from './components/categoryView';
import { BrowserRouter as Router, Switch, Route, RedirectFunction,} from "react-router-dom";
import About from './components/Pages/About';
import CategoriesPage from './components/categoriesPage';
import Updates from './components/Pages/Updates';
const App = () => {
  return (
  <> 
    
    <NavBar></NavBar>
    <CategoryView>
    </CategoryView>
  </>
  )
}

export default App;
