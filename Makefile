# Makefile para o Sistema de Análise de Franquias

.PHONY: help install install-dev run test clean build docker-build docker-run docker-stop docker-clean

# Variáveis
PYTHON := python3
VENV := .venv
PORT := 8526

help:		## Exibe ajuda
	@echo "Sistema de Análise de Franquias - Makefile"
	@echo ""
	@echo "Comandos disponíveis:"
	@echo "  install     - Instala dependências e cria ambiente virtual"
	@echo "  install-dev - Instala dependências de desenvolvimento"
	@echo "  run         - Executa o sistema"
	@echo "  test        - Executa testes"
	@echo "  clean       - Limpa arquivos temporários"
	@echo "  build       - Build do projeto"
	@echo "  docker-build - Build da imagem Docker"
	@echo "  docker-run  - Executa container Docker"
	@echo "  docker-stop  - Para container Docker"
	@echo "  docker-clean - Limpa imagens e containers"
	@echo ""

install:	## Instalação do sistema
	@if [ ! -d "$(VENV)" ]; then \
		$(PYTHON) -m venv $(VENV); \
	fi
	@echo "Ativando ambiente virtual..."
	@./$(VENV)/bin/activate
	@echo "Instalando dependências..."
	@pip install -r requirements.txt
	@echo "Instalação concluída!"
	@echo "Execute 'make run' para iniciar o sistema"

install-dev:	## Instalação para desenvolvimento
	@if [ ! -d "$(VENV)" ]; then \
		$(PYTHON) -m venv $(VENV); \
	fi
	@echo "Ativando ambiente virtual..."
	@./$(VENV)/bin/activate
	@echo "Instalando dependências de desenvolvimento..."
	@pip install -r requirements.txt
	@echo "Instalação concluída!"
	@echo "Execute 'make run' para iniciar o sistema"

run:	## Executa o sistema
	@if [ -d "$(VENV)" ]; then \
		@echo "Ativando ambiente virtual..."; \
		./$(VENV)/bin/activate; \
	fi
	@echo "Iniciando o sistema na porta $(PORT)..."
	@streamlit run sistema_unificado_final.py --server.port=$(PORT)

test:	## Executa testes
	@if [ -d "$(VENV)" ]; then \
		@echo "Ativando ambiente virtual..."; \
		./$(VENV)/bin/activate; \
	fi
	@echo "Executando testes..."
	@echo "Nenhum teste configurado ainda"

clean:	## Limpa arquivos temporários
	@echo "Limpando arquivos temporários..."
	@find . -type f -name "*.pyc" -delete
	@find . -type d -name "__pycache__" -exec rm -rf {} +
	@find . -type d -name "*.egg-info" -exec rm -rf {} +
	@find . -type d -name "dist" -exec rm -rf {} +
	@find . -type d -name "build" -exec rm -rf {} +
	@echo "Limpeza concluída!"

build:	## Build do projeto
	@echo "Build do projeto..."
	@$(PYTHON) -m build
	@echo "Build concluído!"

docker-build:	## Build da imagem Docker
	@echo "Build da imagem Docker..."
	docker build -t sistema-franquias .
	@echo "Build concluído!"

docker-run:	## Executa container Docker
	@echo "Executando container Docker..."
	docker run -p $(PORT):$(PORT) \
		-v $(PWD)/data:/app/data \
		-v $(PWD)/logs:/app/logs \
		--name sistema-franquias \
		sistema-franquias

docker-stop:	## Para container Docker
	@echo "Parando container Docker..."
	docker stop sistema-franquias || true
	docker rm sistema-franquias || true
	@echo "Container parado!"

docker-clean:	## Limpa imagens e containers Docker
	@echo "Limpando imagens e containers Docker..."
	docker system prune -f
	@echo "Limpeza concluída!"

# Comandos de deploy
deploy-dev:	## Deploy em desenvolvimento
	make install-dev
	make run

deploy-prod:	## Deploy em produção
	docker-compose up -d

deploy-local:	## Deploy local
	make install
	make run

# Verificação de dependências
check-deps:
	@echo "Verificando dependências..."
	@$(PYTHON) -c "import pandas, streamlit, plotly; print('✅ Dependências OK')" || echo "❌ Dependências faltando"

# Formatação de código
format:
	@echo "Formatando código..."
	@black --line-length 88 sistema_unificado_final.py
	@echo "Código formatado!"

# Análise estática
lint:
	@echo "Analisando código..."
	@flake8 sistema_unificado_final.py --max-line-length=88 || echo "⚠️ Alertas de estilo encontradas"

# Segurança
security:
	@echo "Verificando segurança..."
	@bandit -r sistema_unificado_final.py || echo "⚠️ Vulnerabilidades encontradas"

# Documentação
docs:
	@echo "Gerando documentação..."
	@$(PYTHON) -c "import sistema_unificado_final; help(sistema_unificado_final)" > HELP.txt
	@echo "Documentação gerada em HELP.txt"

# Package completo
package:	## Cria pacote para distribuição
	@echo "Criando pacote..."
	@$(PYTHON) setup.py sdist bdist_wheel
	@echo "Pacote criado em dist/"

# Instalação local do pacote
install-local:	## Instala pacote localmente
	@echo "Instalando pacote localmente..."
	@pip install -e .
	@echo "Pacote instalado!"
