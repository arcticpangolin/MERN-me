# MERN-me
MongoExpressReactNode web app starter template for rapid development that aims to provide a foundation for best practices in developing MERN apps.

# Installation
chmod u+x build.sh
./build.sh

# Pre Development With CRA and Express
MERN-me features create-react-app and express which each have their own development servers. This is problematic because of CORS issues.
To combat this, add the `script` key to your `/client/package.json`.

```
"proxy": {
    "/api/*": {
      "target": "http://localhost:5000"
    }
}
```

# Development NPM Scripts in package.json
To make local development smooth, MERN-me will use concurrently to run CRA and Express in parallel. With the proxy defined now,
we can make requests to our express server from the front end and see data flow through the application.

```
"engines": {
    "node": "8.1.1",
    "npm": "5.0.3"
  },
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1",
    "start": "node index.js",
    "server": "nodemon index.js",
    "client": "npm run start --prefix client",
    "dev": "concurrently \"npm run server\" \"npm run client\""
  }
```

# Example index.js
```
const express = require("express");
const mongoose = require("mongoose");
const bodyParser = require("body-parser");
const keys = require("./config/keys");

mongoose.connect(keys.MONGO_URI);

const app = express();

app.use(bodyParser.json());

if (process.env.NODE_ENV === 'production') {
  // express will serve up production assets
  app.use(express.static('client/build'));

  // if express can't find resource for route, will serve up index
  const path = require('path');
  app.get('*', (req, res) => {
    res.sendFile(path.resolve(__dirname, 'client', 'build', 'index.html'));
  });
}

const PORT = process.env.PORT || 5000;

app.listen(PORT);
```

# Example Configuration
```
if (process.env.NODE_ENV === 'production') {
  module.exports = require('./prod');
} else {
  module.exports = require('./dev');
}
```

# Useful Links for Reference
[create-react-app](https://github.com/facebook/create-react-app)
[Express](https://expressjs.com/)
[Mongoose](http://mongoosejs.com/)

Cheers!