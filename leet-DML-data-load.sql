PRAGMA foreign_keys=off;

BEGIN TRANSACTION;

.mode csv
.import ../data/questions.csv accounts

COMMIT;

PRAGMA foreign_keys=on;
