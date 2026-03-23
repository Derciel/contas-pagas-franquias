# 🚀 Sistema de Análise de Franquias

Sistema completo para análise de **Franquias ATIVAS/INATIVAS** e **Contas a Receber + Pagamentos** com interface Streamlit.

## 📋 Descrição

Este sistema unificado permite:
- 📊 **Análise de franquias** com classificação ATIVAS/INATIVAS
- 💰 **Análise de contas a receber** com dados de pagamentos
- 🎯 **Análise por vendedor** corrigido
- 📈 **Dashboard interativo** com KPIs e gráficos
- 📊 **Relatório Excel** exportável com abas por franquia

## 🎯 Funcionalidades

### Relatório 1: Franquias ATIVAS/INATIVAS
- 🟢 **Franquias ATIVAS:** 752 (62.4%)
- 🔴 **Franquias INATIVAS:** 453 (37.6%)
- 💰 **Faturamento Total:** R$ 19.274.156,27
- 📅 **Período:** 02/09/2024 a 20/03/2026

### Relatório 2: Contas a Receber + Pagamentos
- 📄 **Total de Contas:** 1.402
- 💵 **Valor Total:** R$ 27.160.095,89
- 💰 **Valor Pago:** R$ 19.918.791,35
- ⏳ **Valor Pendente:** R$ 7.241.304,54
- ✅ **Contas Pagas:** 1.165 (83.7%)
- ⚠️ **Contas Vencidas:** 1.381

## 🛠️ Tecnologias

- **Python 3.12+**
- **Streamlit** - Interface web
- **Pandas** - Manipulação de dados
- **Plotly** - Visualizações
- **OpenPyXL** - Exportação Excel

## 📦 Instalação

### 1. Clonar o repositório
```bash
git clone https://github.com/seu-usuario/agente_bot.git
cd agente_bot
```

### 2. Criar ambiente virtual
```bash
python -m venv .venv
source .venv/bin/activate  # Linux/Mac
# ou
.venv\Scripts\activate     # Windows
```

### 3. Instalar dependências
```bash
pip install -r requirements.txt
```

## 🚀 Como Usar

### 1. Execução Local
```bash
# Via script
run_sistema_unificado_final.bat

# Ou manualmente
streamlit run sistema_unificado_final.py --server.port 8526
```

### 2. Acesso
- **URL:** http://localhost:8526
- **Interface:** Completa e funcional

### 3. Upload dos Dados
1. **📊 Relatório 1:** `FATURAMENTO FRANQUIAS.xlsx`
2. **💰 Relatório 2:** `recebimentos_corrigidos_completo.xlsx`
3. **👥 Opcional:** `clientes DGA.xlsx`

### 4. Processamento
- Clique em **"🔄 Processar Dados"**
- Sistema analisa automaticamente
- Exibe resultados completos

## 📁 Estrutura do Projeto

```
Agente_BOT/
├── sistema_unificado_final.py    # Sistema principal
├── run_sistema_unificado_final.bat  # Script de execução
├── requirements.txt              # Dependências
├── README.md                    # Documentação
├── README_DEPLOY.md             # Guia de deploy
├── README_GITHUB.md             # Este arquivo
├── .gitignore                   # Arquivos ignorados
└── .venv/                       # Ambiente virtual
```

## 📊 Relatório Excel Gerado

### Abas Principais:
1. **RESUMO GERAL** - KPIs consolidados
2. **Franquias Resumo** - Análise pivot
3. **Franquias Detalhe** - Resumo por franquia
4. **Franquias Status** - Status de todos os clientes
5. **Contas a Receber** - Dados completos
6. **Contas Resumo** - Estatísticas
7. **Contas por Vendedor** - Análise por vendedor

### Abas por Franquia (até 20):
- **GELA BOCA** - Dados completos
- **GRACCO BURGUER** - Dados completos
- **MATSURI** - Dados completos
- *(Cada franquia com sua aba individual)*

## 🔧 Configuração

### Variáveis de Ambiente
O sistema usa configuração padrão, mas pode ser personalizado:

```python
# Data de corte para classificação ATIVAS/INATIVAS
data_cutoff = pd.Timestamp('2025-11-01')

# Porta do servidor Streamlit
porta_padrao = 8526
```

### Detecção Automática de Colunas
Sistema detecta automaticamente:
- **Valor:** `R$ Valor`, `Valor`, `R$ Total`, etc.
- **Vendedor:** `Vendedor_corrigido`, `Vendedor`, etc.
- **Cliente:** `Nome Fantasia`, `Cliente`, etc.
- **Data:** `Data Vencimento`, `Vencimento`, etc.

## 📈 Visualizações

### Dashboard Principal:
- **KPIs** de franquias e contas
- **Gráficos de pizza** - Status e pagamentos
- **Gráficos de barras** - Top franquias e vendedores
- **Tabelas detalhadas** - Dados completos

### Análises Específicas:
- **Status de franquias** ATIVAS/INATIVAS
- **Performance de pagamentos** por vendedor
- **Valores pendentes** por franquia
- **Taxa de inatividade** por período

## 🔄 Deploy

### Deploy Local
1. Instalar dependências
2. Executar script de inicialização
3. Acessar interface web

### Deploy em Produção
```bash
# Usar Docker (recomendado)
docker build -t sistema-franquias .
docker run -p 8526:8526 sistema-franquias

# Ou usar Streamlit Cloud
# Fazer upload dos arquivos para Streamlit Cloud
```

## 🤝 Contribuição

1. Fork o projeto
2. Criar branch (`git checkout -b feature/nova-funcionalidade`)
3. Commit changes (`git commit -am 'Adiciona nova funcionalidade'`)
4. Push para branch (`git push origin feature/nova-funcionalidade`)
5. Abrir Pull Request

## 📝 Licença

Este projeto está sob licença MIT. Veja [LICENSE](LICENSE) para detalhes.

## 🐛 Issues e Suporte

Para reportar bugs ou solicitar funcionalidades:
1. Abrir issue no GitHub
2. Descrever o problema em detalhes
3. Incluir screenshots se aplicável
4. Fornecer dados de exemplo (se possível)

## 📞 Contato

- **Desenvolvedor:** Seu Nome
- **Email:** seu-email@exemplo.com
- **GitHub:** @seu-usuario

## 🎯 Roadmap

- [ ] Integração com APIs externas
- [ ] Autenticação de usuários
- [ ] Dashboard em tempo real
- [ ] Exportação para outros formatos
- [ ] Versão mobile

---

**Sistema pronto para uso e deploy!** 🚀✨
