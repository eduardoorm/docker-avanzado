

//crea una tarea

const express = require('express');

const task = {
    id: 1,
    title: 'Task 1',
    description: 'Description 1'
}
const router = express.Router();
router.use(express.json());

console.log('Task');

router.get('/', (req, res) => {
    res.json(task);
});

module.exports = router;
