const { config } = require('./config');
const { Client } = require('pg');
const db = new Client(config);

db.connect().then(() => {
  console.log(`connected to ${config.database} on PORT ${config.port}`);
});

module.exports = db;
