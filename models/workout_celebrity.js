module.exports = function(sequelize, DataTypes) {
    var Workout_celebrity = sequelize.define("Workout_celebrity", {
        id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true
        },
        workout_celebrity_name: DataTypes.STRING,
        workout_type: DataTypes.STRING
    });
    Workout_celebrity.associate = function(models) {
        // Associating Author with Posts
        // When an Author is deleted, also delete any associated Posts
        Workout_celebrity.hasMany(models.Workout, {
          onDelete: "cascade",
          allowNull: false
        });
      };

    return Workout_celebrity;
  };

 