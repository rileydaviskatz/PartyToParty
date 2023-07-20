import React from "react";
import { Routes, Route } from "react-router-dom";
import About from "./About";
import Updates from "./Updates";
import CategoriesPage from "../categoriesPage";


const Redirects = () => {
  return (
    <Routes>
      <Route exact path="/About" element={<About />} />
      <Route exact path="/Updates" component={<Updates />} />
      <Route exact path="/AllCategories" component={<CategoriesPage />} />
    </Routes>
  );
};

export default Redirects;