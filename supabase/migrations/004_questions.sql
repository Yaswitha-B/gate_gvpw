CREATE TABLE questions (
    id SERIAL PRIMARY KEY,
    subject_id INT REFERENCES subjects(id) ON DELETE CASCADE,
    topic_id INT REFERENCES topics(id) ON DELETE CASCADE,
    question_text TEXT NOT NULL,
    options JSONB,
    correct_answer TEXT,
    contributor_id INT REFERENCES users(id),
    image_url TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT now()
);
