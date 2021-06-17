CREATE TABLE publisher(
    id INTEGER,
    name TEXT,
    country TEXT,
    PRIMARY KEY(id)
);

CREATE TABLE books(
    id INTEGER,
    title TEXT,
    publisher INTEGER,
    PRIMARY KEY(id),
    FOREIGN KEY(publisher) REFERENCES publisher(id)
);

CREATE TABLE subjects(
    id INTEGER,
    name TEXT,
    PRIMARY KEY(id)
);

CREATE TABLE books_subjects(
    book INTEGER,
    subject INTEGER,
    FOREIGN KEY(book) REFERENCES books(id),
    FOREIGN KEY(subject) REFERENCES subjects(id)
);
