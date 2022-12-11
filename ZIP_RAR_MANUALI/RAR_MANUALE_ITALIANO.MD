
ANALISI_COMUNE_COMANDO
    SCHEMA_RAR 
            RAR <comando> -<opzione_1> -<opzione_N> <archivio> <file...>  <@lista_file...> <percorso_dove_estrarre\>
            
RAR       COM  OPZ_01    OPZ_02          OPZ_03           archivio        file_lista            path
RAR.EXE     a   -r       -taMC:2022:11:1 -tbMC:2022:11:32 %FileRarCASA%   @casaListafile.txt    c:\casa\posta\
    

    SCHEMA_DOS CMD
DOS
        COM   DRV  PATH  file     PAR_01    PAR_02  PAR_03
        DIR   C:   \dos   a.txt   /P        /Q       /A

SCHEMA GENERALE
TIPO  CMD  DRV PATH_ESTR FileList POA_01 POA_02 POA_03 POA_04 Archivio 

SCHEMA DOS_FINALE

TIPO_CMD_s    COD_ATTIV_s  CMD_s   
DOS  DOS_DIR  DIR -ac      DIR     

ANALISI_DOS
    Schema_Comando_Dos
        Note
            i comandi do si trovano in questo url:
            https://learn.microsoft.com/it-it/windows-server/administration/windows-commands/dir

            dir [<drive>:][<path>][<filename>] [...] [/p] [/q] [/w] [/d] [/a[[:]<attributes>]][/o[[:]<sortorder>]] [/t[[:]<timefield>]] [/s] [/b] [/l] [/n] [/x] [/c] [/4] [/r]



        COMANDI
            DIR
                Nota
                    Visualizza un elenco di file e le sottodirectory della directory. Se usato senza parametri, questo comando visualizza l'etichetta del volume e il numero di serie del disco, seguiti da un elenco di directory e file sul disco (inclusi i nomi e la data e l'ora dell'ultima modifica). Per i file, questo comando visualizza l'estensione del nome e le dimensioni in byte. Questo comando visualizza anche il numero totale di file e directory elencati, le relative dimensioni cumulative e lo spazio disponibile (in byte) rimanenti sul disco.

                PARAMETRI

                    Parametro           
                                        Descrizione
                    [<drive>:][<path>]  
                                        Specifica l'unità e directory per il quale si desidera visualizzare un elenco.

                    [<filename>]        
                                        Specifica un file specifico o un gruppo di file per il quale si desidera visualizzare un elenco.

                    / p                 
                                        Visualizza una schermata dell'elenco alla volta. Per visualizzare la schermata successiva,    premere un tasto qualsiasi.
                                        esempio DIR /P

                    /q                  Visualizza informazioni sulla proprietà di file.

                    /W                  
                                        Visualizza l'elenco in formato esteso, con un massimo di cinque nomi di file o i nomi di directory in ogni riga.
                                        ESEMPIO
                                        DIR /W

                    /d                  Visualizza l'elenco nello stesso formato /w, ma i file vengono ordinati per colonna
                                        ed ordinati in alfabetico

                    /a[[:]<attributes>] 
                                    
                                    ATTRIBUTI /A
                                        Visualizza solo i nomi di tali directory e file con gli attributi specificati. Se non si usa questo parametro, il comando visualizza i nomi di tutti i file, ad eccezione dei file nascosti e di sistema. Se si utilizza questo parametro senza specificare alcun attributo, il comando visualizza i nomi di tutti i file, inclusi i file nascosti e di sistema. L'elenco dei 
                                        possibili valori degli attributi è:


                                        d - Directory
                                            esempio dir /a:d

                                        h - File nascosti
                                                    dir /a:h

                                        s - File di sistema
                                                    dir /a:s
                                        l - Reparse points

                                        r - File di sola lettura
                                                    dir /a:r

                                        a - File pronti per l'archiviazione
                                                    dir /a:a

                                        i - File indicizzati non contenuti
                                            È possibile usare qualsiasi combinazione di questi valori, ma non separare i valori usando spazi. Facoltativamente, è possibile usare due punti (:) separatore oppure è possibile usare un trattino (-) come prefisso per indicare "not". Ad esempio, l'uso dell'attributo -s non mostrerà i file di sistema.

                    /o[[:]<sortorder>]  
                                    ATTRIBUTI /O
                                        Ordina l'output in base a sortorder, che può essere qualsiasi combinazione dei valori seguenti:

                                            n - Alfabeticamente per nome
                                            e - Alfabeticamente per estensione
                                            g - Prima directory di gruppo
                                            s - Per dimensione, primo più piccolo
                                            d - Per data/ora, prima meno recente
                                                Usare il - prefisso per invertire l'ordinamento
                                                    ESEMPIO 
                                                        DIR -d

                                        .... finire

ANALISI_WINRAR
     RAR <comando> -<opzione_1> -<opzione_N> <archivio> <file...>  <@lista_file...> <percorso_dove_estrarre\>

            RAR.EXE COMANDO -OPZIONE 1 OPZIONE 2 OPZIONE 3 ARCHIVIO.RAR FILE/@LISTA_FILE PATH_ESTRAZIONE

        c:\CASA\WinRAR\Rar.exe  a -r -taMC:2022:11:1 -tbMC:2022:11:32 %FileRarCASA% @ZIP_RAR_N04_DATA_TAC-TBC_casaListafile.txt




WIN RAR
    WIN RAR MANUALE_UTENTE_INTRODUZIONE

                                    Manuale d'utente
                                    ~~~~~~~~~~~~~~~~

                          RAR versione 4.20 in modalità carattere
                          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

                      =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=
                        Benvenuti nel programma di compressione RAR!
                      =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=

    Introduzione
         ~~~~~~~~~~~~
                                                                                  
          RAR è un potente strumento che vi permette di gestire e controllare file
          di tipo "archivio". RAR in versione modalità caratteri supporta solo gli
          archivi in formato RAR, solitamente con estensione ".rar". Il formato ZIP
          così come altri formati non sono supportati.
          Gli utenti di Windows possono installare la versione in modalità 
          grafica, chiamata WinRAR, che può gestire molti altri formati 
          d'archiazione, tra cui anche ZIP.

          Anche se la versione in modalità carattere RAR e quella grafica WinRAR 
          hanno una sintassi da linea di comando simile, esistono comunque alcune 
          differenze. Per questo motivo si raccomanda la consultazione di questo 
          manuale RAR.TXT per la versione in modalità carattere RAR (rar.exe nella 
          versione per Windows) e della guida WinRAR.chm per la versione grafica 
          WinRAR (WinRAR.exe).

          Le prestazione di RAR comprendono:

            *  Algoritmo di compressione originale e altamente sofisticato.
            *  Speciale algoritmo di compressione ottimizzato per i testi, file 
               audio, immagini, eseguibili a 32 e 64-bit Intel.
            *  Migliore compressione rispetto a programmi similari, soprattutto 
               utilizzando il metodo d'archiviazione 'solido'.
            *  Possibilità di verifica dell'autenticazione (solo per la versione 
               registrata)
            *  Archivi auto-estraenti (SFX) e suddivisi in più volumi.
            *  Capacità del recupero fisico di archivi danneggiati.
            *  Blocco, protezione con parola chiave, ordinamento personalizzabile, 
               archivi multi-volume, gestione dati di sicurezza e molto altro...


         File di configurazione
         ~~~~~~~~~~~~~~~~~~~~~~

          RAR per Unix può leggere le informazioni di configurazione dal file 
          '.rarrc' posto nella directory principale dell'utente (memorizzata nella 
          variabile d'ambiente HOME) o nella directory '/etc'.

          RAR per Windows può leggere le informazioni di configurazione dal file 
          'RAR.INI' posto nella stessa cartella del file 'RAR.EXE'.

          Questi file possono contenere le seguenti istruzioni:

             switches=qualsiasi_opzione_di_RAR_separata_da_uno_spazio

          Ad esempio:

          switches=-m5 -s


         Variabile d'ambiente
         ~~~~~~~~~~~~~~~~~~~~

            Le opzioni predefinite possono essere aggiunte automaticamente alla
            linea di comando di RAR memorizzandole in una variabile d'ambiente
            "RAR".

            Per esempio, in Unix possono essere aggiunte al tuo profilo le seguenti
            linee:

              RAR='-s -md1024'
              export RAR

            RAR userà queste opzioni come parametri predefiniti nella linea di
            comando e creerà archivi "solidi" con una dimensione dizionario di
            1024Kbytes.

            In Windows, la stessa funzione viene svolta dall'istruzione seguente,
            che va aggiunta la file AUTOEXEC.BAT:

              SET RAR=-s -md1024

            RAR gestisce la definizione delle opzioni secondo la seguente
            proprietà:

               opzioni da linea di comando             priorità maggiore
               opzioni nella variabile d'ambiente      priorità inferiore
               opzioni nel file di configurazione      priorità più bassa


         File di tracciato
         ~~~~~~~~~~~~~~~~~

          Se l'opzione '-ilog' viene specificata nella linea di comando o nel file 
          di configurazione, RAR scriverà i messaggi riguardanti errori incontrati 
          durante i processi di archiviazione in un file di tracciato. 
          Leggi la descrizione del parametro -ilog per ottenere ulteriori dettagli.


         Il file con l'ordine di archiviazione per il formato 'solido': rarfiles.lst
         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

          Il file 'rarfiles.lst' contiene un elenco definibile dall'utente che
          indica a RAR l'ordine con cui aggiungere i file ad un archivio 'solido'.
          Esso può contenere nomi, filtri con caratteri jolly e una istruzione
          speciale: $default. Questa istruzione definisce il posto in cui collocare
          tutti i file che non rispondo ai criteri stabiliti dalle altre
          definizioni inserite nel file in oggetto. Il carattere da anteporre ad
          una linea di commento, non considerata da RAR, è ';'.

          In Windows questo file deve essere posto nella stessa cartella di 
          RAR.EXE o nella cartella %APPDATA%\WinRAR ; in Unix nella cartella 
          principale dell'utente (HOME) o in /etc.

          Due consigli per ottenere un aumento della compressione e della velocità 
          d'operazione:

          - file simili dovrebbero essere raggruppati vicini nell'archivio;
          - file con frequente accesso dovrebbero essere posti all'inizio 
            dell'archivio.

        	@filtri
          Normalmente le definizioni dei filtri posti all'inizio dell'elenco hanno 
          una priorità più alta rispetto a quelli seguenti, ma c'è un'eccezione a 
          questa regola. Se il file 'rarfiles.lst' contiene due filtri per i quali 
          tutti i file ricadono sia nel primo filtro che nel secondo, il secondo 
          ha la priorità maggiore se il suo filtro è più selettivo. Ad esempio, nel
          caso di due filtri '*.cpp' e 'f*.cpp', il secondo, 'f*.cpp' è prioritario
          rispetto al primo in quanto la sua definizione è più specifica rispetto
          al precedente.


         Sintassi dei comandi di RAR 
         ~~~~~~~~~~~~~~~~~~~~~~~~~~~

         Sintassi

            RAR <comando> -<opzione_1> -<opzione_N> <archivio> <file...>
                <@lista_file...> <percorso_dove_estrarre\>


            RAR.EXE COMANDO -OPZIONE 1 OPZIONE 2 OPZIONE 3 ARCHIVIO.RAR FILE/@LISTA_FILE PATH_ESTRAZIONE

         Descrizione

            I comandi e le opzioni da linea di comando permettono il controllo 
            della creazione e della gestione di archivi con RAR. Il comando è una 
            istruzione, di solito una sola lettera, che attiva la relativa azione.
            Le opzioni sono state introdotte per modificare il modo con cui RAR 
            esegue l'azione. Gli altri parametri sono il nome dell'archivio e i 
            file da archiviare o da estrarre dall'archivio.

            I file <lista_file> sono file di testo puro e contengono l'elenco 
            dei nomi dei file da processare. Il nome del file deve iniziare a 
            colonna 1. E' possibile inserire dei commenti nel file_di_lista dopo la 
            coppia dei caratteri //. Per esempio, potete creare un file Copia.Lst 
            che contiene il seguente testo:
                      @lista.file


            c:\lavori\documenti\*.txt         //copia dei documenti di testo
            c:\lavori\immagini\*.bmp          //copia delle immagini
            c:\lavori\vari

            e quindi eseguire il comando:

               rar a copia @copia.lst

            Se volete che i nomi dei file siano inseriti da tastiera lasciate 
            vuoto il nome del file_di_lista, quindi lasciate solo @.

            Per definizione, RAR in modalità carattere per Windows utilizza la 
            tabella dei caratteri OEM (DOS) per l'elendo dei file, ma questo 
            comportamento può essere modificato con l'opzione -sc<set_caratteri>.

            Dalla linea di comando potete specificare sia direttamente dei nomi di 
            file sia un file_di_lista. Se non vengono specificati almeno uno dei 
            due, RAR processerà tutti i file presenti.

            Molti comandi di RAR, come quelli per l'estrazione, la verifica o 
            l'elencazione, permettono l'impiego dei caratteri jolly nel nome 
            dell'archivio. Se nel nome dell'archivio non viene specificata alcuna 
            estensione, RAR assume solo l'estensione .rar; per questo inserire il 
            solo carattere '*' significa selezionare solo tutti gli archivi con 
            estensione .rar. Se dovete gestire degli archivi senza estensione
            inserite '*.' . La maschera '*.*' seleziona tutti i file. I caratteri
            jolly nel nome dell'archivio non sono permessi per i comandi di
            archiviazione o eliminazione.

            In ambiente Unix dovete racchiudere i parametri della linea di comando 
            che contengono i caratteri jolly tra singoli o doppi apici per evitare 
            che siano interpretati dalla shell di Unix. Per esempio il comando 
            seguente estrae tutti i file *.asm da tutti gli archivi *.rar nel 
            percorso corrente:

               rar e '*.rar' '*.asm'


            Il comando può essere uno dei seguenti:

    COMANDI 
        a comando
                    a       Aggiunge all'archivio file e cartelle.		@archivia  @a.archivia

                            Esempi:

                            1) Aggiungi tutti i file *.hlp dalla cartella corrente 
                               all'archivio guida.rar:
                                
                                  rar a guida *.hlp

                            2) Archivia tutti i file della cartella corrente e di tutte le 
                               sotto-cartelle in un archivio auto-estraente, solido,
                               multi-volume dalla dimensione massima del volume di 362.000 
                               byte ed aggiungi ad ogni volume i dati per il recupero 
                               degli errori:
                 
                                  rar a -r -v362 -s -sfx -rr salvataggio

                               Siccome non viene specificato alcun file da archiviare, 
                               viene assunto il filtro *.* (tutti i file).

                            3) Come eccezione speciale, se viene specificato come 
                               parametro dei file da archiviare il nome di una cartella e se 
                               questo parametro non include ne un filtro che identifica dei 
                               file ne un carattere '\' finale, verrà aggiunto 
                               all'archivio l'intero contenuto della cartella e di tutte 
                               le sotto-cartelle, anche se non viene inserita l'opzione 
                               -r.

                               Il seguente comando aggiungerà tutti i file presenti nella 
                               cartella Immagini e tutte le sotto-cartelle contenute in un 
                               archivio dal nome copia_Immagini:
                            
                                  rar a copia_Immagini.rar Immagini
                										@sottocartelle  @-r
                            4) Se il nome della cartella include un carattere '\' finale o 
                               un filtro per identificare dei file, verranno utilizzate le 
                               normali regole e dovrete specificare l'opzione -r se volete 
                               includere nel processo le sotto-cartelle.

                               Il seguente comando aggiungerà tutti i file presenti nella 
                               cartella Immagini ma non quelli presenti nelle 
                               sotto-cartelle perché non è stata specificata l'opzione -r:
                            
                                  rar a copia_Immagini.rar Immagini\*

        c commento

                        @c.commento
                        @c.rar
            c       Aggiunge un commento all'archivio. Il commento viene
                    visualizzato all'inizio di una operazione sull'archivio. La
                    dimensione di un commento può essere al massimo di 62.000
                    bytes.

                    Esempi:

                       rar c distribuzione.rar

                    Inoltre un commento può essere preso da un file di testo 
                    utilizzando l'opzione -z[<nome_file>].
                    Il comando seguente aggiunge all'archivio un commento contenuto 
                    nel file info.txt:

                       rar c -zinfo.txt distribuzione

        cf commento file

                    @cf,  @commento.file

            cf      Aggiunge un commento ai file. Il commento dei file viene
                    visualizzato a seguito del comando 'v'. La dimensione di un
                    commento di file può essere al massimo di 32.767 byte.

                    Esempio:

                      rar cf grande-archivio *.txt

        ch modifica archivio
                        @modifica.archivio  @ch

            ch      Modifica alcune caratteristiche dell'archivio.

                    Questo comando è utile per applicare molte opzioni che 
                    modificano le caratteristiche di un archivio ma che non hanno 
                    un loro comando, come le opzioni -av, -cl, -cu, -tl.

                    Con questo comando non si può ricomprimere, crittografare o 
                    decrittografare i dati di un archivio e non si possono unire o 
                    creare dei volumi.

                    Se utilizzato senza alcuna opzione, il comando 'ch' copia 
                    semplicemente i dati dell'archivio senza apportare alcuna 
                    modifica.

                    Esempio:

                      rar ch -tl archivio.rar

                    imposta l'orario dell'archivio come quello del file archiviato 
                    più recente.


            cw      Scrive il commento di un archivio in uno specifico file.

                    Il formato del file creato dipende dal valore del parametro -sc.

                    Se il nome del file in cui scrivere i commenti non viene 
                    specificato, i commenti verranno inviati al dispositivo 
                    stdout.

                    Esempi:

                    1) rar cw archivio commento.txt

                    2) rar cw -scuc archivio commento_unicode.txt

                    3) rar cw archivio


            d       Cancella file e cartelle da un archivio. Notate che se dopo la
                    cancellazione l'archivio non ha più file al suo interno,
                    anch'esso viene cancellato.

        e estrazione file
                        @estrazione.e  @e.estrate.tutti.i.file

            e       Estrae tutti i file dell'archivio nella cartella corrente,
                    annullando eventuali percorsi memorizzati.

        f aggiorna file
                    @f.aggiorna  @aggiorna.file.vecchi

            f       Aggiorna i file presenti nell'archivio solo se sono più
                    vecchi di quelli presenti nella cartella di origine. Questo
                    comando non aggiunge nuovi file all'archivio.
                    
        i cerca frasi
                    @cerca.una.frase,  @frase.ricerca, @ricerca.frase

            i[i|c|h|t]=<frase>
                    Trova una frase negli archivi.

                    Potete specificare i seguenti parametri:

                      i - ricerca non sensibile al maiuscolo/minuscolo 
                          (predefinito);

                      c - ricerca sensibile al maiuscolo/minuscolo;

                      h - ricerca esadecimale;

                      t - utilizza la tabella dei caratteri ANSI, Unicode e OEM 
                          (solo per Windows).

                    Se non deve essere specificato alcun parametro, è possibile 
                    utilizzare una sintassi del comando semplificata, ovvero 
                    i<frase>  invece di i=<frase>.

                    E' possibile specificare il parametro 't' in concomitanza con 
                    altri parametri, come ad esempio, ict=<frase> che esegue una 
                    ricerca sensibile al maiuscolo/minuscolo e con le tabelle dei 
                    caratteri sopra riportate.

                    Esempi:@esempi.cerca.frase

                    1) rar "ic=primo livello" -r c:\*.rar *.txt

                       Esegue una ricerca, sensibile al maiuscolo/minuscolo, della
                       frase "primo livello" nei file .txt compresi in tutti gli
                       archivi .rar del disco C:.

                    2) rar ih=f0e0aeaeab2d83e3a9 -r e:\testi

                       Esegue la ricerca della sequenza esadecimale 
                       'F0 E0 AE AE AB 2D 83 E3 A9' negli archivi rar della 
                       cartella 'e:\testi'.
                       
        k blocca archivio              
                        @blocca.archivio @k

            k       Blocca l'archivio. Ogni operazione di modifica eseguita su un
                    archivio bloccato verrà ignorata.

                    Esempio:

                       rar k finale.rar

        l elenca contenuto
            l[t,b]  Elenca il contenuto di un archivio [livello tecnico]. I file
                    vengono elencati come nel caso del comando 'v' ad eccezione
                    del percorso del file, ovvero viene visualizzato solo il
                    nome. Vengono visualizzate delle ulteriori informazioni
                    tecniche (il Sistema Operativo dove si è creato l'archivio, 
                    indicatore se è di tipo solido e se è in una vecchia versione) 
                    se viene aggiunto il carattere 't'. L'aggiunta del carattere 
                    'b' invece forza RAR a riportare solo il nome del file, senza 
                    alcuna informazione addizionale.


            m[f]    Muove file e cartelle nell'archivio [solo file]. A seguito
                    di una archiviazione terminata con successo, i file e le
                    cartelle originali vengono cancellate. Le cartelle non
                    verranno rimosse se viene aggiunto il carattere 'f' e/o se
                    viene inserito nella linea di comando l'opzione '-ed'.


            p       Stampa il file verso il dispositivo di output, solitamente
                    PRN, la stampante.

                    Potete utilizzare questo comando in congiuzione al parametro 
                    -inul per disabilitare tutti i messaggi di RAR e stampare solo 
                    i dati del file. Questo può essere importante se avete bisogno 
                    d'inviare il contenuto di un file al dispositivo 'stdout' 
                    utilizzato per le 'pipes'.


        r ripara archivio
                        @ripara.archivio @r

            r       Ripara l'archivio se danneggiato. La "riparazione" di un
                    archivio viene eseguita in due stadi. Per primo l'archivio
                    danneggiato viene scansionato per individuare la presenza di
                    eventuali dati per il recupero (vedi anche il comando 'rr'). Se
                    l'archivio contiene delle informazioni per il recupero inserite
                    in precedenza e se la porzione dei dati danneggiati è continua
                    e minore di N*512 bytes, dove N è il numero dei settori dei
                    dati per il recupero inseriti nell'archivio, la possibilità di
                    ricostruire integralmente l'archivio è molto alta. Quando
                    questo stadio ha termine viene creato un nuovo archivio,
                    chiamato "fixed.<nome_archivio>.rar", dove "<nome_archivio>" è
                    il nome dell'archivio originale danneggiato.

                    Se un archivio danneggiato non contiene informazioni per il
                    recupero o l'archivio non può essere completamente riparato per
                    la serietà del danno, viene attivato un secondo stadio. Durante
                    questo stadio viene ricostruita solo la struttura dell'archivio
                    mentre è impossibile recuperare i file per i quali fallisce il
                    controllo del CRC. E' comunque possibile ricuperare i file non
                    danneggiati che risultano normalmente inaccessibili per il
                    danneggiamento della struttura. Generalmente questo è utile per
                    archivi non solidi. Se un archivio solido viene danneggiato,
                    spesso durante il secondo stadio possono essere recuperati
                    solo i file precedenti quello danneggiato.
                    Questa fase non è utile per gli archivi che hanno 
                    l'intestazione dei file crittografata: posso essere riparati 
                    solo se sono state inserite le informazioni per il recupero.

                    Quando questo stadio ha termine, viene creato un nuovo 
                    archivio chiamato "rebuild.<nome_archivio>.rar", dove 
                    "<nome_archivio>" è sempre il nome dell'archivio originale 
                    danneggiato.

                    Durante il processo di recupero, RAR può chiedere all'utente
                    di effettuare delle scelte nel momento in cui non è sicuro
                    della localizzazione di un file all'interno di un archivio
                    danneggiato. Il messaggio è:

                      Oggetto sospetto

                      Nome:  <possibile_nome_file>
                      Dimensione:  <dimensione>   Compresso: <dimensione compressa>

                              Aggiungerlo all'archivio: Si/No/Tutti

                    Rispondete 'S' per aggiungere questo oggetto all'archivio
                    rebuild.<nome_archivio>.rar.

                    Esempio:

                       rar r rovinato.rar


            rc      Ricostruisce gli eventuali volumi mancanti o quelli 
                    danneggiati utilizzando i volumi di ripristino (file .rev).
                    Dovete specificare uno qualsiasi dei volumi esistenti; ad
                    esempio: 'rar rc copia.part03.rar'.

                    Leggete la descrizione del comando 'rv' per ottenere 
                    informazioni complete in merito ai volumi di ripristino.


            rn      Rinomina i file archiviati.

                    La sintassi del comando è:

                       rar rn <nome_archivio> <vecchio_nome1> <nuovo_nome1> ... <vecchio_nomeN> <nuovo_nomeN>

                    Ad esempio, il comando seguente:

                       rar rn dati.rar leggimi.txt leggimi.bak info.txt info.bak

                    rinominerà, nell'archivio dati.rar, il file leggimi.txt in 
                    leggimi.bak ed il file info.txt in info.bak.

                    E' possibile utilizzare i caratteri jolly nella definizione di 
                    "vecchio_nome" e di "nuovo_nome" per trasformazioni come il 
                    cambio di tutto un tipo d'estensioni dei file. Ad esempio:

                       rar rn dati.rar *.txt *.bak

                    rinominerà tutti i file con estensione .txt in .bak.

                    RAR non verifica se il nome del file nuovo è già presente 
                    nell'archivio e per questo è importante porre attenzione per 
                    evitare nomi duplicati, soprattutto quando si utilizzano i 
                    caratteri jolly. Questo comando è potenzialmente pericoloso 
                    perché inserendo dei caratteri jolly errati si può ottenere 
                    la perdita dell'intero archivio.


            rr[N]   Aggiunge all'archivio i dati utili per un recupero.
                    Opzionalmente, possono essere aggiunti ad un archivio delle
                    informazioni per il recupero che comportano un piccolo aumento
                    delle dimensioni dell'archivio, ma che possono essere d'aiuto
                    per il recupero dei file nel caso di un difetto al supporto su 
                    cui vengono memorizzati (dischetto, memoria USB, disco rigido, 
                    ecc.) o di altri danneggiamenti ai dati trasferiti da un 
                    sistema ad un altro, sempre che il danno non sia troppo grave.

                    I dati per il recupero possono contenere sino a 524.288
                    settori. Il numero dei settori può essere specificato
                    direttamente nel comando "rr", dove N=1 ÷ 524288, o, se non
                    specificato, viene selezionato automaticamente da WinRAR in
                    base alla dimensione dell'archivio: la dimensione dei dati per
                    il recupero viene impostata a circa l'1% della dimensione
                    dell'archivio. Questo permette di recuperare circa lo 0,6% di
                    dati danneggiati contigui rispetto alla dimensione totale
                    dell'archivio.

                    E' inoltre possibile specificare la dimensione dei dati per il
                    recupero in percentuale rispetto alla dimensione complessiva
                    dell'archivio; per far questo basta semplicemente appendere il 
                    carattere di percentuale al comando stesso. Ad esempio:

                       rar rr3% nome_archivio

                    Da notare che se inserite questo comando in un file .bat o 
                    .cmd, dovete utilizzare la sintassi 'rr3%%' invece di 'rr3%' 
                    in quanto l'interprete dei comandi DOS considera il singolo '%' 
                    come inizio di un parametro passato alla chiamata del file 
                    batch. Potete comunque utilizzare anche 'p' al posto di '%'; 
                    in questo modo 'rr3p' funziona correttamente.

                    Se i dati danneggiati sono contigui, ogni settore può
                    recuperare sino 512 bytes di informazioni, altrimenti questo
                    valore può diminuire in presenza di più punti di 
                    danneggiamento.

                    La dimensione dei dati per il recupero può essere calcolata in
                    modo approssimativo tramite la seguente formula:
            
                     <dimensione_archivio> / 256 + <numero_settori_dati_di_recupero>
                      * 512 bytes.


            rv[N]   Crea i volumi di ripristino (file .rev), che possono essere 
                    utilizzati per ricostruire uno o più volumi mancanti o 
                    danneggiati di un archivio multi-volume.
                    Questo comando ha senso solo per archivi multi-volume e dovete 
                    specificare il nome del primo volume. Ad esempio:

                       rar rv3 dati.part01.rar

                    Questa prestazione può essere utile per copie di sicurezza o, 
                    ad esempio, quando postate un archivio multi-volume in un 
                    news-group e qualcuno degli utenti non ha ricevuto alcuni 
                    file. Postando solamente il volume di ripristino invece di 
                    tutti i file mancanti ai vari utenti, si può ridurre il 
                    numero dei file da rispedire.

                    Un file .rev permette di ricostruire un volume RAR mancante o
                    danneggiato, uno qualsiasi di quelli che compongono l'archivio
                    multi-volume. Ad esempio, se avete un archivio multi-volume
                    composto da 30 volumi e 3 volumi di ripristino, potete
                    ricostruire sino a 3 volumi presi tra qualsiasi dei 30
                    originali. Se il numero dei file .rev è inferiore al numero
                    dei volumi da ricostruire, la ricostruzione è impossibile. Il
                    numero totale dei volumi normali e di quelli di ripristino non
                    può superare i 255.

                    I volumi originali RAR non devono essere modificati dopo la 
                    creazione dei volumi di ripristino. L'algoritmo di ripristino 
                    utilizza i dati memorizzati sia nei volumi di ripristino che 
                    in quelli RAR per ricostruire i volumi RAR mancanti.
                    Quindi se modificate un volume RAR, ad esempio bloccandolo dopo 
                    aver creato dei file .REV, l'operazione di ripristino 
                    fallisce.

                    Il parametro opzionale <N> permette di specificare il numero 
                    dei volumi di ripristino da creare e deve essere inferiore al 
                    numero totale dei volumi dell'archivio multi-volume. Potete 
                    inoltre posporre il simbolo di percentuale a questo 
                    parametro: in questo caso il numero dei file .rev creati sarà 
                    uguale alla percentuale indicata rispetto al numero totali dei 
                    volumi. Ad esempio:
          
                       rar rv15% dati.part01.rar

                    RAR ricostruisce i volumi mancanti, o danneggiati, o quando si
                    utilizza il comando 'rc' o automaticamente quando non trova il
                    volume seguente durante l'estrazione e trova invece il numero
                    necessario di file .rev.

                    I volumi di ripristino non possono essere utilizzati per 
                    correggere dei volumi danneggiati, ma se volete potete 
                    cancellare un volume danneggiato ed eseguire il comando 'rc' 
                    per ricostruirlo.

                    Le copie originali dei volumi danneggiati vengono rinominate 
                    in *.bad prima d'essere ricostruite. Ad esempio il file 
                    '<nome_volume>.part03.rar' verrà rinominato in 
                    '<nome_volume>.part03.rar.bad'.
            
        s [nome] converte archivio autoestraente

            s[nome] Converte l'archivio in auto-estraente. Questo comando crea, da
                    un archivio già esistente, uno di tipo auto-estraente
                    (SFX=SelF-eXtracting archive) che, quando viene eseguito, è in
                    grado d'estrarre autonomamente i file contenuti al suo
                    interno. All'archivio viene anteposto un modulo auto-estraente,
                    solitamente il file DEFAULT.SFX, o un altro se viene
                    specificato al posto di [nome]. Nella versione per Windows il
                    file .SFX deve essere nella stessa cartella di RAR.EXE, mentre
                    nella versione per Unix questo deve essere nella directory 
                    dell'utente, in '/usr/lib' o in '/usr/local/lib'.
                    @AUTOESTRAENTE

        s- Rimuove modulo
            s-      Rimuove il modulo auto-estraente da un archivio già
                    auto-estraente. RAR creerà un nuovo archivio senza il modulo
                    auto-estraente: l'archivio originale non viene cancellato.

        t verifica file archiviati
            t       Verifica i file archiviati. Questo comando esegue una
                    estrazione fittizia, senza riportare alcun messaggio a video,
                    in modo da verificare i file specificati.

                    Esempi:

                    Verifica tutti gli archivi della cartella corrente: @verifica@archivi

                       rar t *

                    o per Unix:

                       rar t '*'

                    L'utente può verificare tutti gli archivi delle sotto-cartelle @verifica@sottocartelle
                    partendo dalla corrente con il comando:

                       rar t -r *

                    o per Unix:

                       rar t -r '*'

        u Aggiorna i file in archivio    @aggiorna.file.vecchi
            u       Aggiorna i file presenti nell'archivio solo se sono più vecchi
                    di quelli che stanno per essere aggiunti e aggiunge anche i
                    nuovi file, non presenti nell'archivio.

        v  Elenco esteso archivio     @elenco.file   @v.t,b

            v[t,b]  Elenco esteso del contenuto dell'archivio [livello tecnico]. I 
                    file vengono elencati utilizzando il formato: percorso
                    completo, commento del file, dimensione originale e compressa,
                    rapporto di compressione, data ed orario dell'ultima modifica, 
                    attributi, valore del CRC, metodo di compressione e versione
                    minima di RAR occorrente per l'estrazione. 

                    Le informazioni sul metodo di compressione sono visualizzate 
                    nel formato m<N><d>.
                    'N' visualizza il metodo di compressione ed utilizza gli stessi 
                    valori dell'opzione -m<n>, dove '0', '1', ..., '5' stanno ad 
                    indicare 'memorizza', 'più veloce', ..., 'migliore'. 
                    'd' indica la dimensione del dizionario di compressione, come 
                    per l'opzione -md<n>, dove 'a', 'b', ..., 'g' stanno  ad 
                    indicare 64 KB, 128 KB, ..., 4096 KB. Le cartelle hanno sempre 
                    riportato come metodo di compressione '0' senza la dimensione 
                    del dizionario.
                    
                    Se viene aggiunto il carattere 't' vengono visualizzate
                    delle ulteriori informazioni tecniche come "SO creaz.", 
                    "Solido" e "Vecchio". "SO creaz." indica il tipo di Sistema 
                    Operativo della versione di RAR utilizzata per creare 
                    l'archivio. L'opzione "Solido" indica se l'archivio è di tipo 
                    solido (vedi l'opzione -s spiegata più avanti). L'opzione 
                    "Vecchio" se la versione del file è l'ultima (No)  o è una 
                    precedente (vedi l'opzione -ver spiegata più avanti).
                    
                    L'aggiunta del carattere 'b' invece forza RAR a riportare solo 
                    il nome del file, senza alcuna informazione addizionale.

                    Per elencare il contenuto di tutti gli archivi di un
                    multi-volume, metti un '*' al posto dell'estensione o aggiungi 
                    il parametro '-v'.

                    Esempi:

                    1) elenca il contenuto dell'archivio sistema.rar in modalità 
                       tecnica e memorizza l'elenco nel file 'elencotecnico.lst':

                          rar vt sistema >elencotecnico.lst

                    2) elenca il contenuto del'archivio "spiegazione.rar", solo 
                       con il nome dei file e dell'eventuale percorso:

                          rar vb spiegazione

        x Estrai i file
                    @estrai file
            x       Estrae i file dall'archivio con i percorsi completi.

                    Esempio:

                       rar x -av- -c- monete 100lire.gif

                    estrae il file '100lire.gif' nella cartella corrente; sono
                    disabilitati la verifica dell'autenticazione ed i commenti.


    OPZIONI
       NOTE
                Le opzioni, da utilizzare in congiunzione con un comando, sono:  @OPZIONI


                -?      Visualizza un breve guida ai comandi ed alle opzioni. Questa è 
                        la stessa che appare se si esegue RAR.EXE senza alcun
                        parametro o con una sintassi del comando errata.

                --      Stop scansione delle opzioni.
                        Questa opzione comunica a WinRAR che non ci sono più opzioni
                        da considerare nel seguito della linea di comando. Questo può
                        essere utile se il nome di un archivio o di un file inizia con
                        il carattere '-'. Senza l'opzione '--' questo nome viene
                        considerato da RAR come un'altra opzione.

                        Esempio:

                        Aggiungere tutti i file dalla cartella corrente in un archivio
                        solido dal nome '-NomeStrano':

                           rar a -s -- -NomeStrano

       -@ DISABILITA

                -@[+]   Disabilita [abilita] l'impiego di file di tipo lista_file

                        Analizzando la linea di comando, RAR considera un parametro che
                        inizi con il carattere '@' come una lista_file. In questo modo,
                        per definizione, RAR cerca di leggere il file 'nomefile' come
                        una lista_file se trova il parametro '@nomefile' nella linea di
                        comando. Ma se esiste un file, nell'archivio o nella cartella
                        d'origine, di nome '@nomefile', RAR considererà il parametro
                        '@nomefile' come un file e non come un lista_file.

                        L'opzione -@[+] permette di evitare questa ambiguità e 
                        definisce con precisione come gestire un parametro che inizi
                        con il carattere '@'.

                        Se specificate -@, tutti i parametri trovati dopo questa 
                        opzione verranno considerati come nomi di file, non come 
                        lista_file.

                        Se specificate -@+, tutti i parametri trovati dopo questa 
                        opzione verranno considerati come lista_file, non come nomi di 
                        file.

                        Questa opzione non influisce sui parametri localizzati nella 
                        linea di comando prima di essa.

                        Esempio:

                        Verifica il file archiviato di nome '@casa':

                        rar t -@ note.rar @casa


                -ac     Cancella l'attributo "Modificato" ai file appena compressi o
                        estratti (solo per la versione di Windows). @ATTRIBUTO.MODIFICATO


                -ad     Appende il nome dell'archivio al percorso di destinazione.
                            @appende@nome@archivio

                        Questa opzione può essere utile se si scompatta un gruppo di 
                        archivi. Per definizione RAR pone i file estratti da tutti 
                        gli archivi in un'unica cartella, mentre con questa opzione 
                        creerà varie cartella ognuna con il nome dell'archivio 
                        sorgente nella quale verranno posti i relativi file estratti.

                        Esempio:

                           rar x -an *.rar dati\

                        RAR creerà per ogni archivio da scompattare una sotto-cartella 
                        della cartella 'dati'.


                -ag[formato]

                        Genera il nome dell'archivio utilizzando la data corrente.
                            @genera@archivio  @data@corrente @DATA@CORRENTE

                        Aggiunge al nome dell'archivio da creare o da processare una
                        sequenza legata alla data corrente. Utilissima per le copie
                        (backup) giornaliere.  @copie@giornaliere

                        Il formato della sequenza da appendere può essere definito nel
                        parametro opzionale [formato] oppure, se non specificato, è
                        "AAAAMMGGOOMMSS". La definizione del formato può includere i
                        seguenti caratteri:     @anno@mese  @mese.iniziale  @gennaio @febbraio

                         Y   - Anno
                         M   - Mese
                         MMM - Iniziale del mese (Gen, Feb, ecc.)

                                @settimana@numero.settimana
                         W   - Il numero della settimana rispetto all'anno (una
                               settimana inizia con Lunedì)

                         A   - Il numero del giorno corrente rispetto alla settimana
                               (lunedì equivale ad 1, domenica a 7)
                         D   - Giorno
                         E   - Giorno dell'anno
                         H   - Ore
                         M   - Minuti (la M è considerata indicatore dei minuti se
                               segue il carattere H delle ore)
                         I   - Minuti (considerata come indicatore dei minuti 
                               indipendentemente dalla posizione dell'indicatore 
                               delle ore)
                         S   - Secondi

                                @progressivo.archivio  @nome@univoco
                         N   - Progressivo dell'archivio. RAR esegue una ricerca degli 
                               archivi con un nome generato uguale a quello da creare e
                               se lo trova incrementa di 1 l'ultimo progressivo in modo
             &#65533;                 da generare un nome univoco. Questo carattere 'N' non 
                               può essere utilizzato quando si sta creando un archivio.
                               Quando vengono eseguite delle operazioni non di 
                               archiviazione, come l'estrazione, RAR seleziona un 
                               archivio esistente precedente il primo 'N' non 
                               utilizzato (che dovrebbe corrispondere all'ultimo 
                               archivio creato) o imposta N ad 1 se non esistono 
                               archivi.

                        Ogni carattere utilizzato nella definizione del formato 
                        rappresenta un solo carattere aggiunto al nome dell'archivio. 
                        Ad esempio utilizzate WW per il numero della settimana a due 
                        cifre o YYYY per l'anno a quattro cifre.
                                @settimana.due.cifre    @anno.quatto.cifre

                        Se il primo carattere della definizione è '+' la posizione 
                        della  data e del nome base dell'archivio vengono scambiati in 
                        modo che la data preceda il nome base.  @data.precede.nome  @+  =nome e data

                        La definizione del nome dell'archivio può contenere del testo 
                        opzionale racchiuso dai caratteri '{' e '}'. Questo testo 
                        verrà inserito nel nome dell'archivio così com'è, ovviamente 
                        senza i due caratteri di delimitazione.  @?

                        Qualsiasi altro carattere inserito nella definizione del
                        formato verrà inserito nel nome dell'archivio senza alcun
                        cambiamento.

                        Se necessitate gestire un archivio già esistente, fate
                        attenzione all'impiego di questa opzione . A seconda del
                        formato definito con l'opzione '-ag' e del tempo trascorso
                        dall'ultimo impiego di questa, i nomi dell'archivio esistente e
                        del nuovo possono non coincidere. In questo caso RAR creerà o
                        tenterà di aprire un nuovo archivio con il nuovo nome, invece
                        d'aggiornare quello esistente.
                        Potete utilizzare l'opzione -log per scrivere in un file il 
                        nome dell'archivio generato e leggerlo da questo per le 
                        operazioni seguenti.   @log.file  @?  @FILE@LOG

                        Esempi:

                        1) Utilizzare il formato predefinito AAAAMMGGOOMMSS:

                              rar a -ag copia

                           si otterrà un archivio dal nome simile a
                           'copia20000206193027.rar'.

                        2) Utilizzare il formato GG-MMM-AA (DD-MMM-YY):  @giorno.mese.anno

                              rar t -agDD-MMM-YY copia

                           si otterrà un archivio dal nome simile a
                           'copia20-02-00.rar'.

                        3) Utilizzare il formato AAAAMMGGOOMM (YYYYMMDDHHMM) ponendo 
                           la data prima di 'copia':
                                @+
                              rar a -ag+YYYYMMDDHHMM copia

                           si otterrà un archivio dal nome simile a
                           '200002061930copia.rar'.

                        4) Utilizzare il formato YYYY-WW-A, incluse le descrizioni dei 
                           campi:
                                    @anno@settimana  @archivia@anno@settimana

                              rar a -agYYYY{anno}-WW{settimana}-A{giorno_della_settimana} copia

                           si otterrà un archivio dal nome simile a:
                           'copia2002anno-06settimana-4giorno_della_settimana.rar'


                        5) Utilizzare il formato YYYYMMDD ed il progressivo 
                           dell'archivio. Questo permette di generare un nome univoco 
                           anche se il comando viene eseguito più volte in un giorno:
                                @progressivo

                           rar a -agYYYYMMDD-NN copia


                -ai     Ignora gli attributi dei file archiviati.
                            @ignora.attributi  @attributi

                        Se questa opzione viene utilizzata durante l'estrazione, RAR 
                        non imposta gli attributi memorizzati nell'archivio per i file 
                        che vengono estratti.
                        Questa opzione permette di preservare gli attributi assegnati 
                        in automatico dal sistema operativo ai nuovi file creati.

                        In Windows gli attributi sono Modificato, Sistema, Nascosto e 
                        Sola-Lettura. In Unix e Linux gli attributi implicati sono 
                        l'user, il group e gli altri permessi sui file.


                -ao     Aggiunge solo i file con l'attributo "Modificato" attivo
                        (solo per la versione di Windows).

                        Esempio:

                        Aggiungere tutti i file del disco 'C:', che abbiano attivo
                        l'attributo "Modificato", all'archivio 'f:copia' e cancellare
                        da questi l'attributo "Modificato":

                                @aggiungi@modificati

                           rar a -r -ac -ao f:copia c:\*.*


                -ap     Impostare il percorso all'interno dell'archivio. Il percorso
                        definito utilizzando questa opzione viene aggiunto all'inizio
                        del nome dei file quando essi vengono inseriti in un archivio,
                        oppure viene rimosso dal nome dei file quando questi vengono
                        estratti.

                        Per esempio, se volete aggiungere il file leggimi.txt alla
                        cartella DOCUMENTI\ITA dell'archivio 'rilascio', potete
                        eseguire:

                           rar a -apDOCUMENTI\ITA rilascio leggimi.txt

                        o estrarre la cartella ITA nella cartella corrente:
                 
                           rar x -apDOCUMENTI rilascio DOCUMENTI\ITA\*.*


                -as     Sincronizza i contenuti dell'archivio.
                            @sincronizza  @?

                        Se questa opzione è utilizzata durante l'archiviazione, i file
                        archiviati che non sono presenti nell'elenco attuale dei file
                        da aggiungere verranno eliminati dall'archivio stesso. E'
                        conveniente utilizzare questa opzione in combinazione con '-u'
                        per ottenere una sincronizzazione completa dell'archivio e
                        delle cartelle archiviate.

                        Per esempio, dopo il comando:

                           rar a -u -as copia sorgenti\*.cpp

                        l'archivio 'copia.rar' conterrà solo i file *.cpp presenti
                        nella cartella sorgenti, tutti gli altri eventuali file
                        verranno cancellati dall'archivio stesso. E' un'operazione
                        simile alla creazione di un archivio ma con una sostanziale
                        differenza: se non ci sono file modificati dalla precedente
                        copia, l'operazione viene svolta molto più velocemente della
                        creazione di un nuovo archivio.


                -av     Inserisce i dati per la verifica dell'autenticazione (solo per
                        gli utenti registrati).
                        RAR inserirà, ad ogni creazione o aggiornamento dell'archivio,
                        le informazioni concernenti la persona che l'ha creato,
                        l'ultima data di aggiornamento e il nome originale
                        dell'archivio stesso.

                        Se un archivio, contenente le informazioni sull'autenticazione,
                        viene modificato senza specificare questa opzione, le suddette
                        informazioni verranno rimosse.

                        Quando estraete, verificate, elencate o aggiornate un archivio
                        con l'opzione '-av', RAR esegue il controllo sull'integrità  e
                        visualizza il messaggio:

                          Verifica dati d'autenticazione... 

                        Nel caso la verifica dell'autenticazione dia un esito
                        positivo, viene visualizzato il messaggio 'Ok' seguito dal
                        nome del creatore e dalle informazioni sull'ultimo
                        aggiornamento. Nel caso che la verifica dell'autenticazione
                        fallisca, viene visualizzato il messaggio 'Fallita'.

                        Quando viene creato un archivio multi-volume con l'opzione
                        "-av", le informazioni d'autenticazione verranno aggiunte ad
                        ogni volume.

                        La verifica dell'autenticazione di RAR può essere falsificata
                        all'origine e non fornisce lo stesso livello di sicurezza dei
                        moderni schemi di firme digitali basate sulle infrastrutture di
                        chiavi pubbliche. Raccomandiamo d'utilizzare questa prestazione
                        solo ai fini informativi, come un commento speciale
                        dell'archivio. Non basatevi su questa prestazione nei casi in
                        cui serva avere un'accurata autenticazione del creatore
                        dell'archivio.

                        Perché la prestazione della verifica d'autenticità possa essere
                        utilizzata, il programma deve essere registrato. Se non lo ho
                        avete già fatto, siete pregati di leggere i file Registra.Txt
                        e Licenza.Txt dove potete trovare ulteriori notizie.


                -av-    Disabilita l'inserzione dei dati per la verifica
                        dell'autenticazione.


                -cfg-   Disabilita la lettura dei parametri predefiniti dalla
                        variabile d'ambiente RAR e/o dal file di configurazione.

                -cl     Converte i nomi dei file in minuscolo.


                -cu     Converte i nomi dei file in maiuscolo.


                -c-     Disabilita la visualizzazione dei commenti.


                -df     Cancella i file dopo essere stati archiviati.

                        Muove i file nell'archivio. Questa opzione, in combinazione
                        del comando 'a', esegue la stessa azione del comando 'm'.


                -dh     Apre i file già in uso da altri programmi.

                        Permette di processare file aperti in scrittura da altre
                        applicazioni.

                        Questa opzione può essere utile se un'applicazione permette 
                        l'accesso in lettura ad un file e nel contempo qualsiasi tipo 
                        d'accesso al file è proibito, portando al fallimento 
                        dell'operazione stessa.

                        Attenzione perché questa opzione può danneggiare i dati da
                        processare in quanto permettere l'archiviazione di un file
                        mentre questo può essere in modifica da parte di un'altra
                        applicazione. Utilizzatelo con estrema attenzione!


                -dr     Elimina i file ponendoli nel "Cestino" di Windows.

             &#65533;          Elimina i file dopo averli archiviati ponendoli nel "Cestino" 
                        di Windows. Disponibile solo nella versione per Windows.
             &#65533;         

                -ds     Non ordina i file da inserire in un archivio solido.


                -dw     Pulisci lo spazio file dopo l'archiviazione

             &#65533;          Prima di eliminare i file dopo l'archiviazione, lo spazio 
                        occupato da questi viene sovrascritto con dei byte di valore 0 
                        per prevenire l'eventuale ripristino dei dati apparentemente 
                        eliminati.

                        Ponete attenzione al fatto che questo approcio è stato 
                        progettato per i dischi rigidi (HD) ma può fallire per 
                        sovrasscrivere i dati originali dei file se questi sono su dei 
                        dischi allo stato solido (SSD) come conseguenza dell'impiego 
                        della tecnologia "SSD wear leveling" e di un indirizzamento 
                        dei dati molto più complicato.
                
             &#65533;  
                -ed     Non aggiunge le cartelle se vuote.

                        Questa opzione indica a RAR di non aggiungere all'archivio le 
                        informazioni sulle cartelle durante una fase di creazione o
                        aggiornamento, ma solo quelle dei file.
                        Quando RAR estrae da un archivio, creerà delle cartelle 
                        non-vuote basandosi solo sul percorso dei file archiviati, e 
                        per questo le informazioni sulle cartelle vuote verranno perse. 
                        Verranno altresì perse tutti gli attributi estesi, salvo il 
                        nome, anche delle cartelle non-vuote, come i diritti 
                        d'accesso, quindi utilizzate questa opzione se non volete 
                        preservare tali dati.

                        Se l'opzione '-ed' è utilizzata in congiunzione al comando 'm' 
                        o all'opzione '-df', RAR non rimuoverà le cartelle vuote.


                -ee     Non gestisce gli attributi estesi.

                        Disabilita l'archiviazione ed il ripristino degli attributi 
                        estesi. Opzione valida solo per la versione per OS/2.


                -en     Non aggiunge il blocco di "fine archivio".
                        
                        Per definizione, il formato RAR 3.0 prevede sempre il blocco
                        "fine archivio" al termine di un archivio nuovo o aggiornato.
                        Questo permette di non considerare dati esterni appesi in coda,
                        come le firme digitali di sicurezza, ma in alcuni casi può
                        essere utile disabilitare questa prestazione. Ad esempio, se un
                        archivio viene trasferito tra due sistemi attraverso un canale
                        non affidabile, può accadere il raro caso che venga trasmesso
                        una parte del blocco di "fine archivio" ma non tutto, in quanto
                        solitamente è di 7 byte. Se prima della ritrasmissione il
                        mittente aggiunge dei file in coda e il trasferimento inizia
                        con l'accodamento dei nuovi dati a quelli già inviati, durante
                        l'estrazione WinRAR blocca l'operazione appena incontra la
                        prima parte del vecchio "fine archivio", escludendo tutti i
                        nuovi dati aggiunti. Disabilitando l'aggiunta di questo blocco
                        si possono evitare situazioni simili, comunque rare ad
                        accadere.

                        Questa opzione non può essere usata con gli archivi 
                        multi-volume in quanto il blocco di "fine archivio" contiene 
                        informazioni importanti per la corretta gestione dei volumi.


                -ep     Non archivia il percorso originale dei file da inserire.
                        Con questa opzione i file vengono aggiunti ad un archivio
                        senza includere le eventuali informazioni sul percorso
                        originale. Questa operazione è utile, ad esempio, se da una
                        certa cartella si vogliono archiviare file residenti in
                        un'altra cartella ma non si vuole appunto inserire le
                        informazioni sul percorso originale. Attenzione che questa
                        opzione può portare ad avere archivi con più file aventi lo
                        stesso nome.


                -ep1    Non archivia nei file il percorso inserito nella linea di 
                        comando.

                        Esempio:

                        tutti i file e le cartelle della cartella 'tmp' verranno 
                        aggiunte all'archivio 'raccolta', ma il percorso memorizzato 
                        non deve includere 'tmp\'

                           rar a -ep1 -r raccolta tmp\*

                        Questo è equivalente ai comandi:

                           cd tmp
                           rar a -r raccolta
                           cd ..


                -ep2    Archivia il percorso completo. Quando inserisce un file
                        nell'archivio, include nel suo nome il percorso d'origine
                        completo, escluso il nome del dispositivo (disco) ed il primo
                        separatore di percorso ('\' o '/'). @PATH@COMPLETA @PERCORSO


                -ep3    Archivia il percorso completo anche della lettera del disco. 
                        Solo nella versione per Windows. @LETTERA@DISCO

                        Questa opzione memorizza il percorso del file completo anche 
                        della lettera del disco se utilizzato durante l'archiviazione. 
                        Il separatore del disco, il carattere ':', due-punti, viene 
                        sostituito dal carattere '_'.

                        Se utilizzate poi l'opzione -ep3 durante l'estrazione, il 
                        carattere '_' verrà sostituito con il due-punti ed in questo 
                        modo i file verranno scompattati nel disco e nella cartella 
                        originali. Se viene specificato un percorso di destinazione, 
                        questo verrà ignorato.

                        Inoltre converte i percorsi UNC da \\servente\condivisione in 
                        __servente\condivisione durante l'archiviaizione e li 
                        ripristina allo stato originale durante l'estrazione.
                        
                        Questa opzione è utile per la copia di più dischi in un unico 
                        archivio. Ad esempio potete eseguire:

                           rar a -ep3 -r copia.rar c:\ d:\ e:\

                        per creare la copia di sicurezza, e:
                  
                           rar x -ep3 copia.rar

                        per ripristinarla.

                        Ma ponete attenzione, ed utilizzare l'opzione -ep3 solo se 
                        siete sicuri che l'archivio da cui estrarre i file non ne 
                        contenga alcuni dannosi.
                        In altre parole, utilizzatela solo se avete creato l'archivio 
                        voi stessi o se avete fiducia dell'autore. Infatti questa 
                        opzione permette di sovrascrivere qualsiasi file in qualsiasi 
                        posizione del vostro computer, inclusi file di sistema 
                        importanti, e normalmente dovrebbe essere utilizzato solo a 
                        scopo di copia di sicurezza e ripristino di questa.


                -e[+]<attr> 
                        Specifica la maschera degli attributi dei file che devono o non 
                        devono essere processati. @MASCHERA@ATTRIBUTI.FILE

                        Senza il carattere '+' posto prima di <attr>, questa opzione 
                        definisce una maschera che individua i file da escludere 
                        dalla processazione.
                        Se invece il carattere '+' è presente, la maschera individua i 
                        file da includere durante la processazione.
                        
                        <att> è un numero o in base decimale, o in base ottale se
                        inizia con il carattere '0' (zero), o esadecimale se inizia con
                        i caratteri '0x' (zero-ics). Se il risultato della comparazione
                        AND bit-per-bit è diverso da 0 (zero), ovvero anche solo un
                        attributo corrisponde a quelli qui indicati, il file verrà
                        (opzione con '+') o non verrà (opzione senza '+') processato.
                        I valori numerici relativi ai singoli attributi, validi in RAR 
                        per Windows, sono indicati nella seguente tabella: @FILE.DI.SISTEMA

                          dec. | ott.| esad.|attr.| spiegazione
                         ------+-----+------+-----+--------------------------
                            1  |  01 |  0x1 |  R  | sola lettura (read-only)
                            2  |  02 |  0x2 |  H  | nascosto (hidden)
                            4  |  04 |  0x4 |  S  | sistema (system)
                            8  | 010 |  0x8 |  L  | etichetta (label) - NON SUPPORTATA
                           16  | 020 | 0x10 |  D  | cartella (directory)
                           32  | 040 | 0x20 |  A  | modificato (archived)

                        Come indicato, la sintassi nella forma L='etichetta' non è 
                        supportato nella versione di RAR per Windows.
                        Per determinare un numero che corrisponda a più attributi,
                        basta sommare tra loro i valori dei singoli attributi
                        desiderati, avendo cura d'eseguire le somme correttamente nel
                        caso si utilizzino le basi ottale o esadecimale

                        Nella versione per Windows è inoltre possibile indicare, oltre 
                        alla maschera numerica, direttamente i caratteri D, S, H, A e
                        R la cui corrispondenza è riportata nella tabella di cui sopra. 
                        L'ordine con cui vengono indicati gli attributi non è 
                        importante.

                        E' possibile specificare entrambe le opzioni -e<attr> e 
                        -e+<attr> nella stessa linea di comando.

                        Esempio:

                        1) Aggiungere all'archivio 'rapporto' tutti i file meno quelli
                           con attributo 'nascosto' e 'sistema'; utilizzando i
                           caratteri per identificare gli attributi, il comando è:

                              rar a rapporto -ehs

                           utilizzando la maschera numerica in base decimale, il comando
                           è (2+4):

                              rar a rapporto -e6

                           mentre il valore numerico in ottale è '06' ed in esadecimale
                           è '0x6'.

                        2) Aggiungere all'archivio solo i nomi delle cartelle senza il 
                           loro contenuto:

                              rar a -r -e+d cartelle

                           oppure -e+16, -e+020, -e+0x10.

                        3) Non estrarre i file di sola-lettura:

                              rar x -er archivio


                -f      Aggiorna solo i file compresi nell'archivio.
                        Questa opzione può essere utilizzata nella creazione o
                        nell'estrazione da un archivio. Per la creazione, la porzione
                        di linea di comando "a -f" è equivalente al comando 'f'.
                        Potete utilizzare l'opzione '-f' anche con il comando 'm' o
                        'mf'. Se l'opzione '-f' viene utilizzata nell'estrazione con
                        il comando 'x' o 'e', allora solo i file più vecchi verranno
                        sostituiti da quelli nuovi estratti dall'archivio. I file
                        archiviati che non trovano riscontro come nome con quelli non
                        compressi, non verranno estratti.


                -hp[parola_chiave] 
                        Crittografa sia i dati che l'intestazione dell'archivio.

                        Questa opzione è simile a '-p[parola_chiave]' ma, mentre questa
                        crittografa solo i dati e lascia leggibili le informazioni dei
                        file, con '-hp[parola_chiave]' viene crittografata anche
                        l'area con il nome del file, la sua dimensione, gli eventuali
                        attributi e commento oltre ad altri dati sensibili, in modo da
                        aumentare il grado di riservatezza. Senza la parola chiave è
                        persino impossibile visualizzare l'elenco del contenuto di un
                        archivio crittografato con l'opzione '-hp'.

                        Esempio:

                           rar a -hpfGzq5yKw segreto rapporto.txt

                        aggiungerà il file 'rapporto.txt' all'archivio crittografato 
                        'segreto.rar' utilizzando la parola chiave 'fGzq5yKw'.


                -id[c,d,p,q]
                        Disabilita la visualizzazione di alcuni messaggi:

                        -idc disabilita il messaggio sui diritti d'autore;

                        -idd disabilita il messaggio "Fatto" visualizzato alla fine 
                             dell'operazione di compattazione/scompattazione;

                        -idp disabilita la visualizzazione dell'indicatore di 
                             percentuale dell'operazione;

                        -idq attiva la modalità "silenziosa" dove vengono visualizzati 
                             solo i messaggi d'errore e le eventuali richieste.

                        Possono essere utili quando si redireziona il testo del video
                        verso un file.

                        E' permesso specificare più opzioni contemporaneamente, quindi 
                        l'opzione '-idcdp' è corretta.


                -ieml[.][indirizzo]
                        Invia un archivio via email. Opzione valida solo nella 
                        versione per Windows. @EMAIL@OPZIONE

                        Allega un archivio creato o aggiornato ad un messaggio di 
                        email. Perché questo funzioni dovete avere installato un 
                        gestore di posta elettronica che supporti lo standard MAPI (la 
                        maggior parte dei programmi di posta elettronica supportano 
                        questa interfaccia).

                        Dovete inserire l'indirizzo email direttamente dopo l'opzione, 
                        altrimenti vi verrà chiesto in seguito dal vostro programma di 
                        posta elettronica. E' possibile specificare più indirizzi, 
                        separati tra loro da una virgola a o da un punto-e-virgola.

                        Se appendete il carattere '.' a '-ieml', l'archivio verrà 
                        cancellato una volta allegato al messaggio email.

                        Se l'opzione verrà utilizzata durante la creazione di un 
                        archivio multi-volume, ogni volume verrà allegato ad uno 
                        specifico messaggio email.


                -ierr   Invia tutti i messaggi a stderr.


                -ilog[nome]
                        Memorizza i messaggi d'errore in un file di tracciato
                        (solo per gli utenti registrati).

                        Scrive tutti i messaggi d'errore in un file di tracciato. Se 
                        l'opzione 'nome' non viene specificata, il file di tracciato 
                        viene creato secondo le seguenti regole predefinite:
                        
                        Unix:    il file .rarlog viene creato nella directory home 
                                 dell'utente;

                        Windows: il file rar.log viene creato nella cartella 
                                 %APPDATA%\WinRAR;

                        Se il parametro 'nome' include solo il nome del file senza un 
                        percorso, il file qui indicato verrà cretato nella cartella /
                        directory utilizzando i criteri sopra riportati. Se volete 
                        creare il file di tracciato in un altra cartella / directory, 
                        includete nel parametro 'nome' sia il percorso che il nome del 
                        file da creare.

                        Ad esempio:

                           rar a -ilogc:\tracciati\copia.log copia d:\dos

                        creerà il file di tracciato "c:\tracciati\copia.log" nel caso 
                        si presentassero errori durante la creazione dell'archivio.


                -inul   Disabilita la visualizzazione di qualsiasi messaggio.


                -ioff   Spegne il vostro computer al termine dell'operazione che si va 
                        ad attivare con il presente comando. Questa prestazione può
                        essere impiegata solo su calcolatori che supportino lo
                        spegnimento da programma. 
                        Opzione disponibile solo nella versione di RAR per Windows.

                
                -isnd   Abilita l'emissione dei suoni.


                -k      Blocca l'archivio.  Ogni operazione di modifica eseguita su un
                        archivio bloccato verrà ignorata.


                -kb     Estrai anche i file danneggiati.

                        Per definizione, RAR non estrae un file se fallisce la
                        verifica del CRC. Con l'opzione '-kb' specificata questi file 
                        verranno estratti comunque, anche se i dati risultanti saranno
                        quasi sicuramente danneggiati.


                -log[formato][=nome]
                        Scrive i nomi dei file processati in un file di tracciato.
                            @LOG@OPZIONE
                            @ESEMPI

                        Questa opzione scrive i nomi degli archivi e dei file gestiti
                        in uno specifico file di testo durante i comandi di
                        archiviazione, estrazione, eliminazione, elencazione e 
                        verifica.
                        Il suo comportamento dipende dal parametro 'formato' che può 
                        includere uno o più dei seguenti caratteri:

                        A - Scrivi i nomi degli archivi processati nel file di 
                            tracciato. Se RAR crea o processa dei volumi, verranno
                            inclusi tutti i nomi dei volumi. 

                        F - Scrivi i nomi dei file processati nel file di tracciato. 
                            Questo include i file aggiunti ad un archivio ed i file 
                            inclusi in un archivio se estratti, eliminati o elencati.

                        P - Se esiste già un file di tracciato con questo nome, 
                            appende i dati al file esistente invece di crearne 
                            un'altro.

                        U - Scrivi i dati nel formato Unicode.

                        Se non vengono specificati 'A' o 'F', viene assunto 'A'.

                        Il parametro 'nome' permette di specificare il nome del file 
                        di tracciato. Deve essere separato dal 'formato' dal carattere 
                        '='. Se il 'nome' non è presente, verrà utilizzato il nome 
                        predefinito rarinfo.log.

                        E' possibile specificare più opzioni -log nella stessa linea 
                        di comando.

                        Questa opzione è particolarmente utile quando volete gestire, 
                        all'interno di un file batch, degli archivi creati con le 
                        opzioni -ag o -v. Potete specificare -loga=nomearchivio.txt 
                        quando create un archivio e leggere quindi il nome 
                        dell'archivio generato dal file nomearchivio.txt con un 
                        comando appropiato. Ad esempio, in un file batch di Windows 
                        potrebbe essere definita l'istruzione: 
                        "set /p nome=<nomearchivio.txt".

                        Esempi: @LOG@ESEMPI

                        1) scrivi i nomi dei volumi creati nel file elencovolumi.txt:

                           rar a -v100m -loga=elencovolumi.txt volume.rar c:\data

                        2) scrivi il nome dell'archivio generato nel file copia.txt in 
                           formato Unicode:

                           rar a -ag -logau=copia.txt copia.rar mieifile\*

                        3) scrivi i nomi dei volumi verificati nel file 
                           elencovolumi.txt mentre i nomi dei file dell'archivio 
                           verificati nel file elencofile.txt:

                           rar t -log=elencovolumi.txt -logf=elencofile.txt volume.part01.rar


                -m<n>   Seleziona il livello di compressione:

                   -m0   memorizzazione  Aggiunge i file all'archivio senza
                                         comprimerli.
                   -m1   più veloce      Metodo più veloce, ma con livello di
                                         compressione più basso.
                   -m2   veloce          Metodo di compressione veloce.
                   -m3   normale         Metodo con una compressione e velocità
                                         normale (predefinito).
                   -m4   buona           Metodo con buona compressione.
                   -m5   migliore        Metodo con miglior compressione, ma anche il
                                         più lento.

                        Se questa opzione non viene specificata, RAR utilizza il 
                        livello di compressione normale, '-m3'.

                        Per definizione, RAR utilizza l'algoritmo di compressione 
                        generale per i livelli '-m1' e '-m2', l'algoritmo avanzato per 
                        i file audio e immagini ad alta profondità di colore per i 
                        livelli da '-m3' a '-m5', mentre la compressione avanzata per 
                        i testi è disabilitata in tutte le modalità. 
                        Questo comportamento predefinito può essere cambiato con 
                        l'opzione '-mc'.


                -mc<parametro>
                        Permette di definire i parametri avanzati per la compressione.

                        Questa opzione è prevista essenzialmente per test ed 
                        esperimenti, in quanto per un uso normale è meglio permettere
                        a RAR di selezionare in automatico i parametri di compressione 
                        avanzati.
                        Notate che l'uso improprio di queste opzioni può portare a
                        delle perdite notevoli in prestazione e compressione, quindi
                        utilizzatele solo se avete capito chiaramente su cosa esse
                        vanno ad influire.

                        La sintassi completa è:

                           -mc[parametro1][:parametro2][modulo][+ o -]

                        dove <modulo> è uno dei caratteri che denotano l'algoritmo di 
                        compressione che si va a configurare.

                        Questo può assumere i valori:

                          A       - compressione di file audio;
                          C       - compressione di immagini ad alta profondità di 
                                    colore (RGB);
                          D       - compressione delta;
                          E       - compressione per file eseguibili a 32-bit x86;
                          I       - compressione per file eseguibili Intel a 64-bit;
                          T       - compressione di file di testo.

                        Il segno '+' alla fine dell'opzione forza RAR ad applicare 
                        l'algoritmo selezionato a tutti i dati processati, mentre il 
                        segno '-' disabilita questo algoritmo completamente. Se non 
                        viene specificato alcun segno, RAR selezionerà in automatico 
                        l'algoritmo più appropriato basandosi sul tipo di dati e sul 
                        metodo di compressione selezionato.

                        L'opzione '-mc-' disabilita l'impiego di tutti i moduli 
                        speciali e permette l'impiego del solo algoritmo generale.

                        [parametro1] e [:parametro2] dipendono dal tipo di modulo, come 
                        descritto di seguito.


                        Compressione Audio e compressione Delta:

                           [parametro1] è il numero dei canali a singolo byte e può 
                           assumere il valore da 1 a 31. RAR suddivide i canali 
                           multi-byte in canali ad 1 byte; ad esempio due canali audio 
                           a 16-bit vengono considerati da RAR come 4 canali a 1 byte 
                           per uno.

                           [parametro2] viene ignorato.


                        Compressione di eseguibili a 32-bit, di eseguibili Intel 
                        Itanium a 64-bit e di immagini ad alta profondità di colore:

                           [parametro1] e [parametro2] vengono ignorati.


                        Compressione testo: 

                           L'algoritmo di compressione del testo comporta un alto 
                           fattore di compressione rispetto ad un testo in chiaro. 
                           Questo algoritmo però non può essere ottimizzato per 
                           l'impiego in ambienti multi-processore e multi-core e in 
                           questi casi il tempo di compressione risulta molto più alto 
                           rispetto all'algoritmo generale. 
                           Inoltre anche la velocità di decompressione è inferiore 
                           rispetto a quella dell'algoritmo generale, 
                           indipendentemente dal numero di processori.
                           Questi sono i due motivi perché l'algoritmo di compressione
                           del testo è stato disabilitato per definizione. 
                           Potete specificare l'opzione -mct per permettere a RAR 
                           d'utilizzare automaticamente questo algoritmo per i dati 
                           appropriati. L'opzione -mct+ forzerà l'impiego 
                           dell'algoritmo di compressione testo per tutti i dati.

                           L'opzione -mct può anch'essa includere [parametro1] e 
                           [parametro2], così la sintassi completa diventa:
                           -mc[parametro1][parametro2]t[+ o -].

                           [parametro1] indica l'ordine per l'algoritmo PPM e può 
                           assumere valori da 2 a 63. Solitamente un valore superiore 
                           migliora leggermente il rapporto di compressione ma solo se 
                           è disponibile una quantità sufficiente di memoria RAM. In 
                           caso di mancanza di memoria il risultato peggiora, invece 
                           di migliorare. Inoltre un valore superiore decrementa la 
                           velocità sia di compressione che di decompressione.

                           [parametro2] è la memoria allocata per l'algoritmo PPM, 
                           espressa in megabytes, e può assumere i valori da 1 a 128. 
                           Valori superiori possono migliorare il rapporto di 
                           compressione, ma notate che l'algoritmo PPM utilizza la 
                           stessa dimensione di memoria sia per comprimere che per 
                           decomprimere, così se allocate troppa memoria quando create 
                           un archivio, gli altri che riceveranno il vostro archivio 
                           possono aver problemi a decomprimerlo se non hanno un 
                           quantitativo di memoria installato sufficiente. La 
                           scompattazione può avvenire comunque utilizzando la memoria 
                           virtuale di Windows, ma questo comporta una riduzione 
                           notevole della velocità.

                        Esempi:

                        1) L'opzione '-mc1a+' forza RAR ad utilizzare la 
                           compressione per file audio monocanali ad 8-bit per tutti i 
                           dati.

                        2) L'opzione 'mc10:40t+' forza RAR ad utilizzare l'algoritmo 
                           di compressione dei testi per tutti i dati, impostando 
                           l'ordine di compressione a 10 e allocando 40 MBytes di 
                           memoria.

                        3) L'opzione '-mc12t' imposta l'ordine di compressione 12 
                           all'algoritmo specifico per i testi, lasciando a RAR la
                           possibilità di scegliere quando usarlo o meno.

                        4) Le opzioni '-mct -mcd-' abilitano RAR ad applicare 
                           l'algoritmo di compressione dei testi ai dati appropiati e 
                           disabilitano la compressione delta.

                
                -md<n>  Seleziona la dimensione del dizionario di compressione <n>, che
                        può assumere i valori, espressi in Kbytes: 64, 128, 256, 512,
                        1024, 2048 o 4096. A queste dimensioni corrispondono le lettere
                        'a', 'b', 'c', 'd', 'e', 'f' e 'g' che possono essere
                        utilizzate come valore di <n> al posto dei valori in Kbytes.

                        Il "dizionario di compressione" corrisponde ad un memoria
                        speciale utilizzata dall'algoritmo di compressione. Se la
                        dimensione del file da comprimere (o la dimensione totale di
                        tutti i file nel caso di un archivio in formato "solido") è
                        maggiore della dimensione del dizionario, incrementandolo
                        generalmente migliora il rapporto di compressione, decresce la
                        velocità di compressione e aumenta la quantità di memoria
                        richiesta.

                        RAR può ridurre la dimensione del dizionario se questa è molto 
                        più grande della dimensione dei dati da comprimere. Tutto ciò
                        porta ad una riduzione dell'impiego della memoria senza alcun 
                        peggioramento della compressione.

                        La dimensione predefinita del dizionario di compressione di RAR
                        a 32-bit è di 4096 Kbytes. Nelle versioni di RAR per Windows,
                        Unix e OS/2 è possibile selezionare la dimensione tra 7
                        differenti formati: 64, 128, 256, 512, 1024, 2048 e 4096 Kbytes.
                        Diversamente dalla compressione, la velocità d'estrazione non è
                        legata alla dimensione del dizionario. 

                        La quantità di memoria necessaria a RAR per creare un archivio
                        può essere calcolata tramite la formula:
                                      "5*<dimensione_dizionario>+2560KB".
                        E' necessario circa 1 Mbytes di memoria per l'operazione
                        d'estrazione e "5*<dimensione_dizionario>+3584KB" per aggiornare
                        un archivio in formato solido.

                        Esempio:

                           rar a -s -mdd sorgenti *.asm
                        o
                           rar a -s -md512 sorgenti *.asm

                        creerà un archivio solido utilizzando una dimensione del
                        dizionario di compressione pari a 512Kbytes.


                -ms[<elenco>]
                        Specifica le estensioni di quei file da memorizzare senza 
                        comprimerli.

                        Questa opzione può essere utilizzata per archiviare file già 
                        compressi: aiuta a velocizzare le operazioni di archiviazione
                        senza apportare un apprezzabile diminuzione del rapporto di
                        compressione.

                        Il parametro opzionale <elenco> definisce l'elenco delle 
                        estensioni da considerare, separare da un ';'. Ad esempio 
                        '-msrar;zip;jpg' forzerà RAR a memorizzare senza comprimere 
                        gli archivi in formato RAR e ZIP, oltre alle immagini in 
                        formato JPG. E' inoltre possibile specificare i caratteri 
                        jolly nell'elenco, così '-ms*.rar;*.zip;*.jpg' è comunque 
                        valido.

                        Se il parametro [elenco] viene omesso, l'opzione '-ms' 
                        utilizza l'insieme predefinito delle estensioni, ovvero:

                        7z, ace, arj, bz2, cab, gz, jpeg, jpg, lha, lzh, mp3,
                        rar, zip, taz, tgz, z


                -mt<processi>
                        Imposta il numero dei processi (threads). E' attivabile solo 
                        su computer con più CPU, CPU multi-core e CPU con la 
                        tecnologia "hyperthreading".

                        Il parametro <processi> può assumere un valore da 1 a 32 e
                        definisce il numero massimo raccomandato dei processi 
                        utilizzati sia dall'algoritmo di compressione sia da altri 
                        moduli di RAR qualora necessitino d'utilizzino più processi. 
                        Anche se RAR cercherà di seguire questa raccomandazione, 
                        qualche volta il numero reale dei processi attivi potrà essere 
                        superiore al valore specificato.

                        Una variazione del valore di <processi> può modificare il
                        rapporto di compressione e per questo motivo degli archivi
                        creati con un diverso valore di -mt possono non avere la stessa
                        dimensione, anche se si parte dagli stessi file e gli altri
                        parametri sono uguali.

                        Se l'opzione -mt non viene specificata, RAR tenta d'individuare
                        il numero dei processi disponibili e selezionerà
                        automaticamente la quantità ottimale di processi da utilizzare.


                -n<maschera_file>
                        Include nell'operazione da eseguire solo i file che ricadono 
                        nel filtro <maschera_file>. Si possono utilizzare i caratteri 
                        jolly '?' e '*' per definire dei filtri.
                        Inoltre si può inserire questa opzione più volte in una 
                        linea di comando.

                        Questa opzione non sostituisce le maschere dei file 
                        solitamente specificate nella linea di comando. E' solo un 
                        filtro addizionale applicabile a tutti i file da processare. 
                        In alcuni casi può essere utile per ridurre la lunghezza delle 
                        linea di comando.

                        Ad esempio, se volete comprimere tutti i file *.txt e *.lst 
                        delle cartelle Progetto e Informazioni, solitamente si digita 
                        il comando:

                           rar a copia -r Progetto\*.txt Progetto\*.lst Informazioni\*.txt Informazioni\*.lst

                        Utilizzando l'opzione -n diventa:

                           rar a copia -r -n*.txt -n*.lst Progetto Informazioni


                -n@<file_elenco>
                                    @elenco@file @elenco.file
                        Include nell'operazione da eseguire solo i file specificati
                        nel file d'elenco <file_elenco>.

                        E' simile all'opzione -n<file> ma le maschere dei file le 
                        legge dal file <file_elenco>. 

                        Esempio:  @elenco.file  @lista.file

                           rar a copia -r -n@lista_inclusioni.txt Progetto Informazioni

                        ed il file lista_inclusioni.txt può contenere:

                        *.txt
                        *.lst

                        Se indicate l'opzione -n@ senza alcun parametro, leggerà
                        l'elenco dei file dal dispositivo "stdin". Per Windows 'stdin',
                        in assenza di altri parametri, corrisponde a digitare le
                        maschere dei file, premendo 'Invio' tra una linea ed un'altra e
                        ^Z (Ctrl+Z) per chiudere l'elenco; postponendo invece il
                        carattere '|' alla linea di comando di RAR, l'elenco dei file da
                        comprimere viene fornito dal comando DOS indicato di seguito
                        sulla stessa linea di comando.


                -oc     Imposta l'eventuale attributo di compressione del sistema di 
                        gestione file NTFS. Solo nella versione per Windows.

                        Questa opzione permette di ripristinare l'eventuale attributo 
                        di compressione del sistema di gestione file NTFS durante 
                        l'estrazione dei file. RAR salva sempre gli attributi di 
                        compressione durante la creazione di un archivio ma non li 
                        ripristina a meno che non venga specificata l'opzione -oc.


                -ol     Salva i collegamenti simbolici come collegamenti invece di
                        file. Solo per la versione Unix.


                -or     Rinomina automaticamente i file estratti se nella cartella di 
                        destinazione esistono già dei file con lo stesso nome. Il nome 
                        dei file così estratti assumerà la forma 'nome_file(N).est' 
                        dove 'nome_file.est' è il nome del file originale e N è un 
                        numero progressivo che inizia da 1.


                -os     Salva gli attributi estesi del sistema di gestione file 
                        NTFS. Solo nella versione per Windows.

                        Questa opzione ha significato solo per il sistema di gestione
                        file NTFS e permette di memorizzare nell'archivio gli attributi 
                        estesi relativi ad un file.
                        Potete aver bisogno di specificare questa opzione durante 
                        l'archiviazione se utilizzate dei programmi che memorizzano 
                        dati negli attributi estesi e volete preservare tali 
                        informazioni.

                        Gli attributi estesi non sono salvati per i file NTFS 
                        criptati.


                -ow     Quando archiviate utilizzate questa opzione per memorizzare le
                        informazioni di sicurezza di un file, e quando estraete per
                        ripristinarle.

                        La versione di RAR per Unix salva il proprietario ed il gruppo
                        d'appartenenza di un file quando utilizzi questa opzione.

                        La versione per Windows memorizza il proprietario, il gruppo, i
                        permessi e le informazioni d'audit relative ad un file, ma
                        solo se avete i privilegi necessari per leggere queste
                        informazioni. Notate che solo il sistema di gestione file NTFS
                        supporta i dati di sicurezza sotto Windows.


                -o[+|-] Imposta la modalità di sovrascrittura. Può essere utilizzato 
                        sia durante l'estrazione che durante l'aggiornamento dei file 
                        archiviati. Sono disponibili le seguenti modalità: 

                          -o    Richiede una conferma all'utilizzatore nel caso sia 
                                necessaria una sovrascrittura dei file (modalità 
                                predefinita per l'estrazione).

                       &#65533;  -o+   Sovrascrive i file già esistenti senza richiedere una 
             &#65533;                  conferma all'utilizzatore (modalità predefinita per 
                                l'aggiornamento dei file archiviati).

                          -o-   Non sovrascrive i file già esistenti.


                -p[parola_chiave]   
                        Imposta la parola chiave [parola_chiave] per crittografare i
                        file durante l'archiviazione o per decrittografarli durante
                        l'estrazione. La parola chiave è sensibile al Maiuscolo /
                        minuscolo. Se dimenticate d'indicare nella linea di comando,
                        dopo il parametro -p, la parola chiave, vi verrà richiesta
                        d'immetterla subito dopo tramite il messaggio:
                        "Inserisci la parola chiave (non viene visualizzata in chiaro):".

                        Esempio:

                           rar a -pbubu segreto *.txt

                        aggiunge tutti i file *.txt all'archivio 'segreto' e li
                        crittografa con la parola chiave 'bubu'.
                                @crittografia
                                @chiave.parola


                -p-     Non richiede la parola chiave se prevista; utile per chiamate
                        in automatico a RAR.


                -r      Considera anche le sotto-cartelle.
                        Abilita la ricorsività delle sotto-cartelle, ovvero oltre alla
                        cartella principale vengono prese in considerazione anche le
                        eventuali sotto-cartelle. Questa opzione può essere utilizzata
                        con i comandi 'a', 'u', 'f', 'm', 'x', 'e', 't', 'p', 'v',
                        'l', 'c', 'cf' e 's'.
                        
                        Quando viene utilizzata con i comandi 'a', 'u', 'f' o 'm', i
                        file presenti nelle sotto-cartelle verranno processati così
                        come quelli della cartella principale.

                        Quando viene utilizzata con  i comandi 'x', 'e', 't', 'p', 'v',
                        'l', 'c', 'cf' o 's', gli archivi presenti nelle sotto-cartelle
                        verranno processati così come quello nella cartella corrente.


                -r-     Disabilita la ricorsività delle sotto-cartelle.

                        Anche senza l'opzione -r RAR abilita la ricorsività 
                        automaticamente in alcune situazioni; l'opzione -r- ne 
                        inibisce l'abilitazione.

                        Se specificate un nome di cartella come file da archiviare e 
                        non indicate un filtro di file attraverso l'uso dei caratteri 
                        jolly, per definizione RAR aggiunge anche il contenuto della 
                        cartella stessa e delle sotto-cartelle nonostante non sia 
                        specificato l'opzione -r.
                        Inoltre RAR abilita in automatico la ricorsività se viene 
                        specificato la radice del disco e sempre se non è indicato un 
                        filtro di file. L'opzione -r- disabilita questo comportamento.

                                @ricorsivita

                        Esempi:

                           rar a -r- archivio nome_cartella
                          
                        aggiungerà solo la cartella vuota 'nome_cartella' ed ignorerà 
                        tutto il suo contenuto.
                        
                           rar a -r- archivio c:\

                        aggiungerà solo i file presenti della cartella radice c: e non 
                        eseguirà la ricorsione nelle sue sotto-cartelle.


                -r0     Considera le sottocartelle solo per nomi che rispondo al filtro
                        specificato. Agisce similmente all'opzione '-r', ma, quando
                        viene utilizzata con i comandi 'a', 'u', 'f' e 'm', ricerca un
                        determinato file nelle sottocartelle solo se la definizione di
                        questo nella linea di comando include i caratteri jolly '*' o
                        '?'. Se la definizione del o dei file da archiviare non
                        contiene i caratteri jolly '*' o '?', questi verranno cercati
                        solo nella cartella corrente.

                        Questa opzione opera solo con i nomi di file. I nomi delle 
                        cartelle senza una parte di nome file, come 'nomecartella', 
                        non sono affetti dall'opzione -r0 e i loro contenuti vengono 
                        aggiunti completamente all'archivio a meno che non si 
                        specifichi l'opzione -r-.

                        Esempi:

                        rar a -r0 documenti.rar *.doc leggimi.txt

                        aggiunge nell'archivio documenti.rar i file *.doc presenti 
                        nella cartella corrente e nelle sotto-cartelle, e il file 
                        leggimi.txt solo se presente nella cartella corrente.
                        Se si utilizzava l'opzione -r il file leggimi.txt veniva 
                        cercato anche nelle sotto-cartelle.
                                @archivia.file+cartelle+sottocartelle


                -ri<p>[:<t>]
                        Definisce la priorità e il tempo d'attesa. Disponibile solo
                        in RAR per Windows. Questa opzione viene utilizzata per
                        regolare il carico al sistema da parte di RAR in un ambiente
                        multi-processo (multitask). La priorità del processo <p> può
                        assumere i valori da '0' a '15'. 
                        
                        Quando <p> è posto a '0' viene utilizzata la priorità
                        predefinita dal Sistema Operativo; '1' corrisponde alla
                        priorità più bassa e '15' alla più alta.
                        
                        Il tempo d'attesa <t> può assumere un valore da '0' a '1000'
                        millisecondi. Questo definisce il tempo che RAR rimane in
                        attesa dopo un'operazione di lettura o scrittura, dando così
                        la possibilità ad altri processi di funzionare più velocemente.
                        Definire un tempo d'attesa <t> diverso da 0 può essere utile
                        per ridurre il carico al sistema anche se questo è ottenibile 
                        con il parametro <p>.

                        Esempio:

                        eseguire RAR con la priorità di processo predefinita e con un
                        tempo d'attesa di 10 millisecondi:

                           rar a -ri0:10 copia *.*


                -rr[N]  Aggiunge i dati utili per un recupero a seguito di
                        danneggiamento dell'archivio. Questa opzione viene utilizzata
                        durante la creazione o la modifica di un archivio per
                        aggiungergli le informazioni per il recupero. Vedi la
                        spiegazione del comando 'rr[N]' per ulteriori spiegazioni.


                -rv[N]  Crea i volumi di ripristino. 
                        Questa opzione viene utilizzata con gli archivi multi-volume
                        per generare uno o [N] volumi di ripristino. Vedi la
                        descrizione del comando 'rv[N]' per ottenere ulteriori
                        dettagli.


                -s      Crea un archivio in modalità "solido". Un archivio "solido" è 
                        un archivio compresso utilizzando un metodo speciale che 
                        tratta la maggior parte, o tutti i file da inserire, come 
                        un'entità unica.

                        L'archiviazione solida incrementa significativamente il 
                        fattore di compressione soprattutto quando si comprime un 
                        numero alto di piccoli file. Per contro l'aggiornamento di un 
                        archivio solido già esistente è più lento rispetto 
                        all'aggiornamento di archivio non-solido; inoltre accedere ad 
                        un singolo file è un'operazione leggermente più lenta; infine 
                        un archivio solido è leggermente più sensibile ai 
                        danneggiamenti.

                        Solitamente i file inseriti in un archivio solido sono 
                        ordinati per estensione ma è possibile disabilitare 
                        l'ordinamento utilizzando l'opzione -ds o impostando un 
                        ordinamento dei file alternativo utilizzando un file speciale, 
                        rarfiles.lst.

                        Esempio:

                        Creare un archivio solido "sorgenti" con una dimensione di
                        dizionario di compressione pari a 512 Kbytes, prendendo in
                        considerazione tutte le sottocartelle ad inserendo solo i file
                        con estensione *.asm.

                           rar a -s -md512 sorgenti *.asm -r


                -s<N>   Crea sotto-archivi solidi in gruppi di <N> file.

                        Questa opzione applica la compressione in formato solido come
                        per la '-s', ma crea sotto-gruppi di <N> file. Solitamente
                        questa operazione decrementa il rapporto di compressione, ma
                        decrementa pure l'entità della perdita dati in caso di
                        danneggiamento dell'archivio.


                -sc<set_caratteri>[<oggetti>]
                        
                        Specifica il set di caratteri utilizzato per l'elenco dei file 
                        e i file di commento dell'archivio.
                                @elenco.file

                        Il parametro <set_caratteri> è obbligatorio e può assumere uno 
                        dei seguenti valori:

                          U - Unicode;
                          A - codifica ANSI (Windows), solo nella versione per Windows;
                          O - codifica OEM (DOS), solo nella versione per Windows.

                        I file in formato Unicode devono contenere all'inizio i 
                        caratteri Unicode: FFFE e FEFF, altrimenti RAR ignora questa
                        opzione e processa il file come un documento in formato ASCII.

                        Il parametro <oggetti> è opzionale e può assumere uno dei 
                        seguenti valori:

                          L - elenco file;
                          C - commento file.

                        E' permesso specificare uno od entrambi gli oggetti, come ad 
                        esempio '-scolc'. Se il parametro <oggetto> viene omesso, il 
                        set di caratteri viene applicato a tutti gli oggetti.

                        Questa opzione permette di specificare il set di caratteri per 
                        i file definiti con l'opzione -z[file], gli elenchi dei file 
                        ed i file di commento scritti dal comando 'cw'.

                        Esempi:

                        1) rar a -scol data @elenco

                           legge i nomi dei file da archiviare dal file 'elenco' 
                           utilizzando la codifica OEM.

                        2) rar c -scuc -zcommento.txt data

                           legge il file di commento 'commento.txt' come file in 
                           formato Unicode.

                        3) rar cw -scuc data commento.txt

                           scrive il file 'commento.txt' come file in formato Unicode.


                -se     Crea sotto-archivi solidi in base all'estensione.

                        Questa opzione applica la compressione in formato solido come
                        per la '-s', ma crea sotto-gruppi in base all'estensione,
                        azzerando le statistiche del metodo solido ad ogni cambio
                        estensione. Solitamente questa operazione decrementa il rapporto
                        di compressione, ma decrementa pure l'entità della perdita dati
                        in caso di danneggiamento dell'archivio.


                -sfx[nome_modulo]
                        Crea un archivio auto-estraente. 
                        Se viene utilizzata questa opzione per la creazione di un nuovo
                        archivio, verrà creato un archivio auto-estraente (SFX). Per
                        definizione RAR utilizza come modulo auto-estraente il file
                        Default.SFX. Questo file deve essere nella stessa cartella di
                        RAR.EXE, nella versione per Windows, o nella cartella
                        dell'utente, in '/usr/lib' o '/usr/local/lib' nella versione
                        per Unix.
                        E' possibile specificare subito dopo l'opzione "-sfx" un modulo
                        auto-estraente alternativo, adatto ad altri Sistemi Operativi
                        oppure con interfaccia e prestazioni personalizzate.

                        Esempio:

                           rar a -sfxwincon.sfx finale

                        crea un archivio auto-estraente 'finale.exe' utilizzando il
                        modulo auto-estraente 'wincon.sfx', per Windows 32bit in
                        modalità carattere.


                -si[nome]
                        Legge i dati da comprimere ed archiviare da 'stdin' (standard 
                        input). Il parametro opzionale 'nome' permette di specificare 
                        il nome del file archiviato nel quale sono inseriti i dati 
                        letti da stdin alla creazione. Se questo parametro non viene 
                        indicato, il nome del file sarà 'stdin'. Questa opzione non 
                        può essere usata in congiuzione con '-v'.

                        Esempio:

                           type leggimi.txt | rar a -siistruzioni.txt istruz_1.rar

                        comprimerà la visualizzazione del comando 'type leggimi.txt' 
                        nell'archivio 'istruz_1.rar', chiamando il file 
                        'istruzioni.txt'.

                           dir c: /s | rar a -sidisco_c.txt immagini_disco

                        comprimerà l'elenco di tutti i files del disco C: 
                        nell'archivio 'immagini_disco.rar', chiamando il file 
                        'disco_c.txt'.


                -sl<dimensione>
                        Processa solo quei file la cui dimensione è inferiore a quanto 
                        specificato nel parametro <dimensione>, indicato in byte.


                -sm<dimensione>
                        Processa solo quei file la cui dimensione è superiore a quanto 
                        specificato nel parametro <dimensione>, indicato in byte.


                -sv     Crea volumi solidi indipendenti

                        In modalità predefinita, RAR cerca di azzerare le statistiche 
                        del metodo solido all'inizio del volume seguente, ma solo se 
                        sono stati archiviati alcuni megabytes.

                        Questa opzione forza RAR ad ignorare la dimensione 
                        dell'archivio e ad azzerare le statistiche del metodo solido 
                        ad ogni nuovo volume. Solitamente questa operazione decrementa 
                        il rapporto di compressione, ma incrementa le possibilità 
                        d'estrarre parte dei dati se uno dei volumi è stato rovinato o 
                        perso.

                        Notate che qualche volta RAR non può azzerare le statistiche 
                        anche se è stata specificata questa opzione. Ad esempio non lo 
                        fa quando comprime un unico file in più volumi. RAR può 
                        azzerare le statistiche solo tra due file separati, non 
                        all'interno di un singolo file.

                        L'opzione viene ignorata se si sta creando un archivio non 
                        suddiviso in volumi.

                                @volumi.solidi.indipendenti


                -sv-    Crea volumi solidi dipendenti.

                        Questa opzione applica la compressione in formato solido come
                        per la '-s', ma condivide i dati statistici del formato solido
                        tra tutti i vari volumi.

                        Nell'operatività predefinita, RAR azzera i dati statistici del
                        formato solido all'inizio di un nuovo volume o appena
                        possibile, mentre questa opzione cambia questo comportamento
                        nella modalità sopra descritta. Tutto ciò porta ad un leggero
                        miglioramento del rapporto di compressione, ma riduce
                        significativamente le possibilità d'estrarre parte dei dati se
                        un volume di un archivio multi-volume viene perso o
                        danneggiato.

                        L'opzione viene ignorata se si sta creando un archivio non 
                        suddiviso in volumi.

                
                -s-     Disabilita l'archiviazione in formato solido.
                                @disabilita.formato.solido


                -t      Verifica i file appena archiviati.
                        Questa opzione è utile soprattutto in combinazione con il
                        comando "Muovi i file": in questo modo i file verranno
                        cancellati solo se la verifica si concluderà con successo.

                                @verfica.file.archiviati


                -ta<data>
                        Processa solo i file modificati dopo (after) una specifica 
                        data. Il formato della data è AAAAMMGGOOMMSS. E' permesso
                        inserire separatori come '-' o ':' nella data e omettere le
                        informazioni non necessarie. Ad esempio l'opzione
                        '-ta2001-11-20' è corretta; internamente RAR espanderà la data 
                        in '-ta20011120000000' e la interpreterà come "i file 
                        modificati dopo le ore 0, 0 minuti e 0 secondi del 20 novembre
                        2001".
                                @data.archivio
                                @data.anno.mese.giorno
                                @file.modificati.dopo.data


                -tb<data>
                        Processa solo i file modificati prima (before) di una
                        specifica data. Il formato del parametro dell'opzione è uguale
                        a quello per '-ta<data>'.


                -tk     Tiene l'orario dell'archivio come l'originale. Previene la
                        modifica dell'orario dell'archivio quando WinRAR vi esegue
                        operazioni di modifica.


                -tl     Imposta l'orario dell'archivio a quello del file più recente.
                        Se questa opzione viene utilizzata nella creazione di un
                        archivio, ne imposta l'orario a quello del file più recente
                        da archiviare. Se invece viene utilizzata per un archivio già
                        esistente, forza RAR ad aggiornare l'orario di questo a quello
                        del file archiviato più recente.


                -tn<tempo>
                        Processa solo i file più recenti (newer) del periodo di
                        <tempo> specificato. Il formato per la definizione del <tempo>
                        è:

                        [<giorni>d][<ore>h][<minuti>m][<secondi>s]

                        Per esempio, utilizzate l'opzione '-tn15d' per processare file
                        creati o modificati negli ultimi 15 giorni o '-tn2h30m' per
                        processare file creati o modificati nelle ultime 2 ore e
                        mezza.

                                @giorni.di.modifica  @15.gg  @gg.15 @ultimi.15.gg


                -to<tempo>
                        Processa solo i file più vecchi (older) del periodo di
                        <tempo> specificato. Il formato per le definizione del <tempo>
                        è lo stesso dell'opzione '-tn<tempo>'.

                            @tempo


                -ts<m,c,a>[N]
                        Salva o ripristina gli orari dei file: orari di modifica, 
                        creazione e accesso.
                                

                        L'opzione '-tsm' istruisce RAR a salvare nell'archivio 
                        l'orario di modifica, mentre '-tsc' quello di creazione e 
                        '-tsa' quello dell'ultimo accesso. Il parametro opzionale 
                        '[N]', posto in coda al resto, può assumere il valore da 0 a 4 
                        e sta a indicare la precisione dell'orario. Il valore '1'
                        indica una precisione di 1 secondo, '2' di 0,0065536 secondi,
                        '3' di 0,0000256 secondi e '4' o '+' indicano la massima
                        precisione prevista dal sistema di gestione file, che per NTFS
                        corrisponde a 0,0000001 sec. Un valore di '0' o '-' stanno ad
                        indicare una memorizzazione dei dati con il vecchio metodo,
                        dove non sono gestiti gli orari di creazione ed ultimo accesso
                        e dove la precisione dell'orario di modifica è di 2 secondi.
                        Una precisione maggiore significa anche un leggero incremento
                        delle dimensioni dell'archivio, sino a 19 byte addizionali se
                        si specifica la combinazioni delle opzioni '-tsm4 -tsa4 -tsc4'.
                        Se non viene specificata una precisione, RAR usa per
                        definizione il valore '4'.

                                    @salva.orario.di.modifica @salva.orario.creazione

                        Il comportamento predefinito di RAR prevede la combinazione 
                        delle opzioni '-tsm4 -tsc0 -tsa0', ovvero l'orario di modifica 
                        viene memorizzato con la massima precisione e gli altri orari 
                        vengono ignorati.

                        E' necessario specificare le opzioni '-tsc' e '-tsa' perché 
                        vengano applicati ai file estratti gli orari di creazione e di 
                        ultimo accesso archiviati. Il parametro relativo alla 
                        precisione non ha importanza, sempre che non sia a '0'. Per 
                        definizione RAR imposta solo l'orario di modifica, anche se 
                        sono memorizzati nell'archivio gli orari di creazione e di 
                        ultimo accesso. L'impostazione dell'orario di modifica ai file 
                        estratti può essere disabilitata indicando l'opzione '-tsm-'.

                        E' possibile omettere il carattere che specifica il tipo di 
                        orario se avete la necessità di applicare lo stesso parametro 
                        a tutti e tre i tipi. Ad esempio, la combinazione delle opzioni 
                        '-tsm4 -tsa4 -tsc4' può essere sostituita con '-ts4', '-ts+' o 
                        '-ts'. Utilizzate l'opzione '-ts-' per memorizzare solo 
                        l'orario di modifica con la precisione bassa di 2 secondi o 
                        per non impostare alcun orario memorizzato ai file in 
                        estrazione.

                        Durante la creazione di un archivio, RAR riduce 
                        automaticamente la precisione se la modalità alta non è 
                        supportata dal sistema di gestione file dove si crea 
                        l'archivio. Il limite per il sistema FAT è di 2 secondi, 
                        per Unix è di 1 secondo, mentre per NTFS è di 0.0000001 
                        secondi.

                        I vari Sistemi Operativi limitano anche il tipo di orario che 
                        può essere applicato durante la scompattazione. Windows 
                        supporta tutti e tre i tipi, Unix solo la modifica e l'ultimo 
                        accesso ma non la creazione.

                        Esempi:

                        1) rar a -ts copia

                           memorizza tutti i file con tutti i tipi di orari possibili 
                           e con la massima precisione.

                        2) rar x -tsa copia

                           ripristina, nei file estratti, gli orari di modifica e di 
                           ultimo accesso.  L'opzione '-tsm' non è richiesta in quanto 
                           RAR la considera in modo predefinito.

                        3) rar a -tsm1 -tsc1 copia

                           Memorizza l'orario di modifica e di creazione con una 
                           precisione di 1 secondo. Se non si definisse '-tsm1', RAR 
                           memorizzerebbe l'orario di modifica con una precisione 
                           alta.
                
        -u aggiorna file archivio 
                            @-u   
                -u      Aggiorna i file di un archivio ed aggiunge gli eventuali
                        nuovi. Questa opzione può essere usata per operazione di
                        estrazione o creazione. Per l'archiviazione, la porzione delle
                        linea di comando 'a -u' è equivalente al comando 'u'. Potete
                        utilizzare l'opzione '-u' anche con il comando 'm' o 'mf'. Se
                        l'opzione '-u' viene utilizzata con i comandi 'x' o 'e', i
                        file più vecchi verranno sostituiti da quelli nuovi estratti
                        dall'archivio ma, diversamente dall'opzione '-f', se un file
                        archiviato non trova riscontro come nome tra quelli non
                        compressi, verrà comunque estratto.

        -v archivi multi volume
                                @-v
                -v      Crea gli archivi multi-volume autodeterminandone la dimensione 
                        o esegue un elenco di tutti i volumi dell'archivio.

                        Questa opzione può essere utilizzata sia durante la creazione 
                        di un archivio multi-volume sia nella visualizzazione del 
                        contenuto di un volume.

                        Nel primo caso abilita l'autodeterminazione della dimensione 
                        dei singoli volumi, in modo che ogni nuovo volume utilizzi 
                        tutto lo spazio disponibile sul dispositivo di destinazione. 
                        Questo è utile se si creano dei volumi su dei dischi 
                        rimovibili. Potete trovare ulteriori informazioni nella 
                        descrizione dell'opzione '-v<dimensione>' posta in seguito.

                        Nel secondo caso, quando questa opzione viene indicata assieme 
                        ai comandi 'V' o 'L', forza RAR ad elencare i contenuti di 
                        tutti i volumi partendo da quello specificato nella linea di 
                        comando. Senza questa ozpione RAR visualizza il contenuto solo 
                        del volume specificato. 
                
        -v dimensione 
                           

                -v<dimensione>[k|b|f|m|M|g|G]
                        Con questa opzione è possibile creare archivi multi-volume,
                        dove ogni volume può avere una dimensione massima
                        =<n>*1.000 [*1.024 | *1].

                            @megabitye @M  @kilobati @k
                             @archivi.dimensione.massima  @-v @-v.k.b.f

                        Per definizione il parametro <n> viene espresso in migliaia
                        (1.000) di byte (non 1.024 di byte). Potete inoltre
                        esprimerlo in KiloByte posponendo il simbolo 'k', in byte
                        posponendo il simbolo 'b', in megabyte posponendo il simbolo
                        'm', in milioni (1.000.000) di byte (non 1.024.000)
                        posponendo il simbolo 'M', in gigabyte posponendo il simbolo 
                        'g', miliardi di byte (1.000.000.000) posponendo il simbolo 
                        'G' o selezionarlo da uno dei vari valori predefiniti
                        posponendo il valore numerico ed il simbolo 'f'. I valori
                        predefiniti sono 360, 720, 1200, 1440 o 2880 e stanno ad
                        indicare i rispettivi formati dei dischetti (floppy disk). 
                        
                        Se la dimensione viene omessa, viene auto-determinata in base 
                        allo spazio disponibile sul dispositivo di destinazione.

                            @volumi.decimali  @1.mega.5

                        Potete inserire delle frazioni decimali utilizzando il punto 
                        (.) come delimitatore dei decimali (al posto della virgola). 
                        Ad esempio -v1.5g significa 1,5 Gigabyte.

                            @opzioni.dimensioni  @dimensioni.varie

                        Potete specificare più opzioni -v per dichiarare delle 
                        dimensioni diverse dei vari volumi. Ad esempio:

                           rar a -v100k -v200k -v300k nome_archivio

                        creerà un primo volume di 100 KB, un secondo di 200 KB e tutti 
                        i seguenti di 300 KB.

                        Se i volumi vengono creati temporaneamente su di un disco
                        diverso da quello di destinazione (il corrente o quello
                        eventualmente definito con il parametro '-w'), la funzione di
                        autodeterminazione non ha più senso ed in questo caso la
                        dimensione del volume deve essere obbligatoriamente specificata.

                            @volumi.dispositivi.rimovibili  @pennetta.volumi

                        Se i volumi vengono creati su dispositivi rimovibili,
                        dischetti, ZIP, ecc., dopo la creazione del primo volume vi
                        viene presentata la richiesta seguente:

                           Creare il volume seguente?  Si/No/Tutti

                        In questo momento potete cambiare il disco. Se premete il tasto
                        'T' di "Tutti", tutti i volumi verranno creati senza alcuna
                        pausa tra uno e l'altro.

                        Per definizione RAR assegna ai volumi un nome del tipo 
                        '<nome_volume>.partNNN.rar', dove NNN sta ad indicare il 
                        progressivo del volume. Utilizzando l'opzione '-vn' è 
                        possibile utilizzare il vecchio schema di assegnazione dei 
                        nomi ai volumi, dove il primo volume della serie ha
                        l'estensione .RAR mentre i volumi seguenti sono numerati da
                        .R00 a .R99.

                        Quando estraete o verificate un archivio multi-volume, dovete
                        eseguire il comando solo sul primo volume. Se sul dispositivo
                        corrente non c'è il volume seguente, vi viene presentata la
                        richiesta seguente:

                           Inserire il disco con <nome_volume_seguente>

                        Inserite il disco con il volume seguente e premete qualsiasi
                        tasto.

                        Se durante l'estrazione il volume seguente non viene trovato,
                        RAR interrompe il processo riportando l'errore:

                           Impossibile trovare il volume <nome_volume_seguente>.

                            @multi.volume.comandi.esclusi @comandi.esclusi

                        Gli archivi multi-volume non possono essere modificati: i
                        comandi 'd', 'f', 'u' e 's' non possono essere utilizzati con
                        questi archivi. Il comando 'a' può essere usato solo per la
                        creazione di nuovi archivi multi-volume.

                        E' anche possibile, benché improbabile, che la dimensione di un
                        file "compresso" in un archivio multi-volume sia superiore a
                        quella del file non compresso. Questo è dovuto al fatto che
                        l'eventuale "memorizzazione" di un file, ovvero l'aggiunta
                        all'archivio senza comprimerlo nel caso in cui la compressione
                        ne aumenti la dimensione, non può essere utilizzata in un
                        archivio multi-volume.

                            @archivi.multi.volume @autoestraenti
                        Gli archivi multi-volume possono essere in formato solido e/o
                        auto-estraenti.

                        Esempio:

                        creare un archivio solido multi-volume con una dimensione di
                        1.440.000 bytes:

                           rar a -s -v1440 immagine *.*


                -vd     Cancella il contenuto del disco prima di creare l'archivio.

                        Con questa opzione tutti i file e le cartelle presenti sul
                        disco di destinazione verranno eliminate prima d'iniziare
                        l'operazione d'archiviazione. Se create un archivio
                        multi-volume, la cancellazione verrà eseguita prima della
                        creazione di ogni volume, in modo da darvi la possibilità di
                        utilizzare, per l'archiviazione, dei dischi rimovibili non
                        vuoti. Dovete però assicurarvi che i dischi non contengano
                        informazioni importanti.
                        Questa opzione può essere applicata solo su dispositivi
                        rimovibili: i dischi rigidi non possono essere cancellati con
                        essa.


                -ver[n] Controllo versione file

                        Durante l'aggiornamento di un archivio, specificando questa 
                        opzione RAR manterrà le vecchie versioni dei file che stanno 
                        per essere inseriti. Le vecchie versioni vengono rinominate
                        in "nome_file;n" dove 'n' è il progressivo della versione, 
                        partendo da 1.

                        Per definizione, quando si estraggono i file da un archivio 
                        senza specificare l'opzione '-ver', RAR estrae solo le ultime 
                        versioni dei file, ovvero quelle che non hanno il suffisso 
                        con il progressivo della versione. Ma se specificate il nome 
                        del file in maniera esatta, includendo il numero della 
                        versione, potete estrarre direttamente un file di una versione 
                        precedente. Ad esempio, 'rar x copia documento.txt;5' estrarrà 
                        dall'archivio 'copia.rar' il file 'documento.txt;5', sempre 
                        che esista.

                        Se specificate il parametro '-ver' alla scompattazione senza 
                        alcun parametro, RAR estrarrà tutte le versioni dei file 
                        i cui nomi rispondo alla maschera dei file da estrarre. In 
                        questo caso il numero appeso al nome del file che indica la 
                        versione non verrà tolto.
                        Potete inoltre estrarre un file di una determinata versione 
                        indicandone il numero dopo l'opzione '-ver'. Il nome del file 
                        così estratto sarà quello originale, senza il numero della 
                        versione. Ad esempio, il comando 'rar x -ver5 copia' estrarrà 
                        solo i file della quinta versione.

                        Se specificate 'n' nell'opzione, questo valore limiterà il 
                        massimo numero di versioni dei file inserite nell'archivio. 
                        Le versioni dei file che eccedono questa soglia verranno 
                        rimosse.


                -vn     Utilizza il vecchio stile di assegnazione dei nomi ai volumi.

                        Per definizione RAR assegna ai volumi un nome del tipo 
                        '<nome_volume>.partNNN.rar', dove NNN sta ad indicare il 
                        progressivo del volume. Definendo l'opzione '-vn' è 
                        possibile utilizzare il vecchio schema di assegnazione dei 
                        nomi ai volumi, dove il primo volume della serie ha
                        l'estensione .RAR mentre i volumi seguenti sono numerati da
                        .R00 a .R99.
                        Questa opzione può essere utile se pensate di scompattare 
                        l'archivio in una versione di MS-DOS non recente o in modalità 
                        provvisoria, dove non è previsto il nome di file con due '.'.
                
                
                -vp     Introduce una pausa prima di ogni volume seguente.

                        Per definizione, RAR chiede la conferma a procedere prima di 
                        creare o di decomprimere il volume seguente SOLO se si sta 
                        operando su dispositivi rimovibili (dischi-rigidi esterni, 
                        floppy, magneto-ottici, ecc.) e se lo spazio disponibile su 
                        questi dispositivi è inferiore alla dimensione del volume da 
                        creare. Questa opzione forza RAR a chiedere sempre la conferma 
                        a procedere. Può essere utile se lo spazio sul disco è 
                        limitato e volete copiare ogni singolo volume su un'altro 
                        dispositivo immediatamente dopo la sua creazione.


                -w<c>   Definisce la cartella <c> come quella di lavoro. Questa
                        cartella verrà utilizzata per crearvici i file temporanei.
                        Può essere utile definire una cartella su disco rigido se si
                        lavora con i dischetti, oppure una RAM-disk, un disco virtuale 
                        creato utilizzando la più veloce memoria del sistema.
                        La cartella indicata da questa opzione viene comunque 
                        utilizzata solo per l'aggiornamento di archivi già esistenti e 
                        non per la crezione di nuovi.
        
        -x opzione 

        -xfile cartella
                                @ESCLUDI@CARTELLA  @ECLUDI@FILE
                -x<file/cartella>
                        Il file o la cartella specificati di seguito a questa opzione 
                        verranno esclusi dall'operazione richiesta. Si possono 
                        utilizzare i caratteri jolly '?' e '*' per definire dei 
                        filtri, inserendoli sia al posto del nome del file o della 
                        cartella sia dal lato del percorso. Potete inoltre inserire 
                        più volte l'opzione -x nella linea di comando.
                                    @-x  @file.cartella  @cartella

                        Se il filtro contiene i caratteri jolly, questo viene 
                        applicato alla cartella corrente e alle relative 
                        sotto-cartelle. Il filtro non è ricorsivo se non contiene 
                        caratteri jolly, quindi il filtro "nomefile" escluderà il file 
                        'nomefile' solo dalla cartella corrente durante 
                        l'archiviazione, oppure lo escluderà solo dalla cartella 
                        princiale di un archivio durante l'estrazione.

                        Utilizzate il filtro "*\nomefile" per escludere il file 
                        'nomefile' ricorsivamente anche in tutte le sotto-cartelle.

                        Se conoscete il percorso esatto del file, potete usare la 
                        sintassi "percorso\nomefile" per escludere solo questa
                        specifica copia di "nomefile". Se usate la sintassi 
                        "-xpercorso\nomefile" durante la scompattazione di un 
                        archivio, "percorso" deve essere un percorso presente 
                        all'interno dell'archivio, non il percorso di un file su disco 
                        dopo che è stato estratto.

                        Per definizione le maschere che contengono i caratteri jolly 
                        sono applicati solo ai file. Se avete bisogno di definire un 
                        filtro con i caratteri jolly per escludere più cartelle 
                        occorre utilizzare una sintassi particolare.
                        Questi filtri devono terminare con il separatore di percorsi 
                        ('\' per Windows e '/' per Unix). Ad esempio il filtro 
                        "*tmp*\" escluderà tutte le cartelle che rientrano nel filtro 
                        "*tmp*", mentre "*\tmp\" escluderà tutte le cartelle "tmp". 
                        Sino a che nel filtro sono presenti dei caratteri jolly, 
                        questo verrà applicato sia al contenuto della cartelle 
                        corrente così come alle sue sotto-cartelle.

                        Se volete escludere solo una cartella, specificate il nome 
                        esatto della cartella compreso il percorso assoluto o relativo 
                        senza caratteri jolly. In questo caso non dovete appendere il 
                        separatore di percorsi al filtro in quanto è richiesto solo 
                        per quei filtri d'esclusione cartelle che comprendo dei 
                        caratteri jolly, in modo da poterli distinguere dai filtri di 
                        esclusione file.

                        Esempi:

                        1) rar a -r -x*.bak -x*.rar copia

                           verranno compressi nell'archivio 'copia' tutti i file 
                           presenti nella cartella corrente e in tutte le 
                           sotto-cartelle, tranne queli con estensione 'bak' e 'rar';

                        2) rar a -r -x*\temp\ copia_disco_c c:\*

                           aggiungo all'archivio 'copia_disco_c' tutti i file del disco C: 
                           escluse le cartelle 'temp' ed i relativi contenuti;

                        3) rar x documenti -x*.txt

                           estraggo dall'archivio documenti.rar tutti i file meno 
                           quelli con estensione .txt.

        -x@ elenco file
                                    @ESCLUDI@ELENCO@FILE
                -x@<file_elenco>
                        Esclude i file specificati in un elenco a file.
                        Come per l'opzione '-x' solo che il o i file da escludere
                        devono essere definiti nel file "<file_elenco>". Qui ad ogni
                        nome di file, che può contenere anche i caratteri jolly, deve
                        corrispondere una linea.

                        Esempio:

                        Aggiungere tutti i file *.exe nell'archivio 'eseguibili'
                        tranne quelli elencati nel file lista.txt:

                           rar a eseguibili *.exe -x@lista.txt

                        Se indicate l'opzione -x@ senza alcun parametro, leggerà
                        l'elenco dei file dal dispositivo "stdin". Per Windows 'stdin',
                        in assenza di altri parametri, corrisponde a digitare le
                        maschere dei file, premendo 'Invio' tra una linea ed un'altra e
                        ^Z (Ctrl+Z) per chiudere l'elenco; postponendo invece il
                        carattere '|' alla linea di comando di RAR, l'elenco dei file da
                        escludere viene fornito dal comando DOS indicato di seguito
                        sulla stessa linea di comando.

        -y si a tutte le richiest
                           
                           @SI

                -y      Assume Si a tutte le richieste.
                        Se questa opzione viene specificata, "Sì" sarà preso come
                        risposta automatica a tutte le richieste in cui è una delle
                        opzioni, ad esempio nel caso di sovrascrittura di un file già
                        esistente.
                                @-y.si.a.tutto @-y.si.tutto

        -z legge il commento
                           
                -z[<nome_file>]
                        Legge il commento dell'archivio dal file <nome_file>. 
                        Utilizzate l'opzione '-sc' se dovete specificare il set di 
                        caratteri per il file di commento.
                                 @-z.legge.commento
                                    
                        Se questa opzione viene specificata in un comando di creazione
                        o modifica archivio, a questo verrà aggiunto un commento
                        prelevato dal file <nome_file>.

                        Esempio:

                        Aggiungere tutti i file dalla cartella corrente nell'archivio
                        di tipo solido con nome "Immagini" aggiungendogli il commento 
                        inserito nel file "Immagini.Diz":

                           rar a -s -zimmagini.diz immagini

                        Se il nome del file non viene specificato, il commento viene
                        preso dal dispositivo "stdin".
                        Per Windows 'stdin', in assenza di altri parametri, corrisponde
                        a digitare il commento dalla tastiera. Per questo una volta
                        eseguito il comando, vi verrà posta la seguente richiesta:
                        "Lettura commento da tastiera (stdin)" Dopo di che va inserito
                        il commento; premere "Invio" per terminare l'inserimento.



     Limitazioni

             ~~~~~~~~~~~

                Il nome del percorso è limitato a 259 caratteri.

                La lunghezza massima del commento d'archivio è di 62.000 bytes.

                Limitazioni dei comandi:

                   I comandi 'd','u','f','c','cf' non possono operare sugli archivi 
                   suddivisi in volumi.

                   Il comando 'a' non può essere usato per aggiornare un archivio 
                   suddiviso in volumi, solo per crearlo.



     Codici d'uscita
     

                RAR termina restituendo il codice zero (0) in caso di operazione 
                conclusasi con successo. Un codice d'uscita superiore a zero significa 
                che l'operazione è stata interrotta da uno dei seguenti errori:

                   0   SUCCESSO             Operazione conclusasi con successo

                   1   ATTENZIONE           Rilevato uno o più errori non fatali

                   2   ERRORE FATALE        Rilevato un errore fatale

                   3   ERRORE CRC           Rilevato un errore di CRC durante 
                                            l'estrazione. I dati sono danneggiati.

                   4   ARCHIVIO BLOCCATO    Tentativo di modificare un archivio 
                                            precedentemente bloccato con il comando 
                                            'k'

                   5   ERRORE SCRITTURA     Errore scrittura su disco

                   6   ERRORE APERTURA      Errore apertura file

                   7   ERRORE UTENTE        Errore nelle opzioni da linea di comando

                   8   ERRORE MEMORIA       Memoria insufficiente per l'operazione

                   9   ERRORE CREAZIONE     Errore nella creazione di un file

                 10    ERRORE NESSUN FILE   Nessun file risponde alla maschera 
                                            o alle opzioni specificate

                255   INTERRUZIONE UTENTE   L'utente ha interrotto il processo

     Glossario

            Archivio      Un file speciale contenente uno o più file opzionalmente 
                          compressi e/o crittografati.

            Compressione  Un metodo di codifica per ridurre la dimensione di un 
                          file.

            CRC           Cyclic Redundancy Check (controllo ciclico a 
                          ridondanza). Metodo matematico per calcolare una 
                          speciale informazione utile al controllo della validità 
                          dei dati.

            SFX           SelF-eXtracting. Modulo da anteporre ad un archivio in 
                          modo da renderlo eseguibile (.EXE) ed auto-estraente, 
                          senza la necessità d'avere un programma esterno per
                          estrarre i file contenuti al suo interno.

            Solido        Un archivio compresso utilizzando un metodo speciale che 
                          tratta tutti i file da inserire come un'entità unica. 
                          Particolarmente vantaggioso quando si comprime un numero 
                          alto di piccoli file.

            Volume        Parte di un archivio suddiviso in più blocchi. 
                          Suddividere un archivio in più parti permette di 
                          memorizzarlo su dischi rimovibili quando la sua 
                          dimensione supera lo spazio disponibile. I volumi solidi 
                          devono obbligatoriamente essere estratti partendo dal 
                          primo volume della sequenza.

         Diritti d'autore

            (c) 1993-2012 Alexander Roshal



        ESEMPI_RAR
            PATH_TXT
                salvo i dati .txt nella path di inizio e prelevo i dati dalla  path di partenza 
                    :--------------------2 PARAMETRI = qui la path inizio e fine
                    @SET path_inizio_s=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\70_ATTI_GENERICI\
                    @echo %path_inizio_s%

                    @REM @SET path_fine_s=%CD%
                    @SET path_fine_s=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\SALVATAGGI\70_ATTI_GENERICI\BAT\
                    @SET NomeFile_s=zip_SALVAGGIO
                    
                    @rem.....................path dove salvo...file.rar......path dove prelevo i txt
                    c:\CASA\WinRAR\Rar.exe a %path_inizio_s%ARCHIVIO_70.rar %path_fine_s%*.txt 

                    @rem.....................path dove salvo...file.rar......path dove prelevo i txt
                    c:\CASA\WinRAR\Rar.exe a %path_inizio_s%ARCHIVIO_70.rar %path_fine_s%*.txt 

                    faq
                        @partenza@path+fine
                        @PATH.INIZIO+FINE
                        @PATH.INZIO+FILE+PATH.FINE+FILTRO


            PATH_INIZIO+PATH_FINE+FILE
                nota
                    SALVATAGGIO DA POSIZIONE DI PARTENZA: con path inizio + file
                    attenzione la path di inizio e il nome file devono essere uniti senza spazi es. %path_inizio_s%%NomeFile_s%
                    altrimenti da errore. Per consentire un salvataggio con filtro dei txt la bat viene messe nella posizione
                    di partenza e poi il filtro

                struttura

                    @SET path_inizio_s=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\70_ATTI_GENERICI\
                    @SET path_fine_s=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\SALVATAGGI\70_ATTI_GENERICI\BAT\
                    @SET NomeFile_s=zip_SALVAGGIO

                    @rem.....................salvo nella path inzio solo i txt
                    c:\CASA\WinRAR\Rar.exe a %path_inizio_s%%NomeFile_s% *.TXT 


                        faq
                            @da.posizione@PARTENZA





            FILTRO_SPECIFICO
                nota
                    salvataggio con parametro -n che è un filtro speficivo e puo essere utilzzato piu volte @FILTRO.SPECIFICO

                STRUTTURA
                    @rem.....................-n*.txt filtro specifico che puo essere ripetuto. 
                    @rem Salva i dati della directory corrente posizionando il file nella directory corrente.
                    c:\CASA\WinRAR\Rar.exe a NomeFile_s -n*.txt -n*.BAT


             FILTRO_LISTA_FILE_DIR_CORRENTE
                
                nota
                    filtro basato su una lista di file e salvataggio e dati 
                    recuperati nella directory corrente. @FILTRO@LISTA.FILE
                    @DIRECTORY@CORRENTE

                STRUTTURA

                    @rem.....................directory corrente lista file 
                    @rem sia il bat che la lista file si deve trovare nella stessa directory
                    c:\CASA\WinRAR\Rar.exe a -r 
                    -n@ZIP_RAR_ListaFile_ARCHIVIO_70.txt text Project Info


                    @rem sia il bat che la lista file si deve trovare nella stessa directory
                    c:\CASA\WinRAR\Rar.exe a -r -n@%path_FileLISTA_s%ZIP_RAR_ListaFile_ARCHIVIO_70.txt text Project Info



            LISTA_FILE_DIR_DIVERSE


                 nota
                    MODELLO :  RAR <comando> -<opzione_1> -<opzione_N> <archivio> <file...>
                     <@lista_file...> <percorso_dove_estrarre\>

                    filtro basato su una lista di file CON IL PARAMETRO 
                    -n@ dove si deve indicare la path della lista file
                    se posizionata nella directory corrente dove si trova il bat
                    e il file lista non viene visto perchè c'è uno spostamento
                    di directory ossia viene posizionata il focus nella directory
                    indicata nel file lista.txt. 
                        
                        @FILTRO@LISTA.FILE @directory@diverse
                        @path@diverse

                struttura
                    
                    @rem .........dove si trova il file lista.txt
                    @SET path_FileLISTA_s=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\SALVATAGGI\70_ATTI_GENERICI\BAT\


                    @rem .........                tipofile        nomefile archivio path di origine
                     c:\CASA\WinRAR\Rar.exe a -r -n@Listafile.txt FilePathDiverse c:\CASA\WinRAR\WIN_RAR_BAT\ZIP_RAR_MANUALI\

            LISTA_FILE_ESTERNA_COMPRESA_DI_PATH
                        
                        @ESEMPIO LISTA FILE.TXT CON PATH COMPRESE
                        :------------------------------dove si trova il file lista.txt nella path corrente
                        @SET PathOrigine_s=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\SALVATAGGI\70_ATTI_GENERICI\BAT_RAR_LISTA_FILE\
                        :------------------------------dove si trovano i file
                        @SET PathOrigineII_s=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\70_ATTI_GENERICI\


                        :------------------------------NOME FILE PROCESSATO
                        @SET FileRar= ARCHIVIO_01_PATH_ESTERNA.RAR 



                        @REM 1 ESEMPIO COME PARAMETRI DALLA PATH CORRENTE
                        @REM.................da pathCorrente il FILE DA PROCESSARE con LISTA FILE compresa path
                        @REM    
                        c:\CASA\WinRAR\Rar.exe a %FileRar% @Listafile.txt



                        @REM Ritardo per 7 secondi
                        @choice /C:X /N /T:3 /D:X > NUL     



                DATA DI MODIFICA
                    PROCESSA I DATI DOPO
                        “-TA[m,c,a,o]<data>” 
                            – processa i file modificati dopo una data specifica
                            Processa solo i file modificati dopo (after) una specifica data o alla data indicata.       
                            Il formato della data è AAAAMMGGOOMMSS

                            TRATTINO UPPURE O
                                È permesso inserire separatori come '-' o ':' nella data e omettere le informazioni non necessarie

                                Ad esempio l'opzione '-ta2001-11-20' è corretta
                                    internamente WinRAR espanderà la data in '-ta20011120000000' e la interpreterà come "i file modificati dopo le ore 0, 0 minuti e 0 secondi del 20 novembre 2001".

                        MODIFICATORI C M E

                                    @MODIFICATORI@M.C.E
                                I modificatori 'm', 'c' e 'a' permettono di specificare l'uso della data di Modifica, Creazione e ultimo Accesso, come ad esempio -tac20011120 per la data di creazione. Se il modificatore non viene indicato viene utilizzata la data di modifica.

                                PLURI MODIFICATORI M C
                                    È possibile utilizzare più modificatori contemporaneamente, come ad esempio -tamc20190223, (-ta mc 2019 02 23 ) per utilizzare la stessa data per diversi orari. 

                                PIU OPZIONI
                                    Alternativamente potete inserire più opzioni -ta per indicare vari filtri basati su orari differenti. 

                                    AND
                                    Per definizione se vengono definiti più filtri d'orario viene utilizzato l'operatore logico AND: in questo modo l'orario di un file, perché ricada nei filtri, deve rispondere a tutte le definizioni inserite.

                                    OR
                                    Per utilizzare l'operatore logico OR basta aggiungere il modificatore "o" nell'opzione -ta: in questo modo un file rientra nella selezione se il suo orario ricade in un filtro o in un altro.

                                PIU MODIFICATORI CON STESSA DATA PER DIVERSI ORARI
                                    TB M C 20190223 = modificato e creato
                                    È possibile utilizzare più modificatori contemporaneamente, come ad esempio -tbmc20190223, per utilizzare la stessa data per diversi orari.
                                    
                                PIU OPZIONI TB
                                    ESEMPIO ta co + ta mo
                                        -TACO+DATA
                                        "-taco20190201 = si selezionano i file CREATI dopo il 01/02/2019 
                                           or con o
                                        -TAMO+DATA
                                        -tamo20190210" = selezionati i file MODIFICATI dopo il 10/02/2019.

                                PIU FILTRI ORARIO OPERATORE AND
                                    Per definizione se vengono definiti più filtri d'orario viene utilizzato l'operatore logico AND: in questo modo l'orario di un file, perché ricada nei filtri, deve rispondere a tutte le definizioni inserite. 
                                    OPERATORE OR = AGGIUNGERE "o" a -ta
                                    Per utilizzare l'operatore logico OR basta aggiungere il modificatore "o" nell'opzione -ta: in questo modo un file rientra nella selezione se il suo orario ricade in un filtro o in un altro.
                                    Ad esempio inserendo "-taco20190201 -tamo20190210" = OPERATORE OR

                                    @FILTRI.ORARIO



                                RANGE DI DATE AFTER - BEFORE
                                        -ta c= after creato dopo  
                                        -tac20190201 = CREATO IL 2019 02 01
                                        
                                        -tb c = before CREATO PRIMA della data    
                                        -tbc20190301 = CREATO IL 2019 03 01

                                            @DUE DATE DI CREAZIONE
                                

                                ESEMPIO TA - DATA AFTER
                                    Note
                                        Processamento di file con l'opzione -ta = successivi AFTER al 11-10-2022 

                                        @FILE@DOPO.DATA

                                    @ESEMPIO LISTA FILE.TXT CON PATH COMPRESE
                                    :------------------------------dove si trova il file lista.txt nella path corrente
                                    @SET PathOrigine_s=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\SALVATAGGI\70_ATTI_GENERICI\BAT_RAR_LISTA_FILE\
                                    :------------------------------dove si trovano i file
                                    @SET PathOrigineII_s=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\70_ATTI_GENERICI\


                                    :------------------------------NOME FILE PROCESSATO
                                    @SET FileRar= 1_ES_ARCHIVIO_OPZIONE_Ta.RAR 

                                    
                                    @REM 1 ESEMPIO COME PARAMETRI DALLA PATH CORRENTE
                                    @REM PROCESSAMENTO FILE con l'opzione -ta = successivi AFTER al 11-10-2022 
                                    @REM.................da pathCorrente il FILE DA PROCESSARE con LISTA FILE compresa path
                                    @REM    
                                    c:\CASA\WinRAR\Rar.exe a -ta2022-11-10 %FileRar% @Listafile.txt



                                ESEMPIO -TAC - DATA AFTER C DATA DI CREAZIONE
                                    Note
                                        Processamento di file con l'opzione -tac = successivi AFTER alla data di creazione 11-10-2022 

                                        @FILE@DOPO.DATA.DI CREAZIONE, @FILE@DATA.DI.CREAZIONE




                                schema

                                    ES. 01 FILE DI UNA DATA


                                    @ESEMPIO LISTA FILE.TXT CON PATH COMPRESE
                                    :------------------------------dove si trova il file lista.txt nella path corrente
                                    @SET PathOrigine_s=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\SALVATAGGI\70_ATTI_GENERICI\BAT_RAR_LISTA_FILE\
                                    :------------------------------dove si trovano i file
                                    @SET PathOrigineII_s=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\70_ATTI_GENERICI\

                                    :------------------------------NOME FILE PROFESSATO
                                    @SET FileRar= 1_ES_ARCHIVIO_OPZIONE_Ta.RAR 

                                    @REM 1 ESEMPIO COME PARAMETRI DALLA PATH CORRENTE
                                    @REM PROCESSAMENTO FILE con l'opzione -ta = successivi AFTER al 11-10-2022 
                                    @REM.................da pathCorrente il FILE DA PROCESSARE con LISTA FILE compresa path
                                    @REM    
                                    c:\CASA\WinRAR\Rar.exe a -ta2022-11-10 %FileRar% @Listafile.txt




                            ES. 02 FILE TRA DUE DATE
                                Note
                                    Processo i file che vanno DALLA DATA -ta2022-11-07  FINO ALLA
                                    DATA -tb2022-11-13 
                                schema
                                    
                                    :------------------------------NOME FILE PROFESSATO
                                    @SET FileRar2= 2_ES_ARCHIVIO_OPZIONE_Ta_Tb.RAR 
                                    @REM 2 ESEMPIO COME PARAMETRI DALLA PATH CORRENTE
                                    @REM.................da pathCorrente il FILE DA PROCESSARE con LISTA FILE compresa path 
                                    @REM    con data AFTER  ta2022-11-07 ALLA DATA tb2022-11-13 
                                    c:\CASA\WinRAR\Rar.exe a -ta2022-11-07 -tb2022-11-13 %FileRar2% @Listafile.txt




                              ES. 03 FILE TRA DUE DATE

                                Note
                                    Processamento dei file TRA DUE DATE DI CREAZIONE con l'opzione
                                    -tacAAAAMMGG


                                    :------------------------------NOME FILE PROCESSATO
                                  
                                    @SET FileRar3= 3_ES_ARCHIVIO_OPZIONE_TaC_TbC.RAR 

                                  

                                    @REM 3 ESEMPIO COME PARAMETRI DALLA PATH CORRENTE + OPZIONI DATA DI CREAZIONE
                                    @REM.................da pathCorrente il FILE DA PROCESSARE con LISTA FILE compresa path 
                                    @REM    con data DI CREAZIONE AFTER  -ta2022-11-07 ALLA DATA DI CREAZIONE BEFORE -tb2022-11-13 
                                    c:\CASA\WinRAR\Rar.exe a -taC2022-11-07 -tbC2022-11-13 %FileRar2% @Listafile.txt

    WIN RAR LISTA COMANDI + OPZIONI IN ALFABETICO
       

        TIPO RAR

            RAR 4.20        Copyright (c) 1993-2012 Alexander Roshal     9 Giu 2012
                           Traduzione in italiano (c) Andrea Baitelli
            Registrato a: XXXXX

        SINTASSI BASE RAR

                    Sintassi: RAR <comando> -<opzione_1> -<opzione_N> <archivio> <file...>
                          <@lista_file...> <percorso_dove_estrarre\>

        <Comandi italiano>
        
          a             Aggiungi file all'archivio
          c             Aggiungi il commento all'archivio
          cf            Aggiungi i commenti ai file
          ch            Modifica alcune caratteristiche dell'archivio
          cw            Scrivi il commento dell'archivio in un file
          d             Elimina file dall'archivio
          e             Estrai tutti i file dell'archivio nella cartella corrente
          f             Aggiorna i file dell'archivio
          i[par]=<fras> Trova una frase in uno o più archivi
          k             Blocca l'archivio da modifiche seguenti
          l[t,b]        Lista contenuto dell'archivio [formato: T=tecnico, B=solo nome]
          m[f]          Muovi file e/o cartelle nell'archivio [solo i file]
          p             Stampa il/i file (verso stdout, solitamente la stampante)
          r             Ripara l'archivio da eventuali danneggiamenti
          rc            Ricostruisci i volumi mancanti
          rn            Rinomina i file presenti nell'archivio
          rr[N]         Aggiungi i dati per facilitare un eventuale recupero seguente
          rv[N]         Crea i volumi di ripristino
          s[nome|-]     Converti l'archivio in auto-estraente
          t             Verifica i file archiviati
          u             Aggiorna e aggiungi file all'archivio
          v[t,b]        Lista contenuto dell'archivio estesa [T=tecnico, B=solo nome]
          x             Estrai i file dell'archivio comprendenti il percorso archiv.

        <Opzioni italialno>
          -             Interrompi la scansione delle opzioni
          @[+]          Disabilita [abilita] l'impiego di file di tipo lista_file
          ac            Cancella l'attributo "Modificato" dopo compressione o estraz.
          ad            Appende il nome dell'archivio al percorso di destinazione
          ag[formato]   Genera il nome dell'archivio utilizzando la data corrente
          ai            Ignora gli attributi dei file archiviati
          ao            Aggiungi solo i file con l'attributo "Modificato" attivo
          ap<percorso>  Imposta il percorso all'interno dell'archivio
          as            Sincronizza il contenuto dell'archivio con l'origine
          av            Inserisce i dati per la verifica dell'autenticazione (regist.)
          av-           Disabilita il controllo dei dati di autenticazione
          c-            Disabilita la visualizzazione del commento
          cfg-          Disabilita la lettura della configurazione predefinita
          cl            Converti i nomi di file e cartelle in minuscolo
          cu            Converti i nomi di file e cartelle in maiuscolo
          df            Elimina i file dopo essere stati archiviati
          dh            Apre i file già in uso da altri programmi
          dr            Elimina i file e li pone nel Cestino di Windows
          ds            Non ordina i file da inserire in un archivio solido
          dw            Pulisci lo spazio file dopo l'archiviazione
          e[+]<attrib>  Non archiviare/archiviare file con uno specifico attributo
          ed            Non aggiungere le cartelle se sono vuote
          en            Non aggiunge l'indicazione di 'fine archivio'
          ep            Escludi i percorsi originali dai nomi dei file e cartelle
          ep1           Escludi la cartella base dai nomi dei file e cartelle
          ep2           Archivia il percorso completo
          ep3           Archivia il percorso, completo della lettera del disco
          f             Aggiorna i file dell'archivio
          hp[par.chiav] Crittografa sia i dati che l'intestazione dell'archivio
          id[c,d,p,q]   Disabilita la visualizzazione di alcuni o tutti (q) i messaggi
          ieml[i1[,i2]] Invia l'archivio via email ad uno o più indirizzi
          ierr          Invia i messaggi al dispositivo "StdErr"
          ilog[nome]    Tieni traccia degli errori in un file (solo vers. registrata)
          inul          Disabilita la visualizzazione di tutti i messaggi
          ioff          Spegne il PC al termine dell'operazione che va ad iniziare
          isnd          Abilita i suoni
          k             Blocca l'archivio da modifiche seguenti
          kb            Estrai anche i file danneggiati
          log[f][=nome] Scrive i nomi dei file processati in un file di tracciato
          m<0..5>       Livello di compressione (0-memorizza...3-predefin...5-massimo)
          mc<par>       Abilita i parametri di compressione avanzati
          md<dimens.>   Dimens. dizionario compres.:64,128,256,512,1024,2048,4096 o A-G
          ms[est;est]   Specifica le estensioni dei file da inserire senza compressione
          mt<processi>  Imposta il numero dei processi (threads)
          n<file>       Include solo i file specificati
          n@            Acquisisci i file da includere da tastiera (o StdIn)
          n@<lista>     Includi i file specificati in una lista a file
          o[+|-]        Imposta modalità di sovrascrittura [NonChied.|NonSovvr.|Chiedi]
          oc            Imposta l'attributo 'Compresso' di NTFS, se presente
          or            Rinomina i file estratti automaticamente
          os            Salva gli attributi estesi di un file sotto NTFS
          ow            Salva/ripristina i dati di "proprietario" e di "gruppo"
          p[par.chiave] Imposta la parola chiave
          p-            Non chiedere la parola chiave
          r             Considera anche le sottocartelle
          r-            Disabilita la ricorsività delle sotto-cartelle
          r0            Considera le sottocartelle solo per nomi con caratteri jolly
          ri<P>[:<S>]   Priorità esec.(0-predef.,1-min..15-mas) e tempo d'attesa (msec)
          rr[N]         Aggiungi i dati per facilitare un eventuale recupero seguente
          rv[N]         Crea i volumi di ripristino
          s[<N>,v[-],e] Crea archivio in formato solido(N file,di/indipendenti,estens.)
          s-            Disabilita l'archiviazione in formato solido
          sc<car>[<og>] Specifica il set di caratteri e a quali oggetti applicarli
          sfx[nome]     Crea un archivio auto-estraente [nome modulo]
          si[nome]      Preleva i dati d'archiviare da 'stdin',eventualmente in [nome]
          sl<dimens.>   Processa i file con dimensione minore a quella indicata
          sm<dimens.>   Processa i file con dimensione maggiore a quella indicata
          t             Verifica i file dopo l'archiviazione
          ta<data>      Considera file modificati dopo la <data>,formato AAAAMMGGOOMMSS
          tb<data>      Considera file modificati prima di <data>,form. AAAAMMGGOOMMSS
          tk            Tieni come orario quello dell'archivio originale
          tl            Orario dell'archivio come quell'ultimo file
          tn<tempo>     Considera i file più recenti del <tempo> specificato
          to<tempo>     Considera i file più vecchi del <tempo> specificato
          ts<m,c,a>[N]  Salva/ripristina orari file:Modifica,Creazione,Accesso[precis.]
          u             Aggiorna e aggiungi file dell'archivio
          v             Crea un archivio a più volumi autodeterminando la dimensione
          v<dimen>[k,b] Crea un archivio a più volumi con dimensione= *1000 [*1024, *1]
          vd            Cancella il contenuto del disco prima di creare il volume
          ver[n]        Controllo per la versione dei file
          vn            Usa il vecchio schema dei nomi per i volumi
          vp            Introduce una pausa prima di ogni volume seguente
          w<percorso>   Definisci la cartella di lavoro per i file temporanei
          x<file>       Escludi i file di seguito specificati
          x@            Acquisisci i file da escludere da tastiera (o StdIn)
          x@<lista>     Escludi i file specificati in una lista a file
          y             Assumi la risposta 'Si' a tutte le domande
          z[<file>]     Legge il commento dell'archivio da file
        <Opzioni inglese>

                -ac                     clear Archive attribute after compression or extraction
                -ad                     append archive name to destination path
                -af<type>               specify archive format
                -ag[format]             generate archive name using the current date and time
                -ao                     add files with Archive attribute set
                -ap                     set path inside archive
                -as                     synchronize archive contents
                -av                     apply authenticity verification
                -av-                    disable adding authenticity verification
                -cfg-                   ignore default profile and environment variable
                -cl                     convert file names to lower case
                -cu                     convert file names to upper case
                -df                     delete files after archiving
                -dh                     open shared files
                -ds                     do not sort archiving files
                -ed                     do not add empty folders
                -en                     do not add "end of archive" block
                -ep                     exclude paths from names
                -ep1                    exclude base folder from names
                -ep2                    expand paths to full
                -ep3                    expand paths to full including the drive letter
                -e[+]<attr>             set file exclude or include attributes
                -f  freshen             files
                -fcu                    use Unicode text format when adding or writing archive comments
                -hp[pwd]                encrypt both file data and headers
                -ibck                   run WinRAR in background
                -ieml                   send archive by email
                -iicon<name>            specify SFX icon
                -iimg<name>             specify SFX logo
                -ilog[name]             log errors to file
                -inul                   disable error messages
                -ioff                   turn PC off
                -k                      lock archive
                -kb                     keep broken extracted files
                -m<n>                   set compression method
                -mc<par>                set advanced compression parameters
                -md<n>                  select dictionary size
                -ms                     specify file types to store
                -mt<threads>            set the number of threads
                -n<file>                include only the specified file
                -n@<listfile>           include files using the specified list file
                -oc                     set NTFS "Compressed" attribute
                -or                     rename files automatically
                -os                     save NTFS streams
                -ow                     process file security information
                -o+                     overwrite existing files
                -o-                     do not overwrite existing files
                -p[pwd]                 set password
                -r                      recurse subfolders
                -r0                     recurse subfolders for wildcard names only
                -ri                     set priority and sleep time
                -rr[N]                  add data recovery record
                -rv[N]                  create recovery volumes
                -s                      create a solid archive
                -s<N>                   create solid groups using file count
                -se                     create solid groups using file extension
                -sfx[name]              create self-extracting archive
                -sl<size>               process files with size less than specified
                -sm<size>               process files with size more than specified
                -sv                     create independent solid volumes
                -sv-                    create dependent solid volumes
                -s-                     disable solid archiving
                -t                      test files after archiving
                -ta<date>               process files modified after the specified date
                -tb<date>               process files modified before the specified date
                -tk                     keep original archive time
                -tl                     set archive time to newest file
                -tn<time>               process files newer than the specified time
                -to<time>               process files older than the specified time
                -ts<m,c,a>              save or restore file time (modification, creation, access)
                -u                      update files
                -v<n>[k|b|f|m|M|g|G]    create volumes
                -vd                     erase disk contents before creating volume
                -ver                    file version control
                -vn                     use the old style volume naming scheme
                -vp                     pause before each volume
                -x<file>                exclude the specified file
                -x@<listfile>           exclude files using the specified list file
                -y                      assume Yes on all queries
                -z<file>                read archive comment from file
                --                      stop switches scanning


            Codice DI ESEMPIO

                    UNRAR 4.20 gratuito      Copyright (c) 1993-2012 Alexander Roshal
                                            Traduzione in italiano (c) Andrea Baitelli

                    Sintassi: UNRAR <comando> -<opzione_1> -<opzione_N> <archivio> <file...>
                                  <@lista_file...> <percorso_dove_estrarre\>

                    <Comandi>
                      e             Estrai tutti i file dell'archivio nella cartella corrente
                      l[t,b]        Lista contenuto dell'archivio [formato: T=tecnico, B=solo nome]
                      p             Stampa il/i file (verso stdout, solitamente la stampante)
                      t             Verifica i file archiviati
                      v[t,b]        Lista contenuto dell'archivio estesa [T=tecnico, B=solo nome]
                      x             Estrai i file dell'archivio comprendenti il percorso archiv.

7Z

    7Z ELENCO COMANDI ED OPZIONI
    
    ..\Downloads\7z922_extra\7za.exe"     @7Z@COMANDI

    7-Zip (a) 9.22 beta  Copyright (c) 1999-2011 Igor Pavlov  2011-04-18

    Usage: 7za <command> [<switches>...] <archive_name> [<file_names>...]
           [<@listfiles...>]

    <Commands>
      a: Add files to archive
      b: Benchmark
      d: Delete files from archive
      e: Extract files from archive (without using directory names)
      l: List contents of archive
      t: Test integrity of archive
      u: Update files to archive
      x: eXtract files with full paths
    <Switches>
      -ai[r[-|0]]{@listfile|!wildcard}: Include archives
      -ax[r[-|0]]{@listfile|!wildcard}: eXclude archives
      -bd: Disable percentage indicator
      -i[r[-|0]]{@listfile|!wildcard}: Include filenames
      -m{Parameters}: set compression Method
      -o{Directory}: set Output directory
      -p{Password}: set Password
      -r[-|0]: Recurse subdirectories
      -scs{UTF-8 | WIN | DOS}: set charset for list files
      -sfx[{name}]: Create SFX archive
      -si[{name}]: read data from stdin
      -slt: show technical information for l (List) command
      -so: write data to stdout
      -ssc[-]: set sensitive case mode
      -ssw: compress shared files
      -t{Type}: Set type of archive
      -u[-][p#][q#][r#][x#][y#][z#][!newArchiveName]: Update options
      -v{Size}[b|k|m|g]: Create volumes
      -w[{path}]: assign Work directory. Empty path means a temporary directory
      -x[r[-|0]]]{@listfile|!wildcard}: eXclude filenames
      -y: assume Yes on all queries



PROGETTO_GESTIONE_RAR_COSTRUTTORE_STRINGHE_MDB
    
    TABELLE
        ..

    QUERY
        WinRar_Tb03Qry01_01_SELECT_COSTR_STRINGA_ControlloCod
            note
                Query di controllo della stringa rar in costruzione
            struttura
                    sSql = ""
                    sSql = & sSql ""
                    
                    SELECT 
                    WinRar_DF05_CODICE_RAR.COD_RAR_s, 
                    WinRar_TB02_GESTIONE_OPZIONI.OPZ_01_s, 
                    WinRar_TB01_GESTIONE_DATE.INIZ_ANNO_i, 
                    WinRar_TB01_GESTIONE_DATE.INIZ_MESE_i, 
                    WinRar_TB01_GESTIONE_DATE.INIZ_GIORNO_i, 
                    WinRar_TB01_GESTIONE_DATE.SETTIMANA_s, 
                    WinRar_TB01_GESTIONE_DATE.MESE_ESTESO_s, 
                    WinRar_TB01_GESTIONE_DATE.FIN_ANNO_i, 
                    WinRar_TB01_GESTIONE_DATE.FIN_MESE_i, 
                    WinRar_TB01_GESTIONE_DATE.FIN_GIORNO_i, 
                    WinRar_TB02_GESTIONE_OPZIONI.OPZ_03_s, 
                    WinRar_TB02_GESTIONE_OPZIONI.OPZ_02_s, 
                    WinRar_TB01_GESTIONE_DATE.FILE_PROC_s, 
                    WinRar_TB01_GESTIONE_DATE.NOTE_PROC_m, 
                    WinRar_TB01_GESTIONE_DATE.LISTA_FILE_s, 
                    WinRar_TB03_COSTR_STRINGA.RAR_EXE_s
                    
                    FROM 
                    ((WinRar_DF05_CODICE_RAR 
                        INNER JOIN 
                            WinRar_TB02_GESTIONE_OPZIONI ON WinRar_DF05_CODICE_RAR.COD_RAR_s = WinRar_TB02_GESTIONE_OPZIONI.COD_RAR_s) 
                        INNER JOIN 
                            WinRar_TB01_GESTIONE_DATE ON WinRar_TB02_GESTIONE_OPZIONI.COD_RAR_s = WinRar_TB01_GESTIONE_DATE.COD_RAR_s) 
                        INNER JOIN WinRar_TB03_COSTR_STRINGA ON WinRar_TB01_GESTIONE_DATE.COD_RAR_s = WinRar_TB03_COSTR_STRINGA.COD_RAR_s;


            faq
    MODULI
        ..
    CLASSI
        ..
    FORM
        
        WINRAR_Frm01_M01_GESTIONE
              Note
                       form master di gesteione di WINRAR e del dos o Bash

              SottoForm
                       contiende diverse sottoform basate sul tab control
                           WINRAR_FrmTB01_01_GESTIONE_DATE
                           WinRar_FrmTB02_01_GESTIONE_OPZIONI
                           WinRar_FrmTB03_01_COSTR_STRINGA
                           WinRar_FrmTB04_01_BAT

              EVENTI_PAGINE_TAB_CONTROLL
                    Contiene un tab control con eventi per ogni cambiamento di pagina in cui
                    viene attivato il menu della pagina
                        @MENU.TAB.CONTROL

              EVENTO_FORM_LOAD
                Carica il menu iniziale della form load di questa master
                    @MENU.INIZIALE@FORM.LOAD
                    @CARICA@MENU.iniziale@CMB

          OGGETTI_FORM 
                     TabCtl1
                            il tab control della form master
                        @TAB@CONTROL
                     CMB.01
                            EVENTO_AFTER_UPDATE
                        casella combinata della form master per la gestione dei MENU DELLA FORM MASTER e per la GESTIONE DEI MENU DELLE SOTTOFORM del tab controll
                        Sull'evento after update della combinata vengono aggiornati i menu

                            @COMBINATA.01@Cmb_01@COMBINATA.01@Cmb_01@AfterUpdate
                            @Cmb_01@AGGIORNAMENTO.DEI.MENU

          PROCEDIMENTO_DI_GESTIONE_MENU 
                    GESTIONE MENU SULLA COMBINATA DELLA FORM MASTER
                         CMB_01
                              Per gestire una casella combinata occorre per prima cosa costruire :
                              - Una form Master con una casella combinata Cmb_01 +
                                un Tab controllo unitamente alle sottoform quante previste;
                              
                              - creare un evento change del tab controll con l'evento
                                   TabCtl1_Change
                                   
                              - impostare una select case con il recupero dell'indice di pagina 
                                con  una  Select Case pge.PageIndex   all'interno dell'evento
                                change del tab controll
                                   @INDEX.PAGINE@TAB.CONTROL@index
                                   
                              - creare una funzione IMPOSTA LA COMBINATA denominata
                                   pFunct_IMPOSTA_CMB al quale passare il parametro del menu base
                                   della scelta @IMPOSTA@COMBINATA
                                alla fine della funzione occore impostare  le propieta della combinata 
                                quali  max colonne con 
                                                 Me.Cmb_01_TXT.ColumnCount = 1                              '//qui indico alla combinata che deve avere 1 COLONNA
                                  
                                                '//imposto ad elenco valori
                                                 Me.Cmb_01_TXT.RowSourceType = "Elenco valori"              '//qui imposto la proprieta della combinata ad elenco valori
                                    
                                                 '//imposto il valore base
                                                 Me.Cmb_01_TXT.Value = par_COD_MENU_s                       '//qui imposto il valore base secondo la variabile della select
                                                 Me.Cmb_01_TXT.RowSource = String1                   '//carica nella combinata tutte le scelte   
                                                 Me.Cmb_01_TXT.Requery                          '//aggiorna   
                       
                                   
                              
                    EVENTI_GESTIONE_MENU
                              
                         1) EVENTO APERTURA FORM
                              Imposta l'evento 
                              all'apertura della form master viene aggiornato il menu della casella
                              combinata. 
                                   es. @Cmb_01@AGGIORNAMENTO.DEI.MENUù
                              
                              
                              
                         2) EVENTO SU AGGIORNAMENTO DELLA COMBINATA
                              Cmb_01_AfterUpdate
                                   all'aggiornamento della form combinata viene chiama La funzione
                                   pfFunction_GE_ATTI_MENU Me.Cmb_01.Value passando come paramentro
                                   il valore scelto nella campo a discesa.
                                        es. @COMBINATA.01@Cmb_01@AfterUpdate, @Cmb_01@AGGIORNAMENTO.DEI.MENU
                                        
                                   
                                        
                    


        WinRar_FrmTB03_01_COSTR_STRINGA
               Note
                          Form per LA COSTRUZIONE STRINGA con la tabella base CODICI RAR che permette di estrarre un rs 
                     
               Tabella_Master
                          WinRar_TB03_COSTR_STRINGA

               SottoForm**
                          NomeSettoForm
                              Master
                              Detail
                          NomeSettoForm2
                              Master
                              Detail
                      
               EVENTI_FORM *
                      
               EVENTI_CAMPI
                          COD_RAR_Update
                              Note 
                                  con l'evento aggiona del campo CODICE RAR viene creato un rs in base alle opzioni alla date ed alla tabella 3 di costruzione stringa
                                      Stringa_rs

                                          '//STRINGA SQL BASE RICOSTRUITA SULLA BASE DELLA QUERY _
                                          WinRar_Tb03Qry01_01_SELECT_COSTR_STRINGA_ControlloCod

                                          sSql = ""
                                          sSql = sSql & "SELECT "
                                          sSql = sSql & "WinRar_DF05_CODICE_RAR.COD_RAR_s, "
                                          sSql = sSql & "WinRar_TB02_GESTIONE_OPZIONI.OPZ_01_s, "
                                          sSql = sSql & "WinRar_TB01_GESTIONE_DATE.INIZ_ANNO_i, "
                                          sSql = sSql & "WinRar_TB01_GESTIONE_DATE.INIZ_MESE_i, "
                                          sSql = sSql & "WinRar_TB01_GESTIONE_DATE.INIZ_GIORNO_i, "
                                          sSql = sSql & "WinRar_TB01_GESTIONE_DATE.SETTIMANA_s, "
                                          sSql = sSql & "WinRar_TB01_GESTIONE_DATE.MESE_ESTESO_s, "
                                          sSql = sSql & "WinRar_TB01_GESTIONE_DATE.FIN_ANNO_i, "
                                          sSql = sSql & "WinRar_TB01_GESTIONE_DATE.FIN_MESE_i, "
                                          sSql = sSql & "WinRar_TB01_GESTIONE_DATE.FIN_GIORNO_i, "
                                          sSql = sSql & "WinRar_TB02_GESTIONE_OPZIONI.OPZ_03_s, "
                                          sSql = sSql & "WinRar_TB02_GESTIONE_OPZIONI.OPZ_02_s, "
                                          sSql = sSql & "WinRar_TB01_GESTIONE_DATE.FILE_PROC_s, "
                                          sSql = sSql & "WinRar_TB01_GESTIONE_DATE.NOTE_PROC_m, "
                                          sSql = sSql & "WinRar_TB01_GESTIONE_DATE.LISTA_FILE_s, "            '//@AGGIORNAMENTO.DEL.2022.11.15 = INSERITO
                                          sSql = sSql & "WinRar_TB03_COSTR_STRINGA.RAR_EXE_s "
                                          sSql = sSql & "FROM "
                                          sSql = sSql & "((WinRar_DF05_CODICE_RAR INNER JOIN WinRar_TB02_GESTIONE_OPZIONI ON WinRar_DF05_CODICE_RAR.COD_RAR_s = WinRar_TB02_GESTIONE_OPZIONI.COD_RAR_s) "
                                          sSql = sSql & "INNER JOIN WinRar_TB01_GESTIONE_DATE ON WinRar_TB02_GESTIONE_OPZIONI.COD_RAR_s = WinRar_TB01_GESTIONE_DATE.COD_RAR_s) "
                                          sSql = sSql & "INNER JOIN WinRar_TB03_COSTR_STRINGA ON WinRar_TB01_GESTIONE_DATE.COD_RAR_s = WinRar_TB03_COSTR_STRINGA.COD_RAR_s "
                                          sSql = sSql & "WHERE (((WinRar_DF05_CODICE_RAR.COD_RAR_s)='" & String1 & "'));"

                                          '//controllo
                                          Debug.Print sSql
                              FAQ
                                  @AGGIORNA@CAMPI.DATA

               faq
                @COSTRUZIONE.STRINGA@FORM
    


    REPORT
        ..



