
# Population, probabilité et échantillon

## Expérience aléatoire

On définit une **expérience aléatoire** comme un processus qui va donner
des résultats imprévisibles à l'avance [^imprevisible]. Il est important de remarquer
que dans le cadre des sciences expérimentales une expérience ne définit
donc pas uniquement le phénomène physique que l'on étudie, mais aussi le
matériel utilisé et la façon dont les données sont "reçues" par
l'expérimentateur puisque les instruments de mesures sont aussi à
l'origine de fluctuations statistiques ou d'erreurs de mesure.

(content:univers)=
## Univers et évènements

L'ensemble des résultats possibles d'une expérience est appelé **univers
des possibles**. Cet ensemble dépend bien de l'expérience, mais aussi de
la façon de lire les "résultats". Donnons ici quelques exemples
d'univers liés à des expériences simples :

1.  Prenons un dé à 6 faces simple: si on considère l'expérience
    consistant à lancer le dé et prendre comme résultat de l'expérience
    la valeur du dessus du dé, l'univers des possibles est donc
    l'ensemble des nombres entiers de 1 à 6. Si on prenait la face du
    dessous comme résultat, nous aurions le même univers. En revanche si
    nous prenions la valeur du dessus multipliée par 2, l'ensemble des
    possibles serait différent i.e. l'ensemble des entiers naturels
    pairs de 2 à 12.

2.  Nous avons à notre disposition une pièce avec une tranche infiniment
    fine[^tranche]: on la lance et on regarde la face du dessus. Les résultats
    possibles sont "pile" ou "face". Si en revanche la tranche n'est pas
    infiniment fine, les résultats possibles sont "pile", "face" ou
    "tranche".

3.  On demande à une personne de choisir un nombre entier positif au
    hasard; l'ensemble des possibles est l'ensemble des entiers naturels
    $\mathbb{N}$.

4.  On lance un objet en l'air. On peut alors mesurer la vitesse
    initiale de la pomme, ou bien son énergie cinétique ou encore son
    accélération initiale: toutes ces mesures définissent des
    expériences différentes et donc des univers des possibles différents
    même si l'expérience commence toujours par un lancer de pommes.

Lorsqu'on définit l'univers des possibles, les résultats qui sont
impossibles ne sont pas inclus dans l'univers.

Un **évènement** est une proposition portant sur le résultat d'une
expérience associée qui est soit vraie, soit fausse. Reprenons quelques-uns des exemples ci-dessus:

1.  Dans le cas du lancer d'un dé à 6 faces, on peut définir l'évènement
    "la valeur du dessus du dé est 6": cette proposition est vraie si le
    résultat du dé est 6 et "fausse" si le dé montre 1, 2, 3, 4 ou 5.

2.  Comme pour le lancer d'une pièce, la proposition "la pièce est
    tombée sur "face" définit un évènement.

3.  Pour les mesures de quantités "continue" comme la position ou la
    vitesse d'un objet, les évènements peuvent être définis par les
    valeurs maximales comme, par exemple, "la vitesse de la pomme est
    supérieure à $2~\mathrm{m/s}$" ou bien "la pomme se trouve entre
    $2~\mathrm{m}$ et $3~\mathrm{m}$ du sol".

Les évènements permettent de diviser l'univers en deux sous-ensembles de
résultats. Pour un évènement $\mathcal{A}$, l'ensemble des éléments de
l'univers pour lesquels $\mathrm{A}$ est vrai est noté $A$.
$\overline{A}$ définit donc l'ensemble des éléments de l'univers pour
lesquels $\mathcal{A}$ est faux.

## Définition intuitive des probabilités

En général, nous n'avons pas accès à l'univers des possibles lui-même
mais plutôt à des valeurs discrètes de celui-ci. Lorsqu'on choisit un
nombre entier naturel, on obtient seulement un nombre parmi cet
ensemble. Lorsque l'expérience est répétée, on appelle **échantillon**
l'ensemble des résultats obtenus par ces répétitions. Par exemple, si on
répète 5 fois un lancer de pièces infiniment fines, un échantillon
possible est une séquence de 5 résultats individuels d'expérience comme
{pile, face, pile, face, face}.

On se doute bien que toutes les valeurs d'un univers des possibles ne
vont pas être obtenues avec la même fréquence. On appelle
**probabilité** d'une valeur $x$ ou d'un ensemble de valeurs de
l'univers des possibles la fréquence d'apparition de ces valeurs

$$
p(x) = \lim _{N\rightarrow \infty} \frac{n(x)}{N},
$$

avec $n(x)$ le
nombre d'occurrence de $x$ et $N$ le nombre de répétitions de
l'expérience. Cette définition dite "fréquentiste" est très utile en
physique expérimentale puisqu'elle permet de relier les répétitions
d'expérience (et donc des échantillons) à une propriété de l'univers
associé.

On sent bien que la définition de la probabilité comme fréquence
d'apparition d'un résultat d'une expérience ne fait du sens que pour des
expériences supposées répétables comme la mesure de la probabilité de
faire "pile" lors du lancer de pièce, le nombre d'aiguilles dans des
bottes de foin ou la mesure de la vitesse de pommes tombant d'un arbre.
Ces expériences peuvent être reproduites relativement bien et il est
alors possible d'extraire un nombre d'occurrences d'un résultat. Cependant,
il est possible de définir des probabilités pour les évènements uniques
passés, comme le fait que la Reine d'Angleterre portait un chapeau le 13
mai 2020, et futurs, comme le temps qu'il fera dans 72h. Dans ces cas,
l'expérience ne peut pas se reproduire puisqu'il n'y a qu'un seul 3 mai
2020: il est nécessaire de se donner des modèles statistiques plus
poussés. Par exemple, dans le cas d'évènements futurs, on a souvent
recours à des méthodes plus complexes basées sur des simulations
(météorologiques dans le cas de la météo) utilisant les informations
disponibles à un moment donné pour en déduire la probabilité d'un
évènement futur : ces méthodes sont donc utiles notamment dans le cas où
la reproduction des mesures est difficile.

[^imprevisible]: Les expériences qui donnent toujours le même résultat sont a priori
bien peu intéressantes.

[^tranche]: Une pièce infiniment fine ne tombera jamais sur la tranche.