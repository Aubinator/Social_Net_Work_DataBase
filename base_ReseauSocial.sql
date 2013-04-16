/*
SQLyog Community Edition- MySQL GUI v6.52
MySQL - 5.5.20-log : Database - base_reseau_social
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

create database if not exists `base_reseau_social`;

USE `base_reseau_social`;

/*Table structure for table `aimer_commentaire` */

DROP TABLE IF EXISTS `aimer_commentaire`;

CREATE TABLE `aimer_commentaire` (
  `id_utililisateur` int(11) NOT NULL,
  `numcommentaire` int(11) NOT NULL,
  PRIMARY KEY (`id_utililisateur`,`numcommentaire`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `aimer_commentaire` */

insert  into `aimer_commentaire`(`id_utililisateur`,`numcommentaire`) values (1,1),(1,3),(1,5),(2,1),(2,2),(3,1),(4,6),(4,7),(4,8),(5,6);

/*Table structure for table `aimer_publication` */

DROP TABLE IF EXISTS `aimer_publication`;

CREATE TABLE `aimer_publication` (
  `id_utilisateur` int(11) NOT NULL,
  `numpublication` int(11) NOT NULL,
  PRIMARY KEY (`id_utilisateur`,`numpublication`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `aimer_publication` */

insert  into `aimer_publication`(`id_utilisateur`,`numpublication`) values (1,1),(1,2),(1,3),(2,1),(2,3),(2,5),(3,3);

/*Table structure for table `amis` */

DROP TABLE IF EXISTS `amis`;

CREATE TABLE `amis` (
  `id1` int(11) NOT NULL,
  `id2` int(11) NOT NULL,
  PRIMARY KEY (`id1`,`id2`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `amis` */

insert  into `amis`(`id1`,`id2`) values (1,2),(1,3),(1,4),(1,5),(1,8),(2,1),(2,3),(2,4),(2,9),(3,1),(3,2),(4,1),(4,2),(4,5),(5,1),(5,4),(5,8),(8,1),(8,5),(9,2);

/*Table structure for table `commentaires` */

DROP TABLE IF EXISTS `commentaires`;

CREATE TABLE `commentaires` (
  `numcommentaire` int(11) NOT NULL AUTO_INCREMENT,
  `texte` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `numpublication` int(11) DEFAULT NULL,
  `id_utilisateur` int(11) DEFAULT NULL,
  PRIMARY KEY (`numcommentaire`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `commentaires` */

insert  into `commentaires`(`numcommentaire`,`texte`,`date`,`numpublication`,`id_utilisateur`) values (1,'Vraiment wakhatiko deh','2012-01-01',1,2),(2,'Barca Zéroo c la fete','2012-10-10',1,1),(3,'N\'importe quoi ','2012-12-01',1,3),(4,'Ouiii 3 wakhofi darra','2012-01-10',1,4),(5,'AH oui on est les rois','2012-10-11',1,5),(6,'Je vous attend l\'année prochaine','2012-10-10',1,6),(7,'Merci','2012-10-01',2,3),(8,'Ah oui on doit vraiment les remercier','2012-09-09',2,4);

/*Table structure for table `demandes` */

DROP TABLE IF EXISTS `demandes`;

CREATE TABLE `demandes` (
  `numdemande` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `id_expediteur` int(11) DEFAULT NULL,
  `id_recepteur` int(11) DEFAULT NULL,
  `etat` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`numdemande`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `demandes` */

insert  into `demandes`(`numdemande`,`date`,`id_expediteur`,`id_recepteur`,`etat`) values (1,'2010-01-01',5,1,'traite'),(2,'2011-02-09',9,1,'traite'),(3,'0000-00-00',2,8,'traite');

/*Table structure for table `groupes` */

DROP TABLE IF EXISTS `groupes`;

CREATE TABLE `groupes` (
  `numgroupe` int(11) NOT NULL AUTO_INCREMENT,
  `dateCreation` date DEFAULT NULL,
  `logo` varchar(80) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `type` varchar(80) DEFAULT NULL,
  `utilisateur_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`numgroupe`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `groupes` */

insert  into `groupes`(`numgroupe`,`dateCreation`,`logo`,`description`,`type`,`utilisateur_id`) values (1,'2010-01-08','GGGG','Pour un changement constructif','ouvert',1),(2,'2012-01-09','HGJ','Les plus belles','ferme',2),(3,'2012-09-10','GSGSG','Afrique mon Afrique','ferme',3);

/*Table structure for table `inscriptions` */

DROP TABLE IF EXISTS `inscriptions`;

CREATE TABLE `inscriptions` (
  `numinscription` int(11) NOT NULL AUTO_INCREMENT,
  `id_utilisateur` int(11) DEFAULT NULL,
  `numgroupe` int(11) DEFAULT NULL,
  `dateInscription` date DEFAULT NULL,
  PRIMARY KEY (`numinscription`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `inscriptions` */

insert  into `inscriptions`(`numinscription`,`id_utilisateur`,`numgroupe`,`dateInscription`) values (1,1,1,'2012-00-09'),(2,2,1,'2012-09-12'),(3,3,1,'2012-09-01'),(4,4,1,'2012-09-01'),(5,5,1,'2012-08-09'),(6,6,1,'2012-09-01'),(7,7,1,'2012-09-01'),(8,2,2,'2012-09-09'),(9,3,2,'2012-09-01'),(10,7,2,'2012-09-01'),(11,1,3,'2012-01-09'),(12,3,3,'2012-09-07'),(13,6,3,'2012-09-01');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `nummessage` int(11) NOT NULL AUTO_INCREMENT,
  `texte` varchar(80) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `id_expediteur` int(11) DEFAULT NULL,
  `id_recepteur` int(11) DEFAULT NULL,
  `etat` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`nummessage`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `messages` */

insert  into `messages`(`nummessage`,`texte`,`date`,`id_expediteur`,`id_recepteur`,`etat`) values (1,'Salut','2012-09-01',10,1,'lu'),(2,'Bonjour','2012-09-09',9,1,'lu'),(3,'Slt Miss','2012-08-01',2,3,'lu');

/*Table structure for table `publications` */

DROP TABLE IF EXISTS `publications`;

CREATE TABLE `publications` (
  `numpublication` int(11) NOT NULL AUTO_INCREMENT,
  `texte` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `id_utilisateur` int(11) DEFAULT NULL,
  PRIMARY KEY (`numpublication`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `publications` */

insert  into `publications`(`numpublication`,`texte`,`date`,`id_utilisateur`) values (1,'Halla Madrid!!','2012-09-01',1),(2,'Longue vie à toutes les mamans','2012-09-01',1),(3,'Bienvenue ','2012-09-09',2),(4,'J\'ai mal ','2012-01-09',3),(5,'Journée chaud à Paris','2012-01-01',4),(6,'Bravo Real Barca on dit quoi?','2012-09-01',5),(7,'Comment annuler le journal de Facebook?','2012-01-01',6);

/*Table structure for table `traitement_demande` */

DROP TABLE IF EXISTS `traitement_demande`;

CREATE TABLE `traitement_demande` (
  `numtraitement` int(11) NOT NULL AUTO_INCREMENT,
  `numdemande` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `choix` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`numtraitement`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `traitement_demande` */

insert  into `traitement_demande`(`numtraitement`,`numdemande`,`date`,`choix`) values (1,1,'2012-09-08','oui'),(2,2,'2012-09-01','non'),(3,3,'2012-09-01','non');

/*Table structure for table `utilisateurs` */

DROP TABLE IF EXISTS `utilisateurs`;

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(80) DEFAULT NULL,
  `prenom` varchar(80) DEFAULT NULL,
  `login` varchar(80) DEFAULT NULL,
  `password` varchar(80) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `utilisateurs` */

insert  into `utilisateurs`(`id`,`nom`,`prenom`,`login`,`password`,`date`) values (1,'DIAW','Amadou','diawdba','diawdba','2012-03-09'),(2,'FALL','Demba','fall_d','123467','2012-04-12'),(3,'KANE','Aissata','kane_a_2012','26267','2010-09-01'),(4,'Diop','Aminata','diop_a_gt','2HSHS','2011-09-10'),(5,'Sarr','Anta','dio_sarr_a','GAGAG','2011-09-09'),(6,'COUAME','Francois','franc_a','HAHAGA','2012-09-08'),(7,'HAN','Sandra','sand_ajj','GAGAGA','2012-09-01'),(8,'GAGA','Panjoum','Gag_aggg','GAGAG','2010-01-09'),(9,'Diop','Antouwanette','dio_anthiou','gtjmmo','2012-09-09'),(10,'DIALLO','Anta','diallo_anta','vvdvd','2012-09-12');

/* Trigger structure for table `publications` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trigger_after_publication` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trigger_after_publication` AFTER INSERT ON `publications` FOR EACH ROW BEGIN
declare com int;
select count(c.numcommentaire) into com
from commentaires c, publications p
where numpublication=new.numpublication
and c.numpublication=p.numpublication
 and com=0;
    END */$$


DELIMITER ;

/* Trigger structure for table `traitement_demande` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trigger_confirmation_ami` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trigger_confirmation_ami` AFTER INSERT ON `traitement_demande` FOR EACH ROW BEGIN
declare ok1 int;
declare ok2 int;
select id_expediteur,id_recepteur into ok1,ok2
 from demandes where numdemande =
(select numdemande from traitement_demande where choix='oui');
insert into amis(id1,id2) values(ok1,ok2);
    END */$$


DELIMITER ;

/* Function  structure for function  `function_nb_publication_aimer` */

/*!50003 DROP FUNCTION IF EXISTS `function_nb_publication_aimer` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `function_nb_publication_aimer`(loging varchar(30)) RETURNS int(11)
    READS SQL DATA
BEGIN
	declare nb int;
	select count(*)into nb from utilisateurs U, publications P, aimer_publication A 
	where U.id = P.id_utilisateur and P.id_utilisateur = A.id_utilisateur and A.numpublication = P.numpublication 
	and U.login = loging;
	return nb;
    END */$$
DELIMITER ;

/* Function  structure for function  `nb_commentaires` */

/*!50003 DROP FUNCTION IF EXISTS `nb_commentaires` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `nb_commentaires`(loging varchar(30)) RETURNS int(11)
    READS SQL DATA
BEGIN
	declare nb int;
	select count(*) into nb from commentaires where id_utilisateur = (select id from utilisateurs where login=loging);
	return nb;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `facebookeur_semaine` */

/*!50003 DROP PROCEDURE IF EXISTS  `facebookeur_semaine` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `facebookeur_semaine`()
BEGIN
	select nom,prenom from utilisateurs where id = 
(select id_utilisateur from publications having max(function_nb_publication_aimer(login)));
    END */$$
DELIMITER ;

/* Procedure structure for procedure `prcs_list_utilisateur_nb_comm` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcs_list_utilisateur_nb_comm` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcs_list_utilisateur_nb_comm`()
BEGIN
	select nom, prenom,nb_commentaire(login) from utilisateurs ;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `procs_ami_commun` */

/*!50003 DROP PROCEDURE IF EXISTS  `procs_ami_commun` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `procs_ami_commun`(in a varchar(80), in b varchar(80))
BEGIN
select distinct nom, prenom from utilisateurs U, amis A where U.id = A.id2 and id2 in ( select id2 from  amis A where A.id1 = (select id from utilisateurs where login=a
and id2 in
(select  id2 from  amis A where A.id1 = (select id from utilisateurs where login=b))));
   END */$$
DELIMITER ;

/* Procedure structure for procedure `procs_mme_groupe` */

/*!50003 DROP PROCEDURE IF EXISTS  `procs_mme_groupe` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `procs_mme_groupe`(in cg varchar(30))
BEGIN
Select nom,prenom from utilisateurs where id in (select utilisateur_id from groupes where numgroupe= 
(select numgroupe from groupes where utilisateur_id = (select id from utilisateurs where login = cg)))
and id not in (select id2 from amis where id1 = (select id from utilisateurs where login = cg));
  END */$$
DELIMITER ;

/* Procedure structure for procedure `sauvegarde` */

/*!50003 DROP PROCEDURE IF EXISTS  `sauvegarde` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sauvegarde`()
BEGIN
DECLARE fin_curseur BOOLEAN DEFAULT 0;
DECLARE id int;
DECLARE nom varchar (80);
DECLARE prenom varchar (80);
DECLARE login varchar (80);
DECLARE passwords varchar (80);
DECLARE dates date;
DECLARE id1 int;
DECLARE id2 int;
DECLARE cur1 CURSOR FOR SELECT * FROM utilisateurs;
DECLARE cur2 CURSOR FOR SELECT * FROM amis;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET fin_curseur:=1;
OPEN cur1;
OPEN cur2;
FETCH cur1 into id,nom,prenom,login,passwords,dates;
FETCH cur2 into id1,id2;
WHILE (NOT fin_curseur) DO
if(id) THEN  insert into sauvegarde.utilisateurs values (id,nom,prenom,login,passwords,dates);
elseif(id) THEN  insert into  sauvegarde.amis values ( id1,id2);
END IF;
FETCH cur1 into id,nom,prenom,login,passwords,dates;
FETCH cur2 into id1,id2;
END WHILE;               
    END */$$
DELIMITER ;

/*Table structure for table `view_commentaire` */

DROP TABLE IF EXISTS `view_commentaire`;

/*!50001 DROP VIEW IF EXISTS `view_commentaire` */;
/*!50001 DROP TABLE IF EXISTS `view_commentaire` */;

/*!50001 CREATE TABLE `view_commentaire` (
  `numpublication` int(11) NOT NULL,
  `nombre` bigint(21) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 */;

/*Table structure for table `viw_user` */

DROP TABLE IF EXISTS `viw_user`;

/*!50001 DROP VIEW IF EXISTS `viw_user` */;
/*!50001 DROP TABLE IF EXISTS `viw_user` */;

/*!50001 CREATE TABLE `viw_user` (
  `id` int(11) NOT NULL DEFAULT '0',
  `nom` varchar(80) DEFAULT NULL,
  `prenom` varchar(80) DEFAULT NULL,
  `login` varchar(80) DEFAULT NULL,
  `password` varchar(80) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 */;

/*View structure for view view_commentaire */

/*!50001 DROP TABLE IF EXISTS `view_commentaire` */;
/*!50001 DROP VIEW IF EXISTS `view_commentaire` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_commentaire` AS (select `aimer_publication`.`numpublication` AS `numpublication`,count(0) AS `nombre` from `aimer_publication` group by `aimer_publication`.`numpublication`) */;

/*View structure for view viw_user */

/*!50001 DROP TABLE IF EXISTS `viw_user` */;
/*!50001 DROP VIEW IF EXISTS `viw_user` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viw_user` AS (select `utilisateurs`.`id` AS `id`,`utilisateurs`.`nom` AS `nom`,`utilisateurs`.`prenom` AS `prenom`,`utilisateurs`.`login` AS `login`,`utilisateurs`.`password` AS `password`,`utilisateurs`.`date` AS `date` from `utilisateurs`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
