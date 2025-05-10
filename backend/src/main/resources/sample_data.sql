-- Clear existing data
DELETE FROM sets;
DELETE FROM workout_exercises;
DELETE FROM workouts;
DELETE FROM exercise_details;
DELETE FROM users;

-- Insert sample users
INSERT INTO users (email, name, password, role, age, weight, height) VALUES
('john@example.com', 'John Doe', '$2a$10$xn3LI/AjqicFYZFruSwve.681477XaVNaUQbr1gioaWPn4t1KsnmG', 'ROLE_USER', 28, 75.5, 180.0),
('jane@example.com', 'Jane Smith', '$2a$10$xn3LI/AjqicFYZFruSwve.681477XaVNaUQbr1gioaWPn4t1KsnmG', 'ROLE_USER', 25, 65.0, 165.0);

-- Insert sample exercise details
INSERT INTO exercise_details (name, type, description, difficulty) VALUES
('Pull-up', 'Strength', 'A compound exercise that primarily targets the back and biceps', 3),
('Push-up', 'Strength', 'A bodyweight exercise that targets the chest, shoulders, and triceps', 2),
('Dips', 'Strength', 'A bodyweight exercise that targets the chest, shoulders, and triceps', 3),
('Plank', 'Core', 'An isometric core exercise that improves stability', 1),
('L-sit', 'Core', 'An advanced core exercise that requires significant upper body and core strength', 4);

-- Insert sample workouts
INSERT INTO workouts (name, date, user_id) VALUES
('Upper Body Strength', '2024-03-10 10:00:00', 1),
('Core Workout', '2024-03-11 15:00:00', 1),
('Full Body', '2024-03-12 09:00:00', 2);

-- Insert sample workout exercises
INSERT INTO workout_exercises (workout_id, exercise_details_id) VALUES
(1, 1), -- Pull-ups in Upper Body Strength
(1, 2), -- Push-ups in Upper Body Strength
(1, 3), -- Dips in Upper Body Strength
(2, 4), -- Plank in Core Workout
(2, 5), -- L-sit in Core Workout
(3, 1), -- Pull-ups in Full Body
(3, 2), -- Push-ups in Full Body
(3, 4); -- Plank in Full Body

-- Insert sample sets
INSERT INTO sets (reps, duration, weight, workout_exercise_id) VALUES
(8, NULL, 0, 1),  -- 8 pull-ups
(10, NULL, 0, 1), -- 10 pull-ups
(12, NULL, 0, 1), -- 12 pull-ups
(15, NULL, 0, 2), -- 15 push-ups
(20, NULL, 0, 2), -- 20 push-ups
(10, NULL, 0, 3), -- 10 dips
(12, NULL, 0, 3), -- 12 dips
(60, '00:01:00', 0, 4), -- 60s plank
(45, '00:00:45', 0, 4), -- 45s plank
(30, '00:00:30', 0, 5), -- 30s L-sit
(20, '00:00:20', 0, 5), -- 20s L-sit
(8, NULL, 0, 6),  -- 8 pull-ups
(10, NULL, 0, 7), -- 10 push-ups
(45, '00:00:45', 0, 8); -- 45s plank 