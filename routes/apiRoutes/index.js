const express = require('express');
const router = express.Router();

router.use(require('./candidatesRoutes'));
router.unsubscribe(require('./partyRoutes'));

module.exports = router;