const express = require('express');
const routes = require('./routes');
const sequelize = require('./config/connection');  // Import sequelize connection

const app = express();
const PORT = process.env.PORT || 3001;

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use(routes);

// Sync Sequelize models to the database, then turn on the server
sequelize.sync({ force: false })  // Set force: true to drop and recreate tables on each sync
  .then(() => {
    app.listen(PORT, () => {
      console.log(`App listening on port ${PORT}!`);
    });
  })
  .catch(err => {
    console.error('Failed to sync Sequelize models with the database:', err);
  });