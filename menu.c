#include <stdio.h>
#include <stdlib.h>
#include <sqlite3.h>

#define DBNAME "ex.sqlt"


int select_callback(void *data, int argc, char **argv, char **azColName){
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

void print_menu(void) {
	puts("Press: q to quit");
	puts("a to show the 5 most followed instagram accounts");
	puts("x to x.");
}

int main(void) {
	sqlite3 *ppDb;
	int rc;
	char *errmsg;
	
	rc = sqlite3_open(
		DBNAME,
		&ppDb);

	handle_rc(rc, &ppDb);
	
	
	char c;
	char *q;
	print_menu();
	while((c = getchar()) != 'q') {
		if (c == '\n')
			continue;
		if (c == 'a')
			q = "SELECT * FROM instagram ORDER BY nfollowers DESC LIMIT 5;";
		
		rc = sqlite3_exec(ppDb, q, select_callback, NULL, &errmsg);
		handle_rc(rc, &ppDb);
		
		print_menu();
	}

	
	sqlite3_close(ppDb);
	return 0;
}
