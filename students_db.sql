create database students_db;
USE students_db;
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    gender VARCHAR(10),
    phone VARCHAR(20),
    email VARCHAR(255),
    rating INT,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

INSERT INTO students (first_name, last_name, gender, phone, email, rating, username, password) VALUES
('John', 'Doe', 'Male', '123-456-7890', 'john.doe@example.com', 85, 'john_doe', 'password123'),
('Jane', 'Smith', 'Female', '456-789-0123', 'jane.smith@example.com', 90, 'jane_smith', 'pass123'),
('Michael', 'Johnson', 'Male', '789-012-3456', 'michael.johnson@example.com', 75, 'michael_j', 'securepassword'),
('Emily', 'Davis', 'Female', '321-654-9870', 'emily.davis@example.com', 80, 'emilyd', '123pass'),
('William', 'Brown', 'Male', '654-987-3210', 'william.brown@example.com', 88, 'will_b', 'brown987'),
('Jessica', 'Miller', 'Female', '987-654-3210', 'jessica.miller@example.com', 82, 'jess_m', 'miller456'),
('Daniel', 'Wilson', 'Male', '456-321-7890', 'daniel.wilson@example.com', 78, 'dan_w', 'wilson789'),
('Amanda', 'Martinez', 'Female', '789-654-0123', 'amanda.martinez@example.com', 86, 'amanda_m', 'marty123'),
('David', 'Taylor', 'Male', '987-012-3456', 'david.taylor@example.com', 95, 'd_taylor', 'taylorpass'),
('Sarah', 'Anderson', 'Female', '321-789-6540', 'sarah.anderson@example.com', 70, 'sarah_a', 'anderson123'),
('James', 'Thomas', 'Male', '654-012-9876', 'james.thomas@example.com', 89, 'james_t', 'thomas456'),
('Jennifer', 'Hernandez', 'Female', '012-345-6789', 'jennifer.hernandez@example.com', 83, 'jenn_h', 'hernandez789'),
('Matthew', 'Young', 'Male', '789-456-1230', 'matthew.young@example.com', 77, 'matt_young', 'youngpass'),
('Ashley', 'King', 'Female', '234-567-8901', 'ashley.king@example.com', 92, 'ash_k', 'king456'),
('Christopher', 'Lee', 'Male', '567-890-1234', 'christopher.lee@example.com', 79, 'chrisl', 'lee123'),
('Taylor', 'Gonzalez', 'Female', '890-123-4567', 'taylor.gonzalez@example.com', 84, 'tay_g', 'gonzalez789'),
('Joshua', 'Clark', 'Male', '123-456-7890', 'joshua.clark@example.com', 88, 'josh_cl', 'clarkpass'),
('Mary', 'Rodriguez', 'Female', '456-789-0123', 'mary.rodriguez@example.com', 75, 'mary_r', 'rodriguez123'),
('Ryan', 'Lewis', 'Male', '789-012-3456', 'ryan.lewis@example.com', 91, 'ryanl', 'lewis789'),
('Nicole', 'Walker', 'Female', '321-654-9870', 'nicole.walker@example.com', 80, 'nic_w', 'walker123'),
('Kevin', 'Hall', 'Male', '654-987-3210', 'kevin.hall@example.com', 86, 'kevin_h', 'hall456'),
('Kimberly', 'Allen', 'Female', '987-654-3210', 'kimberly.allen@example.com', 93, 'kim_allen', 'allen789'),
('Andrew', 'Young', 'Male', '456-321-7890', 'andrew.young@example.com', 77, 'and_young', 'youngpass123'),
('Rebecca', 'Wright', 'Female', '789-654-0123', 'rebecca.wright@example.com', 89, 'rebecca_w', 'wright456'),
('Brian', 'Lopez', 'Male', '987-012-3456', 'brian.lopez@example.com', 84, 'brian_l', 'lopez123'),
('Samantha', 'Hill', 'Female', '321-789-6540', 'samantha.hill@example.com', 88, 'samantha_h', 'hill789'),
('Jason', 'Scott', 'Male', '654-012-9876', 'jason.scott@example.com', 90, 'jason_s', 'scottpass'),
('Michelle', 'Green', 'Female', '012-345-6789', 'michelle.green@example.com', 79, 'mich_green', 'green123'),
('Joseph', 'Adams', 'Male', '789-456-1230', 'joseph.adams@example.com', 87, 'joseph_a', 'adams456'),
('Stephanie', 'Baker', 'Female', '234-567-8901', 'stephanie.baker@example.com', 92, 'steph_b', 'baker789'),
('Samuel', 'Nelson', 'Male', '567-890-1234', 'samuel.nelson@example.com', 81, 'sam_n', 'nelson123'),
('Emma', 'Perez', 'Female', '890-123-4567', 'emma.perez@example.com', 85, 'emma_p', 'perez456'),
('Nicholas', 'Ward', 'Male', '123-456-7890', 'nicholas.ward@example.com', 92, 'nick_w', 'ward789'),
('Alyssa', 'Ramirez', 'Female', '456-789-0123', 'alyssa.ramirez@example.com', 86, 'alyssa_r', 'ramirez123'),
('Justin', 'Cook', 'Male', '789-012-3456', 'justin.cook@example.com', 78, 'just_cook', 'cookpass'),
('Brittany', 'Bailey', 'Female', '321-654-9870', 'brittany.bailey@example.com', 90, 'britt_b', 'bailey789'),
('Brandon', 'Rivera', 'Male', '654-987-3210', 'brandon.rivera@example.com', 84, 'brandon_r', 'rivera123');
SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;