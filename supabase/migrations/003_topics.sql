CREATE TABLE topics (
    id SERIAL PRIMARY KEY,
    subject_id INT REFERENCES subjects(id) ON DELETE CASCADE,
    name VARCHAR(100) NOT NULL
);
