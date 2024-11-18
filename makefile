README = README.md
SCRIPT = guessinggame.sh
all: $(README)
$(README): $(SCRIPT)
	echo "# Projet: Guessing Game" > $(README)
	echo "\nDate et heure d'exécution: $$(date)" >> $(README)
	echo "\nNombre de lignes dans $(SCRIPT): $$(wc -l < $(SCRIPT))" >> $(README)
clean:
	rm -f $(README)
