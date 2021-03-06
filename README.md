# realtors-inc
https://realtors-inc.netlify.app/
## Overview

realtors-inc is a full CRUD web app built using React and Rails for property market.


<br>

### Goals

- Set up backend for full crud
- Create association and seed the data
- Deploy backend on heroku
- Set up frontend structure
- Create a full crud functionality for frontend and render data on the browser
- Start styling and work on post MVP goals
- Deploy on netflify
- refactor and clean the code.

<br>

### Libraries and Dependencies

|     Library      | Description                                |
| :--------------: | :----------------------------------------- |
|      Axios       | used to make HTTP requests from the server|
|   React Router Dom   | allow us to use DOM-aware compnents like <link> |
| bycrypt| for password security |
|     Rack-cors    | for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible |
|  JWT | for token based authentication|

<br>

### Client (Front End)

#### Wireframes

![Desktop Wireframe Link](https://whimsical.com/realtors-inc-9qLSpADRvPQ1iBVr7vEN4E)

- Desktop Landing

![Landing page](https://i.imgur.com/occJknU.png)

- Desktop Hero

![After Login](https://i.imgur.com/my1T36C.png)

- Desktop 
![Agents page](https://i.imgur.com/apTxmxq.png)


#### Component Tree

[Component Tree Sample](https://whimsical.com/component-tree-9KKNq7SgHxNugQxkEiB2Pk)

#### Component Architecture

``` structure

src
|__ assets/
      |__ fonts
      |__ graphics
      |__ images
      |__ mockups
|__ components/
      |__ Header.jsx
      |__ Modal.jsx
|__ containers/
      |__ PropertyContainer/
        |__ PropertyContainer.jsx
|__ layouts/
        |__ Layout.jsx
|__ screens/
      |__ Login/
        |__ Login.jsx
      |__ Register/
        |__ Register.jsx
      |__ PropertyCreate/
        |__ PropertyCreate.jsx
      |__ PropertyDetail/
        |__ PropertyDetail.jsx
      |__ PropertyEdit/
        |__ PropertyEdit.jsx
      |__ Properties/
        |__ Properties.jsx      
|__ services/
     |__ api-config.js
     |__ auth.js
     |__ properties.js
     |__ agents.js
|__ App.js
|__ index.js
```

#### Time Estimates


| Task                | Priority | Estimated Time | Time Invested | Actual Time |
| ------------------- | :------: | :------------: | :-----------: | :---------: |
| Create Backend full CRUD |    H     |     4 hrs      |   6 hrs     |    6 hrs    |
| Deploy backend   |    H     |     30 min      |  30 min      |  30 min   |
| Setup frontend structure   |    H     |     1 hrs      |   3 hrs    |  3 hrs    |
| Add Landing page   |    L     |     1.5hrs    |    2 hrs     |  2 hrs     |
| Add Register/Login function   |    H     |     2 hrs      |    3 hrs     |   3 hrs     |
| Setup Property page & render data    |    H     |     2 hrs      |   4 hrs      |  4 hrs    |
| Add Edit and Detail   |    L     |     2 hrs      |   3 hrs   | 3 hrs  |
| Add Create Form    |    L     |     2 hrs      |     2 hrs    |    3 hrs    |
| CSS    |    H     |     4 hrs      |   4 hrs     |  4 hrs    |
| TOTAL            |     20 hrs      |    28 hrs     |     28 hrs    |

<br>

### Server (Back End)

#### ERD Model


[ERD Sample](https://app.diagrams.net/#G1TB4fcCKouaGtlOUDQIfJesPlCRA-CDPl)
<br>

***

## Post-MVP

| Add Contact Form    |    L     |     2 hrs      |   2 hrs     |   2 hrs    |
| Total  | | 2hrs    |     2 hrs   |    2 hrs      |

***

## Code Showcase

export default function Properties(props) {
  const { properties} = props
  const [search, setSearch] = useState("");
  const [filterProperties, setFilterProperties] = useState([]);
  useEffect(() => {
    if (properties) {
      setFilterProperties(
        properties.filter((property) => {
         return property.city.toLowerCase().includes(search.toLowerCase())
       })
     )
   }
  },[search])

## Code Issues & Resolutions

