var Sequelize = require("sequelize");

var sequelize = require("../config/connection.js");

var WorkoutCelebrity = sequelize.define("workoutcelebrity",{
    workout_celebrity_name: Sequelize.STRING,
    workout_type: Sequelize.STRING


},{
    //prevent first parameters into plural
    freezeTableName: true

});

// Sync with DB
WorkoutCelebrity.sync();

// Make WorkoutCelebrity model available
module.exports = WorkoutCelebrity;