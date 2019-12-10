import React from 'react';
import './App.css';
import { Route, withRouter } from 'react-router-dom';
import { loginUser, registerUser, verifyUser, getAllRecipes, getAllUserRecipes, deleteRecipe, postRecipe, putRecipe, putUser } from './services/api-helper';
import LoginForm from './components/LoginForm';
import RegisterForm from './components/RegisterForm';
import Header from './components/Header';
import MainPage from './components/MainPage';
import FullRecipe from './components/FullRecipe';
import UserRecipes from './components/UserRecipes';
import CreateRecipe from './components/CreateRecipe';
import EditRecipe from './components/EditRecipe';
import UpdateUser from './components/UpdateUser';
import Footer from './components/Footer';

class App extends React.Component {
  constructor() {
    super();
    this.state = {
      currentUser: null,
      authErrorMessage: '',
      recipes: [],
      currentUserRecipes: [],
      toggle: true
    }
  }

  handleLogin = async (loginData) => {
    const currentUser = await loginUser(loginData);
    if (currentUser.error) {
      this.setState({
        authErrorMessage: currentUser.error
      })
    } else {
      this.setState({ currentUser })
      this.props.history.push('/recipes')
    }
  }

  handleRegister = async (registerData) => {
    const currentUser = await registerUser(registerData)
    if (currentUser.error) {
      this.setState({
        authErrorMessage: currentUser.error
      })
    } else {
      this.setState({ currentUser })
      this.props.history.push('/')
    }
  }

  handleLogout = async () => {
    this.setState({
      currentUser: null
    })
    localStorage.removeItem('authToken');
    this.props.history.push('/')
  }

  handleVerify = async () => {
    const currentUser = await verifyUser();
    if (currentUser) {
      this.setState({ currentUser });
    }
    return currentUser;
  }

  readAllRecipes = async () => {
    const recipes = await getAllRecipes();
    recipes.sort(function (a, b) {
      return new Date(b.createdAt) - new Date(a.createdAt)
    })
    this.setState({ recipes })
  }

  allUserRecipes = async (userId) => {
    const userRecipes = await getAllUserRecipes(userId);
    userRecipes.sort(function (a, b) {
      return new Date(b.createdAt) - new Date(a.createdAt);
    })
    this.setState({
      currentUserRecipes: userRecipes
    })
  }

  async componentDidMount() {
    const currentUser = await this.handleVerify();
    await this.readAllRecipes();
    if (currentUser) {
      this.allUserRecipes(currentUser.id);
    }
  }

  // =========== Forms ===========
  createRecipe = async (user_id, recipeData) => {
    const response = await postRecipe(user_id, recipeData);
    const newRecipe = response
    this.setState(prevState => ({
      recipes: [newRecipe, ...prevState.recipes],
      currentUserRecipes: [newRecipe, ...prevState.currentUserRecipes]
    }))
    this.props.history.push('/recipes')
  }

  handleDelete = async (event) => {
    const id = event.target.id
    await deleteRecipe(id)
    this.setState(prevState => ({
      recipes: [...prevState.recipes.filter(recipe => { return recipe.id !== parseInt(id) })],
      currentUserRecipes: [...prevState.currentUserRecipes.filter(currentRecipe => { return currentRecipe.id !== parseInt(id) })]
    }))
    this.props.history.push('/recipes')
  }

  handleEdit = async (id, formData) => {
    const newRecipe = await putRecipe(id, formData);
    this.setState(prevState => ({
      recipes: [...prevState.recipes.map(recipe => recipe.id === newRecipe.id ? newRecipe : recipe)],
      currentUserRecipes: [...prevState.currentUserRecipes.map(currentRecipe => currentRecipe.id === newRecipe.id ? newRecipe : currentRecipe)]
    }))
    this.props.history.push(`/full_recipe/${id}`)
  }

  handleEditUser = async (id, formData) => {
    const newUser = await putUser(id, formData);
    this.setState(prevState => ({
      currentUser: (prevState.currentUser.id === newUser.id ? newUser : this.state.currentUser)
    }))
    this.props.history.push('/recipes')
  }

  handleToggle = () => {
    this.setState(prevState => ({
      toggle: !this.state.toggle
    }))
  }

  render() {
    return (
      <div className="App">
        {
          this.state.currentUser ?
            <Header handleToggle={this.handleToggle}/> : <div></div>
        }

        {
          this.state.currentUser && this.state.recipes ?
            <Route exact path="/recipes" render={() => (<MainPage toggle={this.state.toggle} recipes={this.state.recipes} currentUser={this.state.currentUser} currentUserRecipes={this.state.currentUserRecipes} handleLogout={this.handleLogout} />)} /> :
            <div></div>
        }

        <Route exact path="/" render={() => (<LoginForm handleLogin={this.handleLogin} authErrorMessage={this.state.authErrorMessage} />)} />
        <Route path='/register' render={() => (<RegisterForm handleRegister={this.handleRegister} authErrorMessage={this.state.authErrorMessage} />)} />

        <Route path="/full_recipe/:id" render={(props) => (<FullRecipe id={props.match.params.id} recipes={this.state.recipes} oneRecipe={this.state.oneRecipe} currentUserRecipes={this.state.currentUserRecipes} currentUser={this.state.currentUser} handleDelete={this.handleDelete} />)} />
        <Route path="/user_recipes/:id" render={(props) => (<UserRecipes allUserRecipes={this.allUserRecipes} id={props.match.params.id} />)} />

        <Route path='/recipes/new' render={() => (<CreateRecipe currentUser={this.state.currentUser} createRecipe={this.createRecipe} />)} />
        <Route path="/edit/:id" render={(props) => (<EditRecipe id={props.match.params.id} handleChange={this.handleChange} handleEdit={this.handleEdit} currentUser={this.state.currentUser} />)} />
        <Route path="/update_profile/:id" render={(props) => (<UpdateUser id={props.match.params.id} currentUser={this.state.currentUser} handleEditUser={this.handleEditUser} />)} />

        {
          this.state.currentUser ?
            <Footer /> : <></>
        }
      </div>
    );
  }
}

export default withRouter(App);