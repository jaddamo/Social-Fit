DROP DATABASE IF EXISTS workouts_db;

CREATE DATABASE workouts_db;

USE workouts_db;

CREATE TABLE workout_celebrity (
  id INT NOT NULL AUTO_INCREMENT,
  workout_celebrity_name VARCHAR(45) NULL,
  workout_type VARCHAR(45) NULL,
  PRIMARY KEY (id)
);

CREATE TABLE workouts (
  id INT NOT NULL AUTO_INCREMENT,
  day_of_week VARCHAR(45) NULL,
  workout_description VARCHAR(45) NULL,
  workout_celebrity_name VARCHAR(45),
  PRIMARY KEY (id),
  FOREIGN KEY (workout_celebrity_name) REFERENCES workout_celebrity (workout_celebrity_name)
);


INSERT INTO workouts_celebrity (workout_celebrity_name, workout_type)
VALUES ("Joe-Shaminder-Jane-Ed", "Stay At Home Coders");

INSERT INTO workouts_celebrity (workout_celebrity_name, workout_type)
VALUES ("The Rock", "Ultra Weight Gain");

INSERT INTO workouts_celebrity (workout_celebrity_name, workout_type)
VALUES ("Jenifer Aniston", "Yoga");

INSERT INTO workouts_celebrity (workout_celebrity_name, workout_type)
VALUES ("Taylor Swift", "The Runner");


INSERT INTO workouts (day_of_week, workout_description)
VALUES ("Monday", "20 jumping jacks, 30 second wall sit 10 pushups, 10 situps");

INSERT INTO workouts (day_of_week, workout_description)
VALUES ("Tuesday", "5 Steup on chair, 10 squats, 10 triceps on chair, 20 second plank");

INSERT INTO workouts (day_of_week, workout_description)
VALUES ("Wednesday", "10 high knees running in place, 10 lunges, 10 push up and rotation, 15 second side plank");

INSERT INTO workouts (day_of_week, workout_description)
VALUES ("Thursday", "20 jumping jacks, 30 second wall sit 10 pushups, 10 situps");

INSERT INTO workouts (day_of_week, workout_description)
VALUES ("Friday", "5 Steup on chair, 10 squats, 10 triceps on chair, 20 second plank");

INSERT INTO workouts (day_of_week, workout_description)
VALUES ("Saturday", "10 high knees running in place, 10 lunges, 10 push up and rotation, 15 second side plank");


