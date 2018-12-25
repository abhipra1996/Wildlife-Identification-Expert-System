Identifying Wildlife

Language Used - PROLOG.

Allows querying and extending the knowledge base from a command-line interface. This expert system answers the queries related to which family does the animal belongs to and the  type of animal it is according to the query asked by the user. The knowledge base contains three groups carnivore,herbivore and omnivore which is used by the rule base to answer the query. It uses the backward chaining technique to answer the queries. Once it has answered a query it asks the user whether it wants an explanation of it or not. 

Working:

The user asks the query on the commandline. The expert system breaks the query and gets to know what the user wants to ask and then searches for the rule provided in the rule-base. From the rule-base it picksup the rule and checks the conditions specified in the rule sequentially to answer the query. It takes the input knowledge from the userin form of YES or NO for the conditions specified in the rule. It checks conditions sequentially and proceeds forward to next conditon on every YES and for every NO it backtracks to the previous condition and checks its validation. It uses the Backward chaining technique to answer the query asked  by the user. Next the expert system gives it's conclusion.

Running:

0)install swi-prolog.
(for ubuntu)
1) go to the directory containing the main.pl file.
2) run "swipl -f main.pl"
3) enter "start."

(for windows)
1) click on main.pl .
2) enter "start."

On questions, answer "yes."/"no." or "y."/"n."

Queries:

1) Consult the expert: "what is Object-A?" 
2) Consult the expert using a specified property: "is Object-A a bird?"
3) Consult the expert about its family : "is Object-A a canidae?"
4) Query a fact, knowing the group: "is a dog a carnivore?"
5) Query a group: "show group carnivore."

eg.- is deer a cervidae?   -true
       is goldfish a lamnidae?  -false
       is monkey a mammal? -true
       is ostrich a bird?   -true.



Rules are stored in "knowledge/knowledge.pl", facts in individual files for each group in "knowledge/groups".



