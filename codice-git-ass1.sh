#VERSIONE 1 ASSIGNMENT TOS

git init
git flow init

git flow feature start feature1
echo "Matricola: 1143643" >> menu.md
git add menu.md
git commit -m "close #1 creato file menu.md"
git flow feature finish -k feature1

git flow feature start feature2
echo "Panino primavera" >> menu.md
echo "Matricola: 1143643" >> primavera.md
echo "pane, mortadella e formaggio, 3 euro" >> primavera.md
git add menu.md primavera.md
git commit -m "close #2 creato file primavera.md e aggiornato menu.md"
git checkout develop

git flow feature start feature3
echo "Panino vegetariano" >> menu.md
echo "Matricola: 1143643" >> vegetariano.md
echo "pane, zucchine e formaggio, 2.50 euro" >> vegetariano.md
git add vegetariano.md menu.md
git commit -m "close #3 creato file vegetariano.md e aggiornato menu.md"
git checkout develop

git flow feature finish -k feature2

git flow feature finish -k feature3

nano menu.md
git add menu.md
git commit -m "risolto il conflitto del file menu.md"

git flow release start versione1
echo "Paninoteca Padovana" >> menu.md
git add menu.md
git commit -m "aggiunta riga al file menu.md"
git checkout develop

git flow feature start feature4
mkdir panini
git checkout develop

git flow release finish versione1

git checkout feature/feature4
mv primavera.md vegetariano.md panini
nano menu.md
git add menu.md panini/primavera.md panini/vegetariano.md
git rm primavera.md vegetariano.md
git commit -m "close #4 aggiornato file menu.md e creata cartella panini"
git flow feature finish -k feature4

nano menu.md
git add menu.md
git commit -m "risolto il conflitto del file menu.md"

git flow feature start feature5
mkdir fritti
touch fritti/vuoto.md
nano menu.md
git add menu.md fritti/vuoto.md
git commit -m "close #5 aggiornato file menu.md e creata cartella fritti"
git flow feature finish -k feature5

git flow feature start feature6
echo "Matricola: 1143643" >> fritti/olive_ascolane.md
echo "olive, manzo, uova e pane, 2 euro" >> fritti/olive_ascolane.md
git add fritti/olive_ascolane.md
git commit -m "close #6 creato file olive_ascolane.md"
git flow feature finish -k feature6

git flow feature start feature7
echo "Matricola: 1143643" >> fritti/arancini.md
echo "pisellini, riso, prosciutto 3 euro" >> fritti/arancini.md
git add fritti/arancini.md
git commit -m "close #7 creato file arancini.md"
git flow feature finish -k feature7

git flow release start versione2

git remote add origin https://github.com/gomitolof/assignment1
git push --all
git push origin --tags
