CREATE TABLE forum_replies (
    id SERIAL PRIMARY KEY,
    thread_id INT REFERENCES forum_threads(id) ON DELETE CASCADE,
    author_id INT REFERENCES users(id) ON DELETE CASCADE,
    content TEXT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT now()
);
