#include <stdio.h>
#include <stdlib.h>
#include <sqlite3.h>

#define DBNAME "ex.sqlt"


int callback(void *data, int argc, char **argv, char **azColName){
	int i;
	for (i = 0; i<argc; i++){
		printf("%s = %s\n", azColName[i], argv[i] ? argv[i] : "NULL");
	}   
	printf("\n");
	return 0;
}

void handle_rc(int rc, sqlite3 **ppDb) {
	if (rc != SQLITE_OK) {
		fprintf(stderr, "%s\n",sqlite3_errmsg(*ppDb));
		sqlite3_close(*ppDb);
		exit(1);
	}
}

int main(void) {
	sqlite3 *ppDb;
	int rc;
	
	rc = sqlite3_open(
		DBNAME,
		&ppDb);

	handle_rc(rc, &ppDb);

	char *errmsg;
	char *q = "SELECT * FROM instagram ORDER BY nfollowers DESC LIMIT 1;";
	rc = sqlite3_exec(ppDb, q, callback, NULL, &errmsg);
	
	handle_rc(rc, &ppDb);
	sqlite3_close(ppDb);
	return 0;
}
