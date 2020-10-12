CREATE (andy:Driver {name: "Andy Smith"}), (john:Driver {name: "John Town"}), (bryan:Driver {name: "Bryan Tell"}), (ellie:User {name: "Ellie Cast"}), (ta:Team {name: "Team A", country: "Nevada"}), (tb:Team {name: "Team B", country: "California"})
CREATE (andy)-[m:MARRIED_WITH]->(ellie)
CREATE (andy)-[d1:DRIVES {year: 2017}]->(ta)
CREATE (john)-[d2:DRIVES {year: 2019}]->(ta)
CREATE (john)-[fo:FRIENDS_OF]->(bryan)
CREATE (bryan)-[d3:DRIVES {year: 2020}]->(tb)
CREATE (ta)-[e1:ENEMIES_OF]->(tb)
CREATE (tb)-[e2:ENEMIES_OF]->(ta)
RETURN andy, john, bryan, ellie, ta, tb, d1, d2, d3, fo, e1, e2;
