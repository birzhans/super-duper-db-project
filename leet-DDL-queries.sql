
CREATE TABLE IF NOT EXISTS QuizGame(
	id INTEGER PRIMARY KEY NOT NULL,
	questionId INTEGER NOT NULL,
	userId INTEGER NOT NULL,
	commentId INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Question (
  id INTEGER PRIMARY KEY NOT NULL,
  category VARCHAR(255) NOT NULL,		
  date DATE NOT NULL,
  question TEXT NOT NULL,
  value INTEGER NOT NULL,	
  answer TEXT NOT NULL,
  round INTEGER NOT NULL,
  show_number INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS User (
  id INTEGER PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,		
  surname VARCHAR(255) NOT NULL
);
CREATE TABLE IF NOT EXISTS Admin (
  id INTEGER PRIMARY KEY NOT NULL,
);
CREATE TABLE IF NOT EXISTS Comments (
  id INTEGER PRIMARY KEY NOT NULL,
  text VARCHAR(255) NOT NULL,
  postId INTEGER NOT NULL,
  userId INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS Posts (
  id INTEGER PRIMARY KEY NOT NULL,
  commentId INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS Groups (
  id INTEGER PRIMARY KEY NOT NULL,
  userId INTEGER NOT NULL
);
