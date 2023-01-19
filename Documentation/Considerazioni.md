1. Creare un nuovo database chiamato "mnemosine_db".
2. Creare una tabella chiamata "prodotto" che conterrà tutti i campi necessari per descrivere un prodotto, ad esempio: id, nome, descrizione, prezzo, quantità.
3. Creare una tabella chiamata "attributo" che conterrà tutti i campi necessari per descrivere gli attributi di un prodotto, ad esempio: id, nome, descrizione, valore.
4. Creare una relazione tra le tabelle "prodotto" e "attributo" utilizzando una chiave esterna. Ad esempio, la tabella "prodotto" potrebbe avere un campo chiamato "attributo_id" che si riferisce all'ID della tabella "attributo".

Per quanto riguarda l'astrazione, si può utilizzare una classe per rappresentare l'oggetto "prodotto" e un'altra classe per rappresentare l'oggetto "attributo" in codice. La classe "prodotto" potrebbe avere metodi per recuperare e impostare i valori dei campi del prodotto, come nome, descrizione e prezzo, mentre la classe "attributo" potrebbe avere metodi per recuperare e impostare i valori dei campi dell'attributo, come nome e valore.

Inoltre, si può utilizzare un ORM (Object-relational mapping) per gestire la relazione tra le tabelle e le classi, in modo da poter utilizzare oggetti "prodotto" e "attributo" in codice senza dover scrivere query SQL manuali.

La tabella "prodotto_attributo" contiene due campi chiamati "prodotto_id" e "attributo_id" che si riferiscono alle chiavi primarie delle tabelle "prodotto" e "attributo", rispettivamente. Ciò stabilisce una relazione molti-a-molti tra le tabelle "prodotto" e "attributo", in quanto un prodotto può avere più attributi e un attributo può essere assegnato a più prodotti.

Nota che la primary key è composta da prodotto_id e attributo_id in modo che non ci possa essere una ripetizione di coppie prodotto_id-attributo_id nella tabella di associazione