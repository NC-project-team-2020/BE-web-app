const { getUsers } = require('../models/users');

async function fetchUsers(req, res, next) {
  try {
    const users = await getUsers();
    res.send({ users });
  } catch (err) {
    next(err);
  }
}

module.exports = {
  fetchUsers,
};
