
// Creating our User model
module.exports = function(sequelize, DataTypes) {
  var Favorite = sequelize.define("Favorite", {
    // The email cannot be null, and must be a proper email before creation
    fav0: DataTypes.BOOLEAN,
    fav1: DataTypes.BOOLEAN,
    fav2: DataTypes.BOOLEAN,
    fav3: DataTypes.BOOLEAN,
    fav4: DataTypes.BOOLEAN,
    fav5: DataTypes.BOOLEAN,
    fav6: DataTypes.BOOLEAN,
    fav7: DataTypes.BOOLEAN,
    fav8: DataTypes.BOOLEAN,
    fav9: DataTypes.BOOLEAN
   
  });
   //Association 
   Favorite.associate = function(models) {
    //Associating Author with Posts
   // When an Author is deleted, also delete any associated Posts
    Favorite.belongsTo(models.User, {
      foreignKey: {allowNull: false}
    });
  };

  return Favorite;
};
