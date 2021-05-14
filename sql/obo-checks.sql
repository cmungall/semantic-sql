CREATE VIEW unlabeled_iri AS SELECT * FROM iri WHERE id NOT IN (SELECT subject FROM rdfslabel);
CREATE VIEW unlabeled_nondeprecated_iri AS SELECT * FROM iri WHERE id NOT IN (SELECT subject FROM rdfslabel) AND id NOT IN (SELECT id FROM deprecated);

/**

Experiment: try and recapitulate aspects of:

http://robot.obolibrary.org/report

*/

CREATE VIEW node_with_two_labels_problems AS SELECT s1.subject AS id, s1.value AS label1, s2.value AS label2 FROM rdfslabel AS s1, rdfslabel AS s2 WHERE s1.subject=s2.subject AND s1.value != s2.value;
CREATE VIEW shared_label_problems AS SELECT s1.subject AS node1, s2.subject AS node2, s1.value FROM rdfslabel AS s1, rdfslabel AS s2 WHERE s1.subject!=s2.subject AND s1.value = s2.value;

CREATE VIEW problems AS
  SELECT 'node_with_two_labels_problems' AS problem, id, label1 AS value FROM node_with_two_labels_problems
  UNION
  SELECT 'shared_label_problems' AS problem, node1 AS id, value FROM shared_label_problems;
  
CREATE VIEW edge_pointing_to_obsolete_problem AS SELECT subject AS id, predicate, object FROM edge WHERE object in (SELECT id FROM deprecated);

-- https://github.com/ontodev/robot/blob/master/robot-core/src/main/resources/report_queries/deprecated_boolean_datatype.rq
CREATE VIEW deprecated_boolean_datatype_problem AS SELECT * FROM statements WHERE predicate='owl:deprecated' AND datatype != 'xsd:boolean';

CREATE VIEW bad_boolean_datatype_problem AS SELECT * FROM statements WHERE datatype = 'xsd:boolean' AND value NOT IN ('true', 'false');