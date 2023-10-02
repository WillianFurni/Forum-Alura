CREATE TABLE topics(
	id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(100) NOT NULL UNIQUE,
	message VARCHAR(5000) NOT NULL,
	creation_date DATETIME NOT NULL,
	status VARCHAR(50) NOT NULL,
	author_id BIGINT NOT NULL,
	course_id BIGINT NOT NULL,
	active TINYINT NOT NULL DEFAULT 1,
	CONSTRAINT fk_topics_author_id FOREIGN KEY(author_id) REFERENCES users(id),
	CONSTRAINT fk_topics_course_id FOREIGN KEY(course_id) REFERENCES courses(id)
) ENGINE=InnoDB;