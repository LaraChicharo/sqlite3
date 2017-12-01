/**
 *The "recipient" that conteins the data.
 */
typedef struct no{
	char *element;
	struct no *next;
} *node;

/**
 *The list itself, with the main attributes.
 */
typedef struct li{
	node begin;
	node end;
	int length;
} *list;


//These are the common methods of a list.
/**
 *It creates a empty list.
 */
list create(void){
	list l = malloc(sizeof(list));
	l->begin = NULL;
	l->end = NULL;
	l->length = 0;
	return l;
}

/**
 *It adds an element to the begining of the list.
 */
void add_begin(char *e, list l){
	node n = malloc(sizeof(node));
	n->element = malloc(strlen(e) + 1);
	strcpy(n->element,e);
	if (l->length == 0){
		l->begin = n;
		l->end = n;
	}else{
		n->next = l->begin;
		l->begin = n;
	}
	l->length = l->length + 1;
}

/**
 *It adds an element at the end of the list
 */
void add_end(char *e, list l){
	node n = malloc(sizeof(node));
	n->element = malloc(strlen(e) + 1);
	strcpy(n->element,e);
	if (l->length == 0){
		l->begin = n;
		l->end = n;
	}else{
		n->next = NULL;
		l->end->next = n;
		l->end = n;
	}
	l->length = l->length + 1;
}

/**
 *It eliminates the first element of the list.
 */
char* eliminate(list l){
	if(l->length == 0)
		return NULL;
	char *c = l->begin->element;
	node n = l->begin;
	if(l->length == 1){
		l->begin = NULL;
		l->end = NULL;
		l->length = 0;
	}else{
		l->begin = n->next;
		l->length = l->length - 1;
	}
	free(n);
	return c;
}