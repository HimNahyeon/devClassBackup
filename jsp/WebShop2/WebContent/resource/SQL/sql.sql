CREATE TABLE member(
	cid VARCHAR(32) PRIMARY KEY,
	cpassword VARCHAR(32),
	cname VARCHAR(32),
	cgender VARCHAR(32),
	cbirth VARCHAR(32),
	cemail VARCHAR(32),
	cphone VARCHAR(32),
	caddress VARCHAR(32),
	cregiday VARCHAR(32)
) DEFAULT CHARSET=utf8;


CREATE TABLE board(
	bid VARCHAR(32) PRIMARY KEY,
	btitle VARCHAR(1024),
	bcontent VARCHAR(2048),
	bmember VARCHAR(32),
	bdate VARCHAR(32)
) DEFAULT CHARSET=utf8;
board
