CREATE TYPE todo_status AS ENUM (
   'not_started',
   'in_progress',
   'completed'
);

CREATE TABLE todo_user (
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    username VARCHAR(255)
);

CREATE TABLE todo (
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    user_id INTEGER,
    task VARCHAR(255),
    status todo_status,
    todo_order int,
    CONSTRAINT fk_user FOREIGN KEY(user_id) REFERENCES todo_user(id)
);

INSERT INTO todo_user ("username") VALUES ('zmose');

INSERT INTO todo ("user_id", "task", "status", "todo_order") VALUES (1, 'mow lawn', 'not_started', 1);