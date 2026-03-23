# 🚀 Sistema de Análise de Franquias

Sistema completo para análise de **Franquias ATIVAS/INATIVAS** e **Contas a Receber + Pagamentos** com interface Streamlit profissional.

## 📋 Visão Geral

Este sistema unificado oferece uma solução completa para análise de dados de franquias e contas a receber, com foco em:

- 📊 **Análise de status de franquias** (ativas/inativas)
- 💰 **Análise detalhada de pagamentos** por vendedor
- 🎯 **Dashboard interativo** com KPIs em tempo real
- 📈 **Visualizações profissionais** com gráficos dinâmicos
- 📊 **Relatório Excel completo** com abas individuais por franquia

## 🎯 Funcionalidades Principais

### Relatório 1: Franquias ATIVAS/INATIVAS
- 🟢 **Franquias ATIVAS:** 752 (62.4%)
- 🔴 **Franquias INATIVAS:** 453 (37.6%)
- 💰 **Faturamento Total:** R$ 19.274.156,27
- 📅 **Período de Análise:** 02/09/2024 a 20/03/2026
- 🏢 **Análise por franquia** com dados detalhados
- 📈 **Classificação automática** baseada em data de corte

### Relatório 2: Contas a Receber + Pagamentos
- 📄 **Total de Contas:** 1.402
- 💵 **Valor Total:** R$ 27.160.095,89
- 💰 **Valor Pago:** R$ 19.918.791,35
- ⏳ **Valor Pendente:** R$ 7.241.304,54
- ✅ **Contas Pagas:** 1.165 (83.7%)
- ⚠️ **Contas Vencidas:** 1.381
- 🎯 **Análise por vendedor corrigido**

## 🛠️ Stack Tecnológico

- **Python 3.12+** - Linguagem principal
- **Streamlit** - Interface web interativa
- **Pandas** - Manipulação e análise de dados
- **Plotly** - Visualizações interativas
- **OpenPyXL** - Geração de relatórios Excel
- **NumPy** - Computação numérica

## 🚀 Instalação e Configuração

### Pré-requisitos
- Python 3.12 ou superior
- pip (gerenciador de pacotes Python)

### Passo 1: Clonar o Repositório
```bash
git clone https://github.com/Derciel/contas-pagas-franquias.git
cd contas-pagas-franquias
```

### Passo 2: Criar Ambiente Virtual
```bash
# Windows
python -m venv .venv
.venv\Scripts\activate

# Linux/Mac
python -m venv .venv
source .venv/bin/activate
```

### Passo 3: Instalar Dependências
```bash
pip install -r requirements.txt
```

## 🎮 Como Usar o Sistema

### 1. Iniciar o Sistema
```bash
# Via script (recomendado)
run_sistema_unificado_final.bat

# Ou manualmente
streamlit run sistema_unificado_final.py --server.port 8526
```

### 2. Acessar a Interface
- **URL Local:** http://localhost:8526
- **URL Rede:** http://SEU_IP:8526

### 3. Upload dos Dados
Na sidebar do sistema:

1. **📊 Relatório 1:** Upload do arquivo `FATURAMENTO FRANQUIAS.xlsx`
2. **💰 Relatório 2:** Upload do arquivo `recebimentos_corrigidos_completo.xlsx`
3. **👥 Opcional:** Upload do arquivo `clientes DGA.xlsx`

### 4. Processar e Analisar
- Clique em **"🔄 Processar Dados"**
- Aguarde o processamento automático
- Visualize os resultados no dashboard

## 📊 Estrutura do Relatório Excel

### Abas Principais
1. **RESUMO GERAL** - KPIs consolidados e métricas principais
2. **Franquias Resumo** - Análise pivot table por franquia
3. **Franquias Detalhe** - Informações detalhadas por franquia
4. **Franquias Status** - Status ATIVO/INATIVO de todos os clientes
5. **Contas a Receber** - Dados completos das contas
6. **Contas Resumo** - Estatísticas e totais
7. **Contas por Vendedor** - Análise por vendedor corrigido
8. **Dados Clientes** - Informações dos clientes (se disponível)
9. **Dados Faturamento** - Dados brutos de faturamento
10. **Dados Contas Receber** - Dados brutos das contas

### Abas Individuais por Franquia (até 20)
- **GELA BOCA** - Dados completos e status
- **GRACCO BURGUER** - Dados completos e status
- **MATSURI** - Dados completos e status
- *(Cada franquia com sua aba individual contendo todos os dados)*

## 🎨 Interface do Sistema

### Dashboard Principal
- **KPIs em tempo real** de franquias e contas
- **Gráficos interativos** com filtros dinâmicos
- **Tabelas detalhadas** com opção de exportação
- **Abas organizadas** para diferentes visualizações

### Funcionalidades da Sidebar
- **📁 Upload de Arquivos** - Arrastar e soltar
- **👁️ Configurações de Visualização** - Personalizar dashboard
- **🔍 Filtros Dinâmicos** - Por status, valor, data
- **📥 Exportação** - Download em múltiplos formatos

### Visualizações Disponíveis
- **Gráficos de Pizza** - Status e proporções
- **Gráficos de Barras** - Top franquias e vendedores
- **Gráficos de Linha** - Evolução temporal
- **Tabelas Interativas** - Ordenação e filtros

## 🔧 Configurações Avançadas

### Detecção Automática de Colunas
O sistema detecta automaticamente:

#### Para Contas a Receber:
- **Valor:** `R$ Valor`, `Valor`, `R$ Total`, `Total`, etc.
- **Valor Pago:** `R$ Total Pago`, `Valor Pago`, `Total Pago`, etc.
- **Vendedor:** `Vendedor_corrigido`, `Vendedor`, `Vendedor_cliente`, etc.
- **Cliente:** `Nome Fantasia`, `Cliente`, `Razão Social_cliente`, etc.
- **Data Vencimento:** `Data Vencimento`, `Vencimento`, `Dt Vencimento`, etc.

#### Para Faturamento:
- **Data:** `Data Emissao`, `Data Emissão`, `Emissão`
- **Cliente:** `Cliente ID`, `Cliente Faturamento`
- **Franquia:** `Franquias`, `Nome Fantasia`
- **Valor:** `R$ Total`, `Total`, `Valor`

### Parâmetros Configuráveis
```python
# Data de corte para classificação ATIVAS/INATIVAS
data_cutoff = pd.Timestamp('2025-11-01')

# Porta padrão do servidor
porta_padrao = 8526

# Limite de abas por franquia
max_abas_franquias = 20
```

## 📈 Métricas e Indicadores

### KPIs de Franquias
- **Taxa de Atividade:** Percentual de franquias ativas
- **Faturamento por Franquia:** Ranking de performance
- **Distribuição Geográfica:** Análise por região
- **Evolução Temporal:** Tendências de atividade

### KPIs de Pagamentos
- **Taxa de Pagamento:** Percentual de contas pagas
- **Valor Pendente:** Total a receber
- **Performance por Vendedor:** Ranking de eficiência
- **Idade das Contas:** Tempo em aberto

### Alertas Automáticos
- **Franquias Inativas:** Acima de 90 dias
- **Contas Vencidas:** Mais de 30 dias
- **Valores Elevados:** Acima de R$ 10.000
- **Vendedores Críticos:** Baixa performance

## 🔄 Processo de Deploy

### Deploy Local
1. Clonar o repositório
2. Instalar dependências
3. Executar o sistema
4. Acessar interface web

### Deploy com Docker (Recomendado)
```bash
# 1. Clonar repositório
git clone https://github.com/Derciel/contas-pagas-franquias.git
cd contas-pagas-franquias

# 2. Build e executar com docker-compose
docker-compose up -d

# 3. Acessar aplicação
# http://localhost:8526
```

### Deploy Manual com Docker
```bash
# 1. Build da imagem
docker build -t sistema-franquias .

# 2. Executar container
docker run -p 8526:8526 \
  -v $(pwd)/data:/app/data \
  -v $(pwd)/logs:/app/logs \
  sistema-franquias
```

### Deploy em Produção
```bash
# Com nginx (produção)
docker-compose --profile production up -d

# Sem nginx (desenvolvimento)
docker-compose up -d
```

### Variáveis de Ambiente
```bash
# Configurações opcionais
STREAMLIT_SERVER_PORT=8526
STREAMLIT_SERVER_HEADLESS=true
PYTHONPATH=/app
```

## 🤝 Contribuição para o Projeto

### Como Contribuir
1. **Fork** o repositório
2. **Branch** para sua feature (`git checkout -b feature/nova-funcionalidade`)
3. **Commit** suas mudanças (`git commit -m 'Adiciona nova funcionalidade'`)
4. **Push** para o branch (`git push origin feature/nova-funcionalidade`)
5. **Pull Request** descrevendo as mudanças

### Diretrizes de Contribuição
- Seguir padrões de código PEP 8
- Documentar funções e classes
- Adicionar testes quando aplicável
- Manter compatibilidade com Python 3.12+

## 🐛 Suporte e Troubleshooting

### Problemas Comuns

#### **Erro: "Arquivo não encontrado"**
- Verifique se os arquivos estão no formato correto (.xlsx)
- Confirme os nomes das colunas nos arquivos
- Use a detecção automática de colunas

#### **Erro: "Porta em uso"**
- Mude a porta: `streamlit run sistema_unificado_final.py --server.port 8527`
- Ou feche outros processos na porta 8526

#### **Erro: "Memória insuficiente"**
- Reduza o tamanho dos arquivos de entrada
- Use filtros para processar dados em lotes
- Aumente a memória disponível no ambiente

### Como Solicitar Suporte
1. **Abrir Issue** no GitHub
2. **Descrever o problema** em detalhes
3. **Incluir screenshots** se aplicável
4. **Fornecer dados de exemplo** (sem informações sensíveis)
5. **Mencionar ambiente** (Windows/Linux/Mac, Python version)

## 📝 Histórico de Atualizações

### v1.0.0 (23/03/2026)
- ✅ Sistema inicial completo
- ✅ Análise de franquias ATIVAS/INATIVAS
- ✅ Análise de contas a receber com pagamentos
- ✅ Dashboard interativo com KPIs
- ✅ Relatório Excel com abas por franquia
- ✅ Detecção automática de colunas
- ✅ Interface profissional e responsiva
- ✅ Documentação completa
- ✅ Deploy para GitHub

## 📞 Contato e Informações

### Desenvolvedor
- **Nome:** Derciel Alves
- **GitHub:** [@Derciel](https://github.com/Derciel)
- **Repositório:** [contas-pagas-franquias](https://github.com/Derciel/contas-pagas-franquias)

### Licença
Este projeto está licenciado sob a **MIT License** - veja o arquivo [LICENSE](LICENSE) para detalhes.

### Agradecimentos
- **Streamlit** - Framework de interface web
- **Pandas** - Biblioteca de manipulação de dados
- **Plotly** - Biblioteca de visualizações
- **Comunidade Python** - Suporte e documentação

---

## 🚀 Comece a Usar Agora!

### Rápido Início
```bash
# 1. Clone o repositório
git clone https://github.com/Derciel/contas-pagas-franquias.git

# 2. Entre na pasta
cd contas-pagas-franquias

# 3. Instale dependências
pip install -r requirements.txt

# 4. Execute o sistema
streamlit run sistema_unificado_final.py

# 5. Acesse no navegador
# http://localhost:8526
```

**Sistema pronto para análise profissional de franquias!** 🎯✨
