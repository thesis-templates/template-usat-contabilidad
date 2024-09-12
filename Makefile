all:
	@echo "main [option]"
	@echo "  doc  : Create doc.pdf"
	@echo "  pkgs : Install packages in Ubuntu"

pkgs:
	sudo apt update -y
	sudo apt install -y $(shell cat apt-packages.txt)

doc: data
	pandoc \
	--filter pandoc-citeproc \
	--filter pandoc-plantuml \
	-o doc.pdf \
	./meta.yml \
	./thesis/thesis.md \
	./thesis/resumen.md \
	./thesis/introduccion.md \
	./thesis/revision/antecedentes.md \
	./thesis/revision/bases-teoricas.md \
	./thesis/metodos/tipo-nivel.md \
	./thesis/metodos/diseno.md \
	./thesis/metodos/poblacion.md \
	./thesis/metodos/criterios.md \
	./thesis/metodos/variables.md \
	./thesis/metodos/tecnicas.md \
	./thesis/metodos/procedimientos.md \
	./thesis/metodos/plan-analisis.md \
	./thesis/metodos/consistencia.md \
	./thesis/resultados/resultados.md \
	./thesis/resultados/discusion.md \
	./thesis/conclusiones.md \
	./thesis/referencias.md \
	./thesis/anexos/instrumentos.md \
	./thesis/anexos/tablas.md

data:
	@python3 src
