DROP DATABASE IF EXISTS users_db;

CREATE DATABASE users_db;

USE users_db;

CREATE TABLE user_info (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NULL,
  email VARCHAR(45) NULL,
  phone VARCHAR (10) NULL,
  PRIMARY KEY (id)
);

CREATE TABLE user_accounts (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NULL,
  email VARCHAR(45) NULL,
  about_me VARCHAR(500) NULL,
  height_ft INT NULL,
  height_inch INT NULL, 
  weight_lbs INT NULL,
  goal VARCHAR(100) NULL, 
  #celebrity_choice 
  PRIMARY KEY (id)
);

CREATE TABLE celebrity_choice (
  id INT NOT NULL AUTO_INCREMENT,

  PRIMARY KEY (id)
);

INSERT INTO user_info (name, email, phone)
VALUES ("jane", "jellyjane@gmail.com", "8007886669");

INSERT INTO user_info (name, email, phone)
VALUES ("ed", "ededed@gmail.com", "8007885555");

INSERT INTO user_info (name, email, phone)
VALUES ("shaminder", "shasha@gmail.com", "1234567890");

INSERT INTO user_info (name, email, phone)
VALUES ("joe", "joeeeee@gmail.com", "4346768980");

DROP TABLE IF EXISTS Workout_celebrity;
CREATE TABLE Workout_celebrity (
  id INT NOT NULL AUTO_INCREMENT,
  workout_celebrity_name VARCHAR(45) NULL,
  workout_type VARCHAR(45) NULL,
  PRIMARY KEY (id)
  
);

DROP TABLE IF EXISTS Workouts;

CREATE TABLE Workouts (
  id INT NOT NULL AUTO_INCREMENT,
  day_of_week VARCHAR(45) NULL,
  workout_description VARCHAR(255) NULL,
  WorkoutCelebrityId INT NOT NULL,
  FOREIGN KEY (WorkoutCelebrityId) REFERENCES Workout_celebrity (id),
  PRIMARY KEY (id)
);


INSERT INTO Workout_celebrity (workout_celebrity_name, workout_type)
VALUES ( "Joe-Shaminder-Jane-Ed", "Stay At Home Coders");

INSERT INTO Workout_celebrity (workout_celebrity_name, workout_type)
VALUES ("The Rock", "Ultra Weight Gain");

INSERT INTO Workout_celebrity (workout_celebrity_name, workout_type)
VALUES ("Jenifer Aniston", "Yoga");

INSERT INTO Workout_celebrity (workout_celebrity_name, workout_type)
VALUES ("Taylor Swift", "The Runner");


INSERT INTO Workouts (WorkoutCelebrityId, day_of_week, workout_description)
VALUES (1,"Monday", "20 jumping jacks, 30 second wall sit 10 pushups, 10 situps");

INSERT INTO Workouts (WorkoutCelebrityId,day_of_week, workout_description)
VALUES (2,"Tuesday", "5 Steup on chair, 10 squats, 10 triceps on chair, 20 second plank");

INSERT INTO Workouts ( WorkoutCelebrityId, day_of_week, workout_description)
VALUES (3, "Wednesday", "10 high knees running in place, 10 lunges, 10 push up and rotation, 15 second side plank");

INSERT INTO Workouts (WorkoutCelebrityId, day_of_week, workout_description)
VALUES (4, "Thursday", "20 jumping jacks, 30 second wall sit 10 pushups, 10 situps");

INSERT INTO Workouts (WorkoutCelebrityId, day_of_week, workout_description)
VALUES (1, "Friday", "5 Steup on chair, 10 squats, 10 triceps on chair, 20 second plank");

INSERT INTO Workouts ( WorkoutCelebrityId, day_of_week, workout_description)
VALUES (2, "Saturday", "10 high knees running in place, 10 lunges, 10 push up and rotation, 15 second side plank");

