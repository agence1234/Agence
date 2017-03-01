DELETE FROM actions WHERE id_actions>0;
DELETE FROM admin WHERE id_admin>0;

INSERT INTO actions (id_actions, nom_actions) VALUES (1, 'Vente');
INSERT INTO actions (id_actions, nom_actions) VALUES (2, 'Location');
INSERT INTO admin (id_admin, nom, pseudo, mot_pass) VALUES (1, 'Administrateur', 'admin', 'admin');
