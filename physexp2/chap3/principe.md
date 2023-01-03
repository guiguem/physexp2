# Principe de l'ajustement

Supposons que nous avons collecté des données dans une expérience (par exemple, le temps de chute d'objet $t$ en fonction de la hauteur du lâcher $z$).
Les lois de la physique nous donne une relation entre les quantités mesurées (par exemple, la seconde loi de Newton donne $z = \frac{1}{2}t^2$) possédant des paramètres (ici, $g$).
L'objectif de l'ajustement de modèle est de trouver les valeurs de paramètres pour lesquelles le modèle et les données sont le plus en accord.
Pour cela, on va se donner une fonction qui quantifie le désaccord entre les données et le modèle: on va alors trouver les valeurs des paramètres du modèle qui minimise cette quantité.

A priori, il serait possible d'utiliser n'importe quelle fonction des données et des paramètres du modèle et tenter de la minimiser.
Cependant certaines fonctions sont plus convenables puisqu'elles correspondent à des réalités probabilistes selon le type de données que l'on a.
Parmi ces fonctions, on peut considérer la fonction $R^2$ pour des données dont nous n'avons pas estimé les erreurs (section [](content:fit-no-error)) et la plus connue fonction $\chi ^2$ (section [](content:fit-with-error)).
