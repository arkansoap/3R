# Bibliographie : 

- VISUALIZATION OF COVARIANCE AND CROSS-COVARIANCE FIELDS, Chao Yang,1 Dongbin Xiu,2 & Robert M. Kirby
- Visualizing Distributions of Covariance Matrices, Tomoki Tokudaa, Ben Goodrichb, Iven Van Mechelena, Andrew Gelmanb, Francis Tuerlinckxa

- lister articles + résumé 

# package et fonctions r 

[liste de package](https://analyticsindiamag.com/top-10-r-packages-for-data-visualisation/) for data viz in R

[here](https://mode.com/blog/r-data-visualization-packages/) another list 

- faire liste et def package 

# Etapes : 

1. Recherche
    - recherche biblio
    - revue de la littérature
    - analyse économique et question de reherche
2. Réalisation
3. Restitution

# Notes séances avec Mr Bousquet: 

## Première séance :

- attention à la rédaction et au plan (voir docs rédaction)
- visualisation en économétrie 
- recensqer les packages ds r pr visualisation n/etat des lieux data viz !!
- partir de la représentation de la covariance 

    1. améliorer représentation covariance 
    2. utiliser résultat comme un moyen pr déterminer des résultats économiques / visualiser méthodes économiques / utiliser cela pour représenter d'autres indicatuers (rho, r², ...)
    3. utiliser résultats pour test économiques / test non linéarité 

    pente estimée par mco s ecrit comme un moyenne de toute le pentes entre tous les poits ( etudier distribution sytitistique de toutes le pentes entre ts les points) /représentation covariance comme sous bassement de représentation d autres indicateurs.

représentation du rectangle qui lie deux lien est une représentation de la covariance . En construisant tous les rectangles du nuage de points et qu on fait la moyenne de ces surfaces, on a exactement la covariance. (à améliorer)

Forme moyenne de tous les rectangles ??? avec surface rectangle moyen (need 1 donnée pr surface avec carré)

carré vert > var de x
carré bleu > variance y 
rectangle > covariance 
1 des cotés du rectangle fixé à valeur ecart type de sigma x / haiteur est rho(coeff corrélation linéaire) X sigma(y)
Que nous apporte ce dessin? 

variance expliquée de y > petit carré bleu 
représentation R²

schéma :
- représentation orthogonale (autre que mcp )
- améliorer représentation de covariance 
- généraliser avec reg lineaire multiple (plusieurs variables explicatives)
    - coeff corrélation partielle, coeff de détermination au lieu de r²

représentation de la décomposition de la variance (X1 explique en partie Y, puis part de X2, .... )
modèles p.600 ds woodridge

départ, article de li > impasse ds représentation en triangle

test : faire varier nb d 'observations 

## Deuxième séance 

- pente est l élément principal (variation y / variation X)

### covariance representation

- Esp mathématique du rectangle entre 2 points = 2 cov(x,y) si obs independantes entre elles (article HAYES)
- superposition des rectangles ( pas de sens de garder que triangle)
- formule de la covariance plus explicite selon mr bousquet avec N(N-1)/2
- améliorer net cov rectangle 

### représentation regression (schéma photos)

### corrélaion partielle

- corrélation n'est pas transitive

# En vrac 

## Error ellipse

a link to definition and way to draw [error elipse](https://www.visiondummy.com/2014/04/draw-error-ellipse-representing-covariance-matrix/)

## Different way to explain covariance
An [article](https://stats.seandolinar.com/covariance-different-ways-to-explain/) about differents ways to represents covariance

## covariance as signed area of rectangles
- [link to an article](https://www.davidchudzicki.com/posts/covariance-as-signed-area-of-rectangles/)

- [a good stack exchange conversation](https://stats.stackexchange.com/questions/18058/how-would-you-explain-covariance-to-someone-who-understands-only-the-mean)

# Formules et définitions utiles : 

## Notations : 

$$S_{xx} = \sum_{i=1}^n(x_i -\bar{x})^2 $$
$$S_{yy} = \sum_{i=1}^n(y_i -\bar{y})^2 $$
$$S_{xy} = \sum_{i=1}^n(x_i -\bar{x})(y_i -\bar{y}) $$

## simple linear regression model 

$$y_i = \beta_0 + \beta_1x_i +  \epsilon_i$$ 
where $\epsilon_i$ is te error or deviation of $y_i$ from the line $\beta_0 + \beta_1x_i$

### Ordinary least square 

We need to find the values of $\beta_0$ and $\beta_1$ that minimize the criterion : 
$$S = \sum_{i=1}^n \epsilon_i^2 = \sum_{i=1}^n (y_i - (\beta_0 + \beta_1x_i))^2$$

Minimize this sum gives :

$$\hat{\beta_0}= \bar{y} - \hat{\beta_1}\bar{x}$$
$$\hat{\beta_1}= \frac{\sum_{i=1}^n(x_i -\bar{x})(y_i -\bar{y})}{\sum_{i=1}^n(x_i -\bar{x})^2}$$

estimated simple linear regression model :

$$y_i = \hat{\beta_0} + \hat{\beta_1x_i} +  e_i$$ 

from which we can calculate a few additionnal quantities :

- $\hat{y_i} = \hat{\beta_0} + \hat{\beta_1x_i}$ ; $\hat{y_i}$ is the **predicted value** (or predicted fit) of y for the $i^{th}$ observation in the sample.

- $e_i=y_i -\hat{y_i}$ ; is the **observed error** (or residual) for the $i^{th}$ observation in the sample.

- $SSE = \sum_{i=1}^n (y_i -\hat{y_i})^2$ ; is the **sum of squared observed errors** for all observations in a sample of size $n$

### Measuring overall variation from the sample line

- $MSE = \frac{SSE}{n-p}$ , where $p$ is the number of parametrers of the regression equation. $p=2$ for regression with only one variable. 

- $s = RMSE = \sqrt{(MSE)}$

- $SSTO=\sum_{i=1}^n (y_i -\bar{y_i})^2$

- coefficient of determination :

    $R^2 = \frac{SSTO-SSE}{SSTO} = \frac{SSR}{SSTO}$ is the proportion of variation in $y$ that is explained by $x$.

    List the default of $R^2$

### COVARIANCE VS. CORRELATION

- Both covariance and correlation measure the relationship and the dependency between two variables.
- Covariance indicates the direction of the linear relationship between variables.
- Correlation measures both the strength and direction of the linear relationship between two variables.
- Correlation values are standardized.
- Covariance values are not standardized.

## Pearson correlation coefficient 

$$\rho=\frac{S_{xy}}{\sqrt{S_{xx}S_{yy}}}$$

The Pearson correlation coecient is a bounded index (i.e., $-1 \leq \rho \leq 1$) that provides a unitless measure for the strength and direction of the association between two variables.

## Spearman's rank correlation coefficient 

measures the association based on the ranks of the variables.

$$\hat{\theta}=\frac{\sum_{i=1}^n(R_i-\bar{R}(S_i-\bar{S}))}{\sqrt{\sum_{i=1}^n(R_i-\bar{R})^2\sum_{i=1}^n(S_i-\bar{S})^2}}$$

where $R_i$ and $S_i$ are the rank of the $x_i$ and $y_i$ values, respectively.

Note that this is just the estimated Pearson's correlation coeffcient, but the values of the variables have been replaced by their respective ranks.

## Covariance:

> "A covariance refers to the measure of how two random variables will change when they are compared to each other."

> "The sign of the covariance therefore shows the tendency in the linear relationship between the variables. The magnitude of the covariance is not easy to interpret because it is not normalized and hence depends on the magnitudes of the variables". 

> "The normalized version of the covariance, the correlation coefficient, however, shows by its magnitude the strength of the linear relation."

- Variance vs. Covariance: 

    Variance and covariance are mathematical terms frequently used in statistics and probability theory. Variance refers to the spread of a data set around its mean value, while a covariance refers to the measure of the directional relationship between two random variables.

- Classical formula of variance  : 

$$\sigma^2_x=\frac{1}{n}\sum_{x=1}^{n}(x_i - \bar{x})^2 = \frac{1}{n}\sum_{x=1}^{n}x_i^2 - \bar{x}^2 $$

- Hefferman(1988) variance formula rewrote : 

$$\sigma^2_x= \frac{1}{n(n-1)}\sum_{i=1}^{n-1}\sum_{j>i}^{n}(x_i-x_j)^2$$

- covariance formula :

$$cov(X,Y) = \frac{1}{n-1}\sum_{i=1}^{n}(x_i - \bar{x})(y_i - \bar{y}) $$

- hefferman covariance : 

$$cov(X,Y)= \frac{2}{n(n-1)}\sum_{i=1}^{n-1}\sum_{j>i}^{n}\frac{1}{2}(x_i-x_j)(y_i - y_j)$$

Geometrically, $\frac{1}{2}(x_i-x_j)(y_i - y_j)$ is ±1 times the area right-triangle formed with the difference vector $(x_i — x_j, y_j)$ as its hypotenuse, where negatively sloped difference tors incur a $(—1)$ sign and positively sloped difference vectors take a $(+1)$ sign.

- covariance et covariance empirique !?

# Proposition de plan (mr bousquet)

1. La covariance

    a. Définition littéraire usuelle

    b. Définitions mathématiques usuelle et alternatives

    c. Représentation graphique

    d. Annexes 

        1) Proof upper limit for cov   cov(x,y)<sxsy  

        2) equivalent expressions of covariance 

        3) Bessel’s correction unbiaised formulae for covariance

2. La corrélation

    a. Pearson

    b. Autres

    c. Annexes 

        1) trivial from previous annexe -1<=rho<=1.

3. Diagramme de régression et représentation du coefficient de détermination

    a. OLS avec deux variables

        i. Schéma de base

    b. OLS avec 3 variables

        i. La non transitivité de la corrélation

        ii. Partialing out in multiple regression

        iii. Généralisation du schéma de base  vu en  3.a

        iv. Annexe la représentation usuelle par les diagrammes de VENN

    c. OLS pour plus de 3 variables

        i.     Généralisation du schéma cas 3.b

        ii.     Rappel du théorème de Frisch-Waugh-Lovell

        iii.     Annexes inverse de matrices partitionnées

4. Autres diagrammes de régression OLS

    a. Modèle à erreur sur les variables

    b. Variables instrumentales ?

5. Autres diagrammes de méthodes de régression


    a. Least squares rectangles or geometric mean regression

    b. Regression oblique

    c. Régression orthogonale ?

6. Tests de non linéarité

    a. Simulations based on pairwise slopes

    b. Proof of a new non parametrics tests?

    c. Annexe loi de Cauchy et limites (somme) vers  Loi normale

7. Liste de tous les packages R concernant la visualisation en économétrie

8. Références

    a. Visualisation de la covariance

    b. Le R2

# transcription scan mr bousquet 




  