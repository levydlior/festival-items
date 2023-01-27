import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';
import reportWebVitals from './reportWebVitals';
import { Auth0Provider } from "@auth0/auth0-react";


const root = ReactDOM.createRoot(
  document.getElementById('root') as HTMLElement
);
root.render(
  <Auth0Provider
  domain="http://localhost:4000/"
  clientId="test"
  authorizationParams={{
    redirect_uri: window.location.origin
  }}
>
  <React.StrictMode>
    <App />
  </React.StrictMode>
  </Auth0Provider>,
);

reportWebVitals();
