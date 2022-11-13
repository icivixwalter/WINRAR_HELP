REM  ***************************************************************
ista
rem     file batch : Salvataggio.rar
REM     directory = c:\Casa\LEGGI\PAUS
rem     file WinRAR


rem  Opzione -x Estrae file e cartelle con il percorso originale. 
rem  Opzione -r considera le sottocartelle (processa gli archivi delle sottocartelle)
rem  Opzione -u Estrai solo i nuovi



@REM ESEMPIO DI SALVATAGGIO DEL MESE DI OTTOBRE
@REM ------------------------------------------------------------------------------------------------------------

@REM -ta2015:10 = indica after ottobre mentre -tb2015:11 = before novembre
@REM Winrar.lnk a -r -U -ta2015:10 -tb2015:11 ViaDeiMille50_OTTOBRE *PDF

@REM ------------------------------------------------------------------------------------------------------------



rem		MODALITA DI ARCHIVIAZIONE E NOTE
rem ------------------------------------------------------------------------------------------------------------
rem n.b se non vengono indicate la directory di partenza non vengono trovati i dati da archiviare
rem n.b se non  viene indicata la directory di arrivo i dati vengono archiviati nella directory winrar

rem parametri directory di partenza	directory di arrivo  parametri  + lista parametri 
rem a -r -U   c:\casa\brs\file.rar	c:\casa\brs\         -n           A03_Salvataggi_BRS_LISTA_01_TUTTO.lst



	rem ------------ ESEMPIO CON WINRAR --------------------
	rem ma deve essere correttamente settato altrimenti da errore nella ricerca del
	rem file lista.lst perche i comandi dos di rar non riconoscono la path ed il file dove risiede
	rem lista.lst. In alternativa salvare nella direttory gli eseguibili rar.exe e unrar.exe ed
	rem utilizzare i comandi dos.
	rem WinRAR.lnk a -r -U c:\casa\provaLista -n@lista.lst


	REM ------------ ESEMPIO CON I COMANDI DOS CON RAR.EXE ED UNRAR.EXE ------------------------------
	rem alternativo a winrar che non è settato correttamente. Utilizzare gli eseguibili rar.exe e unrar.exe
	
	REM rar.exe a -r -U c:\casa\provaLista -n@lista.lst
	
	rem ------------- ESEMPIO LISTA.LST -----------------------------
	rem salvataggio dei file *.mdb + *.xls nella sottodirectory brs
	rem brs\*.mdb 
	rem brs\*.xls
	


rem ------------------------------------------------------------------------------------------------------------


REM  ***************************************************************
	rem  Utilizzo alternativo di rar con i comandi dos.
	rem rar.exe a -r -U c:\CASA\Linguaggi\DOS\DOS_ESEMPI_BAT\05_DOS_ARCHIVI_BAT *.bat *.txt
	rem rar volume 2 mega:  rar a allegato -v2m
	 
	 C:\CASA\Rar.exe a -r -u ZZ_SALVATAGGI_ARCHIVI_70_GENERICI *.* -v10m -rv10
	 
	@REM Ritardo per 7 secondi
	@choice /C:X /N /T:3 /D:X > NUL		









goto note_multivolume


A cosa servono
Cosa sono
Come crearli
Creazione di un archivio multi-volume con WinRAR
Creazione di un archivio multi-volume con RAR e WinRAR in modalità linea di comando
Utilizzo del vecchio schema d'assegnazione dei nomi ai volumi
Creazione di un archivio multi-volume auto-estraente
Inserzione delle informazioni per il recupero e volumi di ripristino
Come scompattarli
Con le dimensioni odierne di immagini, documenti, audio, ecc., pur con un buon programma di compressione come WinRAR / RAR gli archivi creati risultano di dimensioni sempre maggiori. Se i CD riscrivibili vengono incontro all'esigenza di trasferire questi archivi da un computer ad un altro, esistono certi ambiti in cui dimensioni medie possono creare problemi.
Questi casi vengono a crearsi nel momento del trasporto dei dati con dischetti (Floppy Disk) o attraverso allegati ad email per le quali il server di posta elettronica da un limite alla grandezza dei singoli messaggi. Ecco quindi che nasce la necessità di spezzare l'archivio in più sotto-archivi di una determinata dimensione.

Nel creare un archivio multi-volume WinRAR / RAR non fa altro che creare l'archivio e, al raggiungimento delle dimensione massima voluta, chiudere il volume (sotto-archivio) corrente e prosegue creando un volume seguente. Se anche questo raggiunge il limite massimo, ripete l'operazione precedente, tutto sino al termine dell'operazione d'archiviazione.

Per distinguere i vari volumi tra loro, WinRAR / RAR inserisce, tra il nome dell'archivio stesso e l'estensione RAR un contatore del tipo: partxxx dove xxx è il progressivo da 001 a 999. Quindi i nomi dei volumi dell'archivio documenti avranno il.nome documenti.part001.rar, documenti.part002.rar e così via.
In WinRAR / RAR nella versione precedente alla 3.00 lo schema d'assegnazione del nome era diverso: il primo volume era documenti.rar mentre il secondo era documenti.r00, il terzo documenti.r01 e così via.

Ovviamente per estrarre l'intero contenuto servono tutti i vari volumi. Se però l'archivio non è di tipo solido, è possibile comunque estrarre da un volume i file in esso contenuti per intero. Se invece l'archivio multi-volume è di tipo solido, la mancanza di un volume pregiudica l'intero archivio. Esistono però due metodi per recuperare queste situazioni: inserire delle "informazioni per il recupero" oppure creare dei "volumi di ripristino".

Nel primo caso WinRAR, quello delle "informazioni per il recupero", aggiunge dei dati ridondanti, in una percentuale di circa l'1% della dimensione totale come valore predefinito, che può impiegare in seguito per ricostruire piccole parti danneggiate dell'archivio.

I "volumi di ripristino" sono invece dei volumi aggiuntivi di un archivio multi-volume. Ogni volume di ripristino permette di ricostruire uno qualsiasi dei volumi reali, se uno di questi risultasse rovinato o mancante, a patto che gli altri volumi sia integri.
Due volumi di ripristino permettono di ricostruire due qualsiasi dei volumi reali, sempre a patto che gli altri siano integri. E così via...

Una volta aperto il pannello "Nome archivio e parametri", per creare un archivio multi-volume basta indicare la dimensione desiderata del volume. Nell'elenco verranno memorizzati gli ultimi valori inseriti, oltre a quello predefinito corrispondente alla dimensione dei dischetti da 1.4 Mbytes (1.457.664). Il resto delle operazioni sono quelle tipiche della creazione di un archivio: nella maggior parte dei casi a questo punto si è già pronti a creare un archivio multi-volume.

Basta aggiungere il parametro -v<n>[k|b|f|m|M] alla linea di comando. Come riportato nella guida :«Per definizione il parametro <n> viene espresso in migliaia (1.000) di bytes (non 1.024 x bytes). Potete inoltre esprimerlo in KBytes posponendo il simbolo ‘k’, in bytes posponendo il simbolo ‘b’, in megabytes posponendo il simbolo 'm', in milioni di bytes posponendo il simbolo 'M' o selezionarlo da uno dei vari valori predefiniti posponendo il valore numerico ed il simbolo ‘f’. I valori predefiniti sono 360, 720, 1200, 1440 o 2880 e stanno ad indicare i rispettivi formati dei dischetti (floppy disk). Se la dimensione viene omessa, viene auto-determinata in base allo spazio disponibile sul dispositivo di destinazione.».
Quindi per creare un archivio multi-volume di nome "documenti" e di dimensione pari a quella di un dischetto da 1.4 Mbytes, la sintassi è:

 rar a documenti -v1440f
 (winrar a documenti -v1440f)
 
 
 
 oppure per creare un archivio dal nome "allegato" con una dimensione di 2 Mbytes:
 
  rar a allegato -v2m
   (winrar a allegato -v2m)
   
   e se poi lo si vuole inviare come allegato ad un messaggio email indirizzato a supporto@winrar.it (solo per RAR per Windows):

   rar a allegato -v2m -iemlsupporto@winrar.it
   (winrar a allegato -v2m -iemlsupporto@winrar.it)
   
   Per utilizzare il vecchio schema, che consiste nei nomi del tipo documenti.rar, documenti.r00, documenti.r01 e
   
   con RAR occore indicare il parametro -vn, ovvero:

   rar a documenti -v1440f -vn
   (winrar a documenti -v1440f -vn)
   
   
   Con WinRAR basta selezionare l'opzione "Crea un archivio auto-estraente", oltre alla dimensione del volume.
   Con RAR, basta aggiungere l'opzione -sfx. La sintassi diventa quindi:
   
      rar a documenti -v1440f -sfx
   (winrar a documenti -v1440f -sfx)
   
   per inserire le "informazioni per il recupero" con WinRAR occorre selezionare la voce a fianco.
   
   con RAR, per inserire le "informazioni per il recupero" va utilizzato il parametro -rr<n>, dove <n> è il numero di settori delle informazioni per il recupero o, se seguito da una p, indica la percentuale di informazioni per il recupero da inserire rispetto alla dimensione dell'archivio.
   Quindi se vogliamo inserire 100 settori di informazioni per il recupero, la sintassi è:
   
      rar a documenti -v1440f -rr100
   (winrar a documenti -v1440f -rr100)
   
   
   Per creare i "volumi di riprisitino" esistono due metodi con RAR. Se si sta creando un archivio multi-volume, 
   l'opzione da utilizzare è -rv<n>, dove <n> è il numero dei volumi di ripristino da creare o, se seguita da un p, 
   la percentuale dei volumi di ripristino da creare rispetto al totale dei volumi.
Se ad esempio vogliamo creare 3 volumi di ripristino, la sintassi è:
  rar a documenti -v1440f -rv3
   (winrar a documenti -v1440f -rv3)
   
   Se invece l'archivio multi-volume esiste già, per creare dei volumi di ripristino il comando è rv<n>, con le stesse considerazioni precedenti sul valore di <n>. Il comando diventa quindi:
   
      rar rv3 documenti.rar
   (winrar rv3 documenti.rar)
   
   Per scompattare un archivio multi-volume con RAR non serve alcun accorgimento particolare in quanto è già il programma ad accorgersi del tipo di archivio:
   
      rar x documenti.part001
      (winrar x documenti.part001)
   
   Anche in questo caso se tutti i volumi sono nella stessa cartella RAR estrae automaticamente tutto il contenuto, oppure ne richiede il volume seguente.
   
Stesso discorso a prima se l'archivio è auto-estraente: ci pensa il modulo ad eseguire la scompattazione multi-volume.



:note_multivolume