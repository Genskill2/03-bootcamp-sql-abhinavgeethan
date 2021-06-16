CREATE TABLE publisher(
    id INT,
    name TEXT,
    country TEXT,
    PRIMARY KEY(id)
);

CREATE TABLE books(
    id INT,
    title TEXT,
    publisher INT,
    PRIMARY KEY(id),
    FOREIGN KEY(publisher) REFERENCES publisher(id)
);

CREATE TABLE subjects(
    id INT,
    name TEXT,
    PRIMARY KEY(id)
);

CREATE TABLE books_subjects(
    book INT,
    subject INT,
    FOREIGN KEY(book) REFERENCES books(id),
    FOREIGN KEY(subject) REFERENCES subjects(id)
);
