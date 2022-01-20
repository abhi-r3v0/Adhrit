import React from "react";
import ReactDOM from "react-dom";
import "./index.css";
import App from "./App/App";
import { transitions, positions, Provider as AlertProvider } from "react-alert";
import AlertTemplate from "react-alert-template-basic";
import reportWebVitals from "./reportWebVitals";

const options = {
  // you can also just use 'bottom center'
  position: positions.BOTTOM_RIGHT,
  type: "error",
  timeout: 5000,
  offset: "30px",
  // you can also just use 'scale'
  transition: transitions.SCALE,
};

ReactDOM.render(
  <AlertProvider template={AlertTemplate} {...options}>
    <React.StrictMode>
      <App />
    </React.StrictMode>
  </AlertProvider>,
  document.getElementById("root")
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
