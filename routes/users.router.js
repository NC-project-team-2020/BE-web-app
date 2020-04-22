const usersRouter = require('express').Router();
const { fetchUsers } = require('../controllers/users');

usersRouter.get('/', fetchUsers);

module.exports = usersRouter;
