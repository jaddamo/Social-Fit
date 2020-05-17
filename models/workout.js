module.exports = function(sequelize, DataTypes) {
    var Workout = sequelize.define("Workout", {
        id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true
        },
        workout_description: DataTypes.STRING,
    });
   
    Workout.associate = function(models) {
        //Associating Author with Posts
       // When an Author is deleted, also delete any associated Posts
        Workout.belongsTo(models.Workout_celebrity, {
          foreignKey: {allowNull: false}
        });
      };
    return Workout;
  };
  