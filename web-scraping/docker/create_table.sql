CREATE TABLE IF NOT EXISTS procedura_lotto (
                                       id integer PRIMARY KEY AUTOINCREMENT,
                                       lotto text NOT NULL,
                                       tipologia_procedura text,
                                       nr_procedura integer,
                                       tipo_procedura text,
                                       rito text,
                                       pubblicazione_edicom text,
                                       publicazione_portale text,
                                       primo_identificativo integer,
                                       ubicazione text,
                                       genere text,
                                       categoria text,
                                       descrizione_sintetica text,
                                       latitudine float8,
                                       longitudine float8
                                   );
