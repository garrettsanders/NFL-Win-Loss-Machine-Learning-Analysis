DROP TABLE IF EXISTS nfl_wr_sql;
DROP TABLE IF EXISTS nfl_qb_sql;
DROP TABLE IF EXISTS nfl_rb_sql;
DROP TABLE IF EXISTS nfl_te_sql;
DROP TABLE IF EXISTS nfl_defense_sql;
DROP TABLE IF EXISTS nfl_k_sql;

CREATE TABLE nfl_wr_sql(
"Player Name" VARCHAR(30),
"Week" INTEGER,
"Opponet" VARCHAR(30),
"Win/Loss" VARCHAR(30),
"Targeted" INTEGER,
"Rec" INTEGER,
"Yards" INTEGER,
"TD" INTEGER,
"Total Fantasy Points" DECIMAL,
"Position" VARCHAR(30)
);

CREATE TABLE nfl_qb_sql(
"Player Name" VARCHAR(30),
"Week" INTEGER,
"Opponet" VARCHAR(30),
"Win/Loss" VARCHAR(30),
"Passes Completed" INTEGER,
"Passes Attempted" INTEGER,
"Yards Per Game" INTEGER,
"TDs" INTEGER,
"INT" INTEGER,
"Rushing Attempts" INTEGER,
"Total Rushing Yards" INTEGER,
"Rushing TDs" INTEGER,
"Total Fantasy Points" DECIMAL,
"Positon" VARCHAR(30)
);

CREATE TABLE nfl_rb_sql(
"Player Name" VARCHAR(30),
"Week" INTEGER,
"Opponet" VARCHAR(30),
"Win/Loss" VARCHAR(30),
"Rushing Attempts" INTEGER,
"Total Rushing Yards" INTEGER,
"Rushing TDs" INTEGER,
"Passes Targeted" INTEGER,
"Passes Caught" INTEGER,
"Total Pass Yards" INTEGER,
"Receiving TDs" INTEGER,
"Total Fantasy Points" DECIMAL,
"Postion" VARCHAR(30)
);

CREATE TABLE nfl_te_sql(
"Player Name" VARCHAR(30),
"Week" INTEGER,
"Opponet" VARCHAR(30),
"Win/Loss" VARCHAR(30),
"Targetted Passes" INTEGER,
"Receptions" INTEGER,
"Yards" INTEGER,
"TDs" INTEGER,
"Total Fantasy Points" DECIMAL,
"Position" VARCHAR(30)
);

CREATE TABLE nfl_defense_sql(
"Player Name" VARCHAR(30),
"Week" INTEGER,
"Win/Loss" VARCHAR(30),
"Sack" INTEGER,
"FR" INTEGER,
"INT" INTEGER,
"DefTD" INTEGER,
"PA" INTEGER,
"PaYD" INTEGER,
"RuTD" INTEGER,
"S" INTEGER,
"KickTD" INTEGER,
"Total Fantasy Points" DECIMAL,
"Position" VARCHAR(30)
);

CREATE TABLE nfl_k_sql(
"Player Name" VARCHAR(30),
"Week" INTEGER,
"Opponet" VARCHAR(30),
"Win/Loss" VARCHAR(30),
"Field Goals Made" INTEGER,
"Field Goals Attempted" INTEGER,
"FG%" VARCHAR(30),
"Extra Points Made" INTEGER,
"Extra Points Attempted" INTEGER,
"Total Fantasy Points" DECIMAL,
"Position" VARCHAR(30)
);

SELECT "Player Name", "Total Fantasy Points", "Positon" FROM nfl_qb_sql;

SELECT "Player Name", "Total Fantasy Points", "Position" FROM nfl_wr_sql;

SELECT "Player Name", "Total Fantasy Points", "Postion" FROM nfl_rb_sql;

SELECT "Player Name", "Total Fantasy Points", "Position" FROM nfl_te_sql;

SELECT "Player Name", "Total Fantasy Points", "Position" FROM nfl_defense_sql;

SELECT "Player Name", "Total Fantasy Points", "Position" FROM nfl_k_sql;

	SELECT
	"Player Name",
	"Total Fantasy Points",
	"Position"
	FROM 
	nfl_wr_sql
UNION
	SELECT
	"Player Name",
	"Total Fantasy Points",
	"Positon"
	FROM
	nfl_qb_sql
UNION
	SELECT
	"Player Name",
	"Total Fantasy Points",
	"Postion"
	FROM 
	nfl_rb_sql
UNION
	SELECT
	"Player Name",
	"Total Fantasy Points",
	"Position"
	FROM 
	nfl_te_sql
UNION
	SELECT
	"Player Name",
	"Total Fantasy Points",
	"Position"
	FROM 
	nfl_defense_sql
UNION
	SELECT
	"Player Name",
	"Total Fantasy Points",
	"Position"
	FROM 
	nfl_k_sql;
	

