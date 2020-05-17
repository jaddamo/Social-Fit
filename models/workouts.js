var Sequelize = require("sequelize");

var sequelize = require("../config/connection.js");

var Workouts = sequelize.define("workouts", {
    workout_description: Sequelize.STRING,
    workout_celebrity_name: Sequelize.STRING

}, {
    //prevent first parameters into plural
    freezeTableName: true

});

// Sync with DB
Workouts.sync();

// Make WorkoutCelebrity model available
module.exports = Workouts;