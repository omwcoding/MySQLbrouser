1. Creare un nuovo database chiamato "mnemosine_db".
2. Creare una tabella chiamata "prodotto" che conterrà tutti i campi necessari per descrivere un prodotto, ad esempio: id, nome, descrizione, prezzo, quantità.
3. Creare una tabella chiamata "attributo" che conterrà tutti i campi necessari per descrivere gli attributi di un prodotto, ad esempio: id, nome, descrizione, valore.
4. Creare una relazione tra le tabelle "prodotto" e "attributo" utilizzando una chiave esterna. Ad esempio, la tabella "prodotto" potrebbe avere un campo chiamato "attributo_id" che si riferisce all'ID della tabella "attributo".

Per quanto riguarda l'astrazione, si può utilizzare una classe per rappresentare l'oggetto "prodotto" e un'altra classe per rappresentare l'oggetto "attributo" in codice. La classe "prodotto" potrebbe avere metodi per recuperare e impostare i valori dei campi del prodotto, come nome, descrizione e prezzo, mentre la classe "attributo" potrebbe avere metodi per recuperare e impostare i valori dei campi dell'attributo, come nome e valore.

Inoltre, si può utilizzare un ORM (Object-relational mapping) per gestire la relazione tra le tabelle e le classi, in modo da poter utilizzare oggetti "prodotto" e "attributo" in codice senza dover scrivere query SQL manuali.

La tabella "prodotto_attributo" contiene due campi chiamati "prodotto_id" e "attributo_id" che si riferiscono alle chiavi primarie delle tabelle "prodotto" e "attributo", rispettivamente. Ciò stabilisce una relazione molti-a-molti tra le tabelle "prodotto" e "attributo", in quanto un prodotto può avere più attributi e un attributo può essere assegnato a più prodotti.

Nota che la primary key è composta da prodotto_id e attributo_id in modo che non ci possa essere una ripetizione di coppie prodotto_id-attributo_id nella tabella di associazione



*E se usassi un modello EAV??*
Il modello Entità-Attributo-Valore (EAV) è un modello di database utilizzato per rappresentare informazioni flessibili e dinamiche. In questo modello, gli attributi di un'entità sono rappresentati in modo indipendente dall'entità stessa, permettendo l'aggiunta o la rimozione di attributi senza dover modificare la struttura dell'entità.

Se decidi di utilizzare il modello EAV per il tuo database, ciò potrebbe avere un impatto sul tuo codice in quanto potrebbe essere necessario scrivere query più complesse per recuperare e gestire i dati.

Per accedere ai dati, ad esempio, potresti dover eseguire più query per recuperare i valori degli attributi per un'entità specifica, anziché avere tutti i valori degli attributi contenuti in una singola tabella. Inoltre, potresti dover scrivere codice personalizzato per gestire l'aggiunta o la rimozione di attributi in modo dinamico.

Per quanto riguarda l'astrazione, potrebbe essere necessario creare una classe per rappresentare l'entità, una classe per rappresentare gli attributi e una classe per rappresentare i valori degli attributi, in modo da poter accedere e gestire i dati in modo più flessibile.

**In generale, utilizzare il modello EAV richiede una maggiore complessità nella progettazione e nello sviluppo del database e del codice**, ma può essere utile in casi in cui le esigenze dei dati sono in continua evoluzione e cambiamento. Se i tuoi dati sono relativamente stabili e non cambiano molto nel tempo, potresti preferire utilizzare un modello relazionale tradizionale come il modello ER.