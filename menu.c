#include <stdio.h>
#include <stdlib.h>
#include <sqlite3.h>

#define DBNAME "ex.sqlt"

sqlite3 *ppDb;


int print_query_callback(
	void *data, int argc, char **argv, char **azColName) {
	
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

int query_instagram_by_id_callback(
	void *data, int argc, char **argv, char **azColName) {
	if (argc < 1)
		return 1;
	int rc;
	char *q;
	char *q_template;
	char *errmsg;
	q_template = "SELECT * FROM instagram WHERE id=%s;";
	sprintf(q, q_template, argv[0]);
	rc = sqlite3_exec(
		ppDb, q, print_query_callback, NULL, &errmsg);
	handle_rc(rc, &ppDb);
	return 0;

}

int query_instagramid_by_morraid_callback(
	void *data, int argc, char **argv, char **azColName) {

	if (argc < 1)
		return 1;
	int rc;
	char *q;
	char *q_template;
	char *errmsg;
	q_template = "SELECT instagram_id FROM morra_instagram WHERE morra_id=%s;";
	sprintf(q, q_template, argv[0]);
	rc = sqlite3_exec(
		ppDb, q, query_instagram_by_id_callback, NULL, &errmsg);
	handle_rc(rc, &ppDb);
	return 0;
}

int query_morras_by_country_callback(
	void *data, int argc, char **argv, char **azColName) {
	
	if (argc < 1)
		return 1;
	int rc;
	char *q;
	char *q_template;
	char *errmsg;
	q_template = "SELECT id FROM morra WHERE country_id=%s;";
	sprintf(q, q_template, argv[0]);
	rc = sqlite3_exec(
		ppDb, q, query_instagramid_by_morraid_callback, NULL, &errmsg);
	handle_rc(rc, &ppDb);
	return 0;
} 

void query_russian_instagram(void) {
	char *errmsg;
	char *q;
	q = "SELECT id FROM country WHERE name='Rusia';";
	int rc;
	rc = sqlite3_exec(
		ppDb, q, query_morras_by_country_callback, NULL, &errmsg);
	handle_rc(rc, &ppDb);
}


void print_menu(void) {
	puts("Press: q to quit");
	puts("a to show the 5 most followed instagram accounts");
	puts("r to show russian insagram accounts.");
}

int main(void) {
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
			rc = sqlite3_exec(ppDb, q, print_query_callback, NULL, &errmsg);
			handle_rc(rc, &ppDb);
		if (c == 'r')
			query_russian_instagram();		
		
		print_menu();
	}

	sqlite3_close(ppDb);
	return 0;
}
