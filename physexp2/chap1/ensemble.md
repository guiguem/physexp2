
## Définition ensembliste et propriétés des probabilités

En 1933, Andrey Kolmogorov publie un livre intitulé "Foundations of the
Theory of Probability": en utilisant une algèbre de Boole et quelques
axiomes supplémentaires, il introduit une théorie des probabilités que
l’on peut qualifier d’ensembliste. Notamment, il donne une
correspondance entre des ensembles et les évènements aléatoires, comme
nous l’avons fait dans la Section 
<a href="#sec:univers-evenements" data-reference-type="ref" data-reference="sec:univers-evenements">[sec:univers-evenements]</a>.
Nous allons aborder cela dans cette section.

Plus récemment, la théorie de la mesure (que nous n’aborderons pas dans
ce cours) généralise la notion de calcul d’aire et d’intégrale et permet
de donner une version plus forte des définitions ci-dessous, notamment
des ensembles discontinus comme $\mathbb{R}-\{0\}$.

### Définition ensembliste

Dans cette approche, pour un évènement $\mathcal{A}$, l’ensemble des
éléments de l’univers pour lesquels $\mathcal{A}$ est vrai est noté $A$.
$\overline{A}$ définit donc l’ensemble des éléments de l’univers pour
lesquels $\mathcal{A}$ est faux. Aussi, on peut définir l’évènement
$\mathcal{A}\,ou\,\mathcal{B}$ pour lequel $\mathcal{A}$ ou
$\mathcal{B}$ est vrai comme l’étant l’ensemble $A\cup B$ (union de
l’ensemble $A$ et de l’ensemble $B$). De façon similaire, l’évènement
$A\,et\,B$ correspond à l’ensemble $A\cap B$.

On définit la **probabilité** d’un évènement $A$ par une mesure sur
l’ensemble des évènements $\mathcal{A}$ de $A$ telle que:
$$\begin{aligned}
    &0 \leq P(A) \leq 1,\label{eq:axiome-1}\\
    &P(\Omega ) = 1, \label{eq:axiome-2} \\
    &P(A\cup B) = P(A)+P(B) \mathrm{\,si\,} A\cap B = \emptyset\label{eq:axiome-3}.\footnotemark\end{aligned}$$

L’interprétation de ces axiomes en terme de fréquence d’occurence
d’évènements est alors triviale. En effet, la propriété
<a href="#eq:axiome-2" data-reference-type="eqref" data-reference="eq:axiome-2">[eq:axiome-2]</a>
signifie qu’un évènement toujours vrai (i.e. l’univers $\Omega$) a une
probabilité égale à 1. La propriété
<a href="#eq:axiome-3" data-reference-type="eqref" data-reference="eq:axiome-3">[eq:axiome-3]</a>
traduit le fait que l’union d’évènements incompatibles (tels que
$A\cap B = \emptyset$[4]) voient leur probabilité s’additionner. On a
alors: $$P(\mathcal{A}\, ou\, \mathcal{B}) = P(A\cup B) = P(A)+P(B).$$

### Propriétés fondamentales

Énonçons ici quelques conséquences des axiomes définis plus haut.

En effet, on peut en déduire facilement que $P(\Omega) = 1$. Aussi, si
on définit $\overline{A}$ comme étant le complémentaire de $A$[5], on a
$A\cup \overline{A} = \Omega$ et $A\cap \overline{A} = \emptyset$ et on
en déduit des équations
<a href="#eq:axiome-2" data-reference-type="eqref" data-reference="eq:axiome-2">[eq:axiome-2]</a>
et
<a href="#eq:axiome-3" data-reference-type="eqref" data-reference="eq:axiome-3">[eq:axiome-3]</a>:
$$P(\overline{A}) = 1 - P(A).$$

Notamment, on peut étendre la propriété
<a href="#eq:axiome-3" data-reference-type="ref" data-reference="eq:axiome-3">[eq:axiome-3]</a>
pour des ensembles non disjoints:
$$P(A\cup B) = P(A) + P(B) - P(A\cap B).$$ La figure
<a href="#fig:recouvrement" data-reference-type="ref" data-reference="fig:recouvrement">[fig:recouvrement]</a>
illustre bien cela: l’aire de l’union entre $A$ et $B$ est la somme des
surfaces individuelles moins une fois l’aire commune entre $A$ et $B$
(puisque celle-ci est comptée deux fois sinon).

On peut alors remarquer que $$P(A\cup B) \leq P(A) + P(B).$$

Cette notion d’ensembles disjoints s’étend facilement lorsque l’on
considère un nombre $N$ d’ensembles. Si $\Omega = \bigcup _{i=1}^N A_i$
avec $A_i$ disjoints deux à deux, l’ensemble des évènements
$\left\{ \mathcal{A}_i \right\} _{i=1...N}$ est appelé **système complet
d’évènements**. Pour tout ensemble $B$, on a alors:
$$\label{eq:decomposition-system}
    P(B) = P(B\cap \Omega) = P(B\cap \bigcup _{i=1}^N A_i) = \sum _{i=1}^N P(A_i \cap B).$$
Cette dernière formule est utile pour "décomposer" un évènement en terme
d’évènements plus élémentaires.

### Probabilité conditionnelle et théorème de Bayes

Il est souvent utile de considérer la simultanéité de deux évènements.
Par exemple, quelle est la probabilité pour qu’un chien a le pelage
marron, sachant que celui d’un de ses parents est aussi marron? Cette
probabilité n’est pas le produit entre la probabilité pour qu’un chien
soit de couleur marron et celle que ses parents le soient aussi. Il faut
plutôt considérer uniquement l’ensemble des chiens dont les parents sont
de couleur noir et calculer la proportion de pelage marron: on se
restreint donc à un sous-ensemble $\Omega '$ plutôt que l’univers
$\Omega$.

On définit donc la notion de **probabilité conditionnelle**
$P(A\vert B)$ comme étant la probabilité de l’évènement $A$ sachant que
l’évènement $B$ est vrai et on la définit comme:
$$\label{eq:def-conditionnelle}
    P(A\vert B) = \frac{P(A\cap B)}{P(B)}.$$ Remarquons ici que cette
probabilité est définie uniquement si $P(B)\neq 0$; en effet, si
$P(B) = 0$, $B$ est un évènement (presque) impossible.

On peut vérifier que cette probabilité conditionnelle respecte bien les
propriétés
<a href="#eq:axiome-1" data-reference-type="eqref" data-reference="eq:axiome-1">[eq:axiome-1]</a>,
<a href="#eq:axiome-2" data-reference-type="eqref" data-reference="eq:axiome-2">[eq:axiome-2]</a>
et
<a href="#eq:axiome-3" data-reference-type="eqref" data-reference="eq:axiome-3">[eq:axiome-3]</a>
d’une probabilité. Notamment, on peut voir que: $$\begin{aligned}
    &P(\Omega '\vert B) = \frac{P(B)}{P(B)} = 1, \\
    &P(A_1 \cup A_2 \vert B) = P(A_1 \vert B) + P(A_2 \vert B)\mathrm{\,si\,} A_1\cap A_2 = \emptyset.\end{aligned}$$
la probabilité conditionnelle est donc une probabilité définie sur un
univers restreint $\Omega ' = B$. On peut déduire de l’équation
<a href="#eq:def-conditionnelle" data-reference-type="eqref" data-reference="eq:def-conditionnelle">[eq:def-conditionnelle]</a>
que: $$\label{eq:intersection}
    P(A\cap B ) =  P(A\vert B)\times P(B).$$ Dans le cas où
$\left\{B_i\right\}_{i=1...N}$ forme un systme complet d’évènements, on
en déduit grace à l’équation
<a href="#eq:decomposition-system" data-reference-type="eqref" data-reference="eq:decomposition-system">[eq:decomposition-system]</a>
que: $$\label{eq:decomposition-2}
    P(A) = \sum _{i=1}^N P(A \cap B_i) = \sum _{i=1}^N P(A\vert B_i)P(B_i).$$

Puisque $A\cap B = B\cap A$, on peut déduire de l’équation
<a href="#eq:intersection" data-reference-type="eqref" data-reference="eq:intersection">[eq:intersection]</a>:
$$P(A\cap B) = P(A\vert B)P(B) = P(B\cap A) = P(B\vert A) P(A).$$ De
cette relation, on en déduit le **théorème de Bayès**:
$$P(B\vert A) = \frac{P(A\vert B)P(B)}{P(A)}.$$ Cette relation permet de
relier les probabilités conditionnelles de deux évènements $A$ et $B$.
Si on dispose d’un système complet d’évènements
$\left\{B_i\right\}_{i=1...N}$, on peut utiliser la relation
<a href="#eq:decomposition-2" data-reference-type="eqref" data-reference="eq:decomposition-2">[eq:decomposition-2]</a>
pour écrire la probabilité conditionnelle d’un des évènements $B_i$:
$$P(B_i\vert A) = \frac{P(A\vert B_i)P(B_i)}{\sum _{i=1}^N P(A\vert B_i)P(B_i)}.$$

### Évènements indépendants

L’indépendance entre deux évènements est définie par:
$$\label{eq:independence}
P(A\cap B) = P(A)\times P(B).$$ Cela se traduit aussi par le fait que la
probabilité de $A$ est la même quelque soit le résultat de $B$, soit
$P(A\vert B) = P(A)$.

Lancer de dé Généralement, le résultat de chaque lancer de dé est
indépendant. Ainsi, la probabilité d’obtenir un 6 lors d’un lancer $B$
après avoir déjà obtenu un 6 lors d’un lancer $A$ vaut
$P(B=6\vert A=6) = P(B = 6) = \frac{1}{6}$. En revanche, la probabilité
d’obtenir deux 6 simultanément vaut
$P(A=6\cup B=6) = P(B=6\vert A = 6)\times P(A=6) = P(B=6)\times P(A=6) = \frac{1}{6}\times \frac{1}{6} = \frac{1}{36}$.
