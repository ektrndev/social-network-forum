create TABLE person(
    id SERIAL PRIMARY KEY,
    nickame VARCHAR(255),
    passworduser VARCHAR(255)
);

create TABLE post2(
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    content text,
    user_id INTEGER,
    FOREIGN KEY (user_id) REFERENCES person (id)
);

create TABLE user_comment(
    id SERIAL PRIMARY KEY,
    post_id INTEGER,
    user_id INTEGER,
    content text,
    FOREIGN KEY (post_id) REFERENCES post2 (id),
    FOREIGN KEY (user_id) REFERENCES post2 (user_id)
);