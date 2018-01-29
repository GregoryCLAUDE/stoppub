#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: user
#------------------------------------------------------------

CREATE TABLE user(
        user_id          int (11) Auto_increment  NOT NULL ,
        user_name        Varchar (25) NOT NULL ,
        user_firstname   int (11) Auto_increment  NOT NULL ,
        user_postal_code Int NOT NULL ,
        user_city        Varchar (25) NOT NULL ,
        PRIMARY KEY (user_id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Company
#------------------------------------------------------------

CREATE TABLE Company(
        id_company      int (11) Auto_increment  NOT NULL ,
        name            int (11) Auto_increment  ,
        siret           Varchar (25) ,
        id_social_siege Int ,
        PRIMARY KEY (id_company )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: alert
#------------------------------------------------------------

CREATE TABLE alert(
        id_alert      int (11) Auto_increment  NOT NULL ,
        date_alert    Date ,
        description   Varchar (255) ,
        id_alert_type Int ,
        user_id       Int NOT NULL ,
        id_company    Int ,
        PRIMARY KEY (id_alert )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: entite3
#------------------------------------------------------------

CREATE TABLE entite3(
        id_social_siege int (11) Auto_increment  NOT NULL ,
        number          Int ,
        street          Varchar (25) ,
        postal_code     Int ,
        city            Varchar (25) ,
        postal_box      Varchar (25) ,
        cedex           Varchar (25) ,
        PRIMARY KEY (id_social_siege )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: alert_type
#------------------------------------------------------------

CREATE TABLE alert_type(
        id_alert_type int (11) Auto_increment  NOT NULL ,
        alert_name    Varchar (25) ,
        PRIMARY KEY (id_alert_type )
)ENGINE=InnoDB;

ALTER TABLE Company ADD CONSTRAINT FK_Company_id_social_siege FOREIGN KEY (id_social_siege) REFERENCES entite3(id_social_siege);
ALTER TABLE alert ADD CONSTRAINT FK_alert_id_alert_type FOREIGN KEY (id_alert_type) REFERENCES alert_type(id_alert_type);
ALTER TABLE alert ADD CONSTRAINT FK_alert_user_id FOREIGN KEY (user_id) REFERENCES user(user_id);
ALTER TABLE alert ADD CONSTRAINT FK_alert_id_company FOREIGN KEY (id_company) REFERENCES Company(id_company);
