DROP INDEX PK_PC_BOARD;

/* 커뮤니티 */
DROP TABLE PC_BOARD 
	CASCADE CONSTRAINTS;

/* 커뮤니티 */
CREATE TABLE PC_BOARD (
	SEQ NUMBER(7) NOT NULL, /* 순번 */
	TITLE VARCHAR2(200 BYTE) NOT NULL, /* 제목 */
	CONTENTS CLOB, /* 내용 */
	READ_CNT NUMBER(6) DEFAULT 0, /* 조회수 */
	REG_DT DATE DEFAULT SYSDATE, /* 등록일 */
	REG_ID VARCHAR2(20), /* 등록자 */
	MOD_DT DATE, /* 수정일 */
	MOD_ID VARCHAR2(20) DEFAULT SYSDATE /* 수정자 */
);

COMMENT ON TABLE PC_BOARD IS '커뮤니티';

COMMENT ON COLUMN PC_BOARD.SEQ IS '순번';

COMMENT ON COLUMN PC_BOARD.TITLE IS '제목';

COMMENT ON COLUMN PC_BOARD.CONTENTS IS '내용';

COMMENT ON COLUMN PC_BOARD.READ_CNT IS '조회수';

COMMENT ON COLUMN PC_BOARD.REG_DT IS '등록일';

COMMENT ON COLUMN PC_BOARD.REG_ID IS '등록자';

COMMENT ON COLUMN PC_BOARD.MOD_DT IS '수정일';

COMMENT ON COLUMN PC_BOARD.MOD_ID IS '수정자';

CREATE UNIQUE INDEX PK_PC_BOARD
	ON PC_BOARD (
		SEQ ASC
	);

ALTER TABLE PC_BOARD
	ADD
		CONSTRAINT PK_PC_BOARD
		PRIMARY KEY (
			SEQ
		);