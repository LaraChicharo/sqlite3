#include <stdio.h>
#include <stdlib.h>
#include <sqlite3.h>
#include <string.h>

//the extention we accept
#define EXTENTION "sql"
#define DBNAME "ex.sqlt"

sqlite3 *ppDb;

void verify_arguments(int argc, char* argv);
void write_db (char* file);
int print_query_callback(
	void *data, int argc, char **argv, char **azColName);
void handle_rc(int rc, sqlite3 **ppDb);
int query_instagram_by_id_callback(
	void *data, int argc, char **argv, char **azColName);
int query_instagramid_by_morraid_callback(
	void *data, int argc, char **argv, char **azColName);
int query_morras_by_country_callback(
	void *data, int argc, char **argv, char **azColName);
void query_russian_instagram(void);
void print_menu(void);

/**
 * This method .
 */
int main(int argc, char* argv[]){
	verify_arguments(argc, argv[1]);
	write_db(argv[1]);
	
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

/**
 * This method ensures that the arguments are correct.
 */
void verify_arguments(int argc, char* argv){
	if(argc == 0){
		printf("There is not a file as an argument\n");
		exit(EXIT_FAILURE);
	}
	char *ext = strrchr(argv, '.');
	if(strcmp(ext+1, EXTENTION) != 0){
		printf("The extension of the file isn't valid\n");
		exit(EXIT_FAILURE);
	}
}   	

/**
 * This method writes the informatiion into de database.
 */
void write_db (char* file){
	sqlite3 *db;
	int rc = sqlite3_open("DataBase.db", &db);
	int i, j;
	char *err_msg = 0;
	char block[1024];
	char sql[100000];
	FILE *read = fopen(file, "r");

	if(rc){
    	fprintf(stderr, "Can't open database: %s\n", sqlite3_errmsg(db));
    	exit(EXIT_FAILURE);
   	}
   	else
      	fprintf(stderr, "Opened database successfully\n");

    //here we read the file  
	for (i = getc(read); i != EOF; i = getc(read)){
		sql[j++] = i;
	}    

	//adding data to database
	rc = sqlite3_exec(db, sql, 0, 0, &err_msg);

	if (rc != SQLITE_OK){
        fprintf(stderr, "SQLITE error: %s\n", err_msg);
        
        sqlite3_free(err_msg);        
        sqlite3_close(db);
        
        exit(EXIT_FAILURE);
    } 
    sqlite3_close(db);
}

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

/**
 * This method ensures that the arguments are correct.
 */
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

/**
 * Creates a menu, with to options, for the user.
 * With the option 'a', the user will be able to see the 5 most followed instagrams
 * and with 'r' the russian instagram accounts.
 */
void print_menu(void) {
	puts("Press: q to quit");
	puts("a to show the 5 most followed instagram accounts");
	puts("r to show russian insagram accounts.");
}