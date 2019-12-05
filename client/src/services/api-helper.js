import axios from 'axios';

const api = axios.create({
  baseURL: "http://localhost:3000"
});

// ============== Auth ================
export const registerUser = async (registerData) => {
  try {
    const response = await api.post('/users', registerData);
    api.defaults.headers.common.authorization = `Bearer ${response.data.token}`;
    localStorage.setItem('authToken', response.data.token);
    return response.data.user;
  } catch (e) {
    return { error: "Invalid Credentials" };
  }
}

export const loginUser = async (loginData) => {
  try {
    const response = await api.post('/users/login', loginData, { headers: {} });
    api.defaults.headers.common.authorization = `Bearer ${response.data.token}`;
    localStorage.setItem('authToken', response.data.token);
    return response.data.user;
  } catch (e) {
    return { error: "Invalid Credentials" };
  }
}

export const verifyUser = async () => {
  const token = localStorage.authToken;

  if (token) {
    api.defaults.headers.common.authorization = `Bearer ${token}`;
    const response = await api.get('/users/verify');
    return response.data;
  }
  return false;
}

export const putUser = async (user_id, userData) => {
  const response = await api.put(`/users/${user_id}`, userData);
  return response.data;
}

// ============== Recipes ================
export const getAllRecipes = async () => {
  const response = await api.get('/recipes');
  return response.data;
}

export const getOneRecipe = async (recipe_id) => {
  const response = await api.get(`/recipes/${recipe_id}`);
  return response.data;
}

export const getAllUserRecipes = async (user_id) => {
  const response = await api.get(`/users/${user_id}/recipes`);
  return response.data;
}

export const postRecipe = async (user_id, recipeData) => {
  const response = await api.post(`/users/${user_id}/recipes`, recipeData);
  return response.data;
}

export const putRecipe = async (recipe_id, recipeData) => {
  const response = await api.put(`/recipes/${recipe_id}`, recipeData);
  return response.data;
}

export const deleteRecipe = async (recipe_id) => {
  const response = await api.delete(`/recipes/${recipe_id}`);
  return response.data;
}

// ============== Comments ================

export const getAllComments = async (recipe_id) => {
  const response = await api.get(`/recipes/${recipe_id}/recipe_comments`)
  return response.data
}

export const postComment = async (recipe_id, commentData) => {
  const response = await api.post(`/recipes/${recipe_id}/recipe_comments`, commentData);
  return response.data
}

export const putComment = async (comment_id, commentData) => {
  const response = await api.put(`/recipes/:recipe_id/comments/${comment_id}`, commentData);
  return response.data;
}

export const deleteComment = async (comment_id) => {
  const response = await api.delete(`/recipes/:recipe_id/comments/${comment_id}`);
  return response.data;
}