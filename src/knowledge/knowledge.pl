
% define operators, making this an internal, Prolog-based domain-specific language (DSL)
:- op(100, xfx, [has, isa, does]).
:- op(900,fx,not).
:- op(900, xfx, ::).
:- op(800, xfx, was).
:- op(870, fx, if).
:- op(880, xfx, then).
:- op(550, xfy, or).
:- op(540, xfy, and).
:- op(300, fx, 'derived by').
:- op(600, xfx, from).
:- op(600, xfx, by).

askable(_ has _, 'Var_animal' has 'Something').
askable(_ does _, 'Var_animal' does 'Something').



% each rule is represented by one predicate, using operators defined above:
rule0::if   Var_animal has 'a nervous system'
            or
            Var_animal has blood
        then
            Var_animal isa animal.
            
rule1::if   Var_animal isa animal and 
            Var_animal has hair
            or
            Var_animal does 'give milk'
        then
            Var_animal isa mammal.

rule2::if
            Var_animal isa animal and 
            Var_animal has feathers
            or
            Var_animal does fly and
            Var_animal does 'lay eggs'
        then
            Var_animal isa bird.
            

rule3::if   Var_animal isa animal and 
            Var_animal has 'three chambered heart'
            or
            Var_animal does 'live in water and on land'
        then
            Var_animal isa amphibian.

rule4::if   Var_animal isa animal and 
            Var_animal has 'fins'
            or
            Var_animal does 'swims'
        then
            Var_animal isa fish.			

rule5::if
             Var_animal isa animal and
			 Var_animal has 'scales' 
             and 
             Var_animal has 'cold-blood' 
             then
             Var_animal isa reptile .
			
rule6::if
            Var_animal isa animal and
            (Var_animal does 'eat meat'
                or
                Var_animal has 'pointed teeth' and
                Var_animal has claws and
                Var_animal has 'forward pointing eyes')
        then
            Var_animal isa carnivore.
			
rule7::if
            Var_animal isa animal and
            Var_animal does 'eat grass'
               or
            Var_animal has 'flat molar teeths'
        then
            Var_animal isa herbivore.
			
rule8::if
            Var_animal isa animal and
            Var_animal isa carnivore and
            Var_animal isa herbivore
        then
            Var_animal isa omnivore.

rule9::if   Var_animal isa animal and 
            Var_animal isa mammal and
			Var_animal isa carnivore and
			Var_animal does 'barks'
            or
            Var_animal does 'howls'
        then
            Var_animal isa canidae.

rule10::if   Var_animal isa animal and 
            Var_animal isa mammal and
			Var_animal has 'tail'
            and
            Var_animal has 'fur'
        then
            Var_animal isa felidae.			
			
rule11::if   Var_animal isa animal and 
            Var_animal isa reptile and
			Var_animal has 'a long and tapering tail'
            or
            Var_animal has 'weak legs'
        then
            Var_animal isa scincidae.	

rule12::if   Var_animal isa animal and 
            Var_animal isa reptile and
			Var_animal has 'strong legs'
            or
            Var_animal does 'shows limited change of color'
        then
            Var_animal isa agamidae.				

rule13::if   Var_animal isa animal and 
            Var_animal isa reptile and
			Var_animal isa carnivore and
			Var_animal has 'high stamina'
        then
            Var_animal isa varanidae.	

			
rule14::if   Var_animal isa animal and 
            Var_animal isa mammal and
			Var_animal isa herbivore and
			Var_animal has 'two toes on their feet'
        then
            Var_animal isa cervidae.

rule15::if   Var_animal isa animal and 
            Var_animal isa mammal and
			Var_animal does 'socialize during mating season'
            or
            Var_animal has 'large claws and long rough fur'
        then
            Var_animal isa ursidae.
			
rule16::if   Var_animal isa animal and 
            Var_animal isa mammal and
			Var_animal isa herbivore and
			Var_animal has 'long neck'
        then
            Var_animal isa girrafedae.

			
rule17::if   Var_animal isa animal and 
            Var_animal isa mammal and
			Var_animal isa herbivore and
			Var_animal does 'is more agile in water '
			or 
			Var_animal has 'stocky bodies with short limbs'
        then
            Var_animal isa castoridae.

rule18::if   Var_animal isa animal and 
            Var_animal isa mammal and
			Var_animal has 'a single toe '
			or 
			Var_animal has 'high crowned teeth'
        then
            Var_animal isa equidae.


rule19::if   Var_animal isa animal and 
            Var_animal isa fish and
			Var_animal isa carnivore and 
			Var_animal has 'pointed snout'
			and 
			Var_animal has 'large gill openings'
        then
            Var_animal isa lamnidae.
			
rule20::if   Var_animal isa animal and 
            Var_animal isa fish and 
			Var_animal does 'is found in freshwater '
			or 
			Var_animal has 'toothless jaw'
        then
            Var_animal isa cypridae.

rule21::if   Var_animal isa animal and 
            Var_animal isa fish and 
			Var_animal has 'snakelike body '
        then
            Var_animal isa anguillidae.

rule22::if   Var_animal isa animal and 
            Var_animal isa fish and 
			Var_animal has 'four pair of arms '
        then
            Var_animal isa octopodidae.

rule23::if   Var_animal isa animal and 
            Var_animal isa fish and 
			Var_animal does 'is partially endothermic  '
        then
            Var_animal isa scombridae.	

rule24::if   Var_animal isa animal and 
            Var_animal isa bird and 
			Var_animal does 'produces crop milk '
			or 
			Var_animal has 'short neck and slender bills'
        then
            Var_animal isa columbidae.
			
rule25::if   Var_animal isa animal and 
            Var_animal isa bird and
            Var_animal isa carnivore and			
			Var_animal has 'strongly hooked bills'
        then
            Var_animal isa accipitridae.

rule26::if   Var_animal isa animal and 
            Var_animal isa bird and 
			Var_animal has 'long legs'
			and 
			Var_animal does 'use beak upside down'
        then
            Var_animal isa phoenicopteridae.

rule27::if   Var_animal isa animal and 
            Var_animal isa bird and 
			Var_animal isa herbivore and
			Var_animal has 'has nine-primary feathers '
        then
            Var_animal isa emberizidae.			

rule28::if   Var_animal isa animal and 
            Var_animal isa amphibian and
			Var_animal has 'rough bumpy skin '
			and 
			Var_animal has 'squat body with short legs'
        then
            Var_animal isa bufonidae.

rule29::if   Var_animal isa animal and 
            Var_animal isa amphibian and
			Var_animal has ' four toes on forelimbs '
			and 
			Var_animal has 'no rib'
        then
            Var_animal isa salamandridae.

rule30::if   Var_animal isa animal and 
            Var_animal isa amphibian and
			Var_animal has 'snakelike body '
        then
            Var_animal isa caecillidae.

			
    
fact::_X isa omnivore :-
omnivore(_X).
fact::_X isa herbivore :-
herbivore(_X).
fact::_X isa carnivore :-
carnivore(_X).

