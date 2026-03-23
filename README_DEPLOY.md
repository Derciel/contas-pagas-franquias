# 🚀 Sistema Unificado Final - Deploy

## 📋 Descrição

Sistema unificado para análise de **Franquias ATIVAS/INATIVAS** e **Contas a Receber + Clientes**.

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

## 📁 Arquivos Necessários

### Para Deploy:
- ✅ `sistema_unificado_final.py` - Sistema principal
- ✅ `run_sistema_unificado_final.bat` - Script de execução
- ✅ `requirements.txt` - Dependências
- ✅ `README.md` - Documentação

### Dados de Entrada:
- 📊 `FATURAMENTO FRANQUIAS.xlsx` - Relatório 1
- 💰 `recebimentos_corrigidos_completo.xlsx` - Relatório 2
- 👥 `clientes DGA.xlsx` - Opcional

## 🚀 Como Executar

### 1. Instalação
```bash
pip install -r requirements.txt
```

### 2. Execução
```bash
# Via script
run_sistema_unificado_final.bat

# Ou manualmente
streamlit run sistema_unificado_final.py --server.port 8526
```

### 3. Acesso
- **URL:** http://localhost:8526
- **Status:** 🟢 Online

## 📊 Estrutura do Sistema

### Upload de Arquivos:
1. **📊 Relatório 1:** Faturamento Franquias
2. **💰 Relatório 2:** Contas a Receber
3. **👥 Dados de Clientes:** Opcional

### Processamento:
1. Clique em **"🔄 Processar Dados"**
2. Sistema detecta colunas automaticamente
3. Analisa ambos os relatórios
4. Exibe resultados unificados

### Visualização:
- **Dashboard:** KPIs e gráficos
- **Dados:** Tabelas configuráveis
- **Relatórios:** Download Excel completo

## 🔧 Detecção Automática de Colunas

### Contas a Receber:
- **Valor:** `R$ Valor`, `Valor`, `R$ Total`, `Total`
- **Cliente:** `Nome Fantasia`, `Cliente`, `Razão Social_cliente`
- **Vencimento:** `Data Vencimento`, `Vencimento`, `Dt Vencimento`

### Franquias:
- **Data:** `Data Emissao`
- **Cliente:** `Cliente ID`, `Cliente Faturamento`
- **Franquia:** `Franquias`, `Nome Fantasia`

## 📈 Relatório Excel Gerado

### Abas Principais:
1. 📊 **RESUMO GERAL** - KPIs unificados
2. 🏢 **Franquias Resumo** - Análise pivot ATIVAS/INATIVAS
3. 📋 **Franquias Detalhe** - Dados detalhados
4. 👥 **Franquias Status** - Relação completa
5. 💰 **Contas a Receber** - Dados completos
6. 📊 **Contas Resumo** - Estatísticas das contas
7. 👥 **Dados Clientes** - Se carregado
8. 📊 **Dados Brutos** - Faturamento e contas

## 🎨 Interface

### Sidebar:
- 📁 **Upload de Arquivos** - Centralizado
- 👁️ **Configurações** - Dinâmicas
- 🔍 **Filtros** - Inteligentes
- 📥 **Exportação** - Completa

### Dashboard:
- 📊 **KPIs** - Franquias + Contas
- 📈 **Gráficos** - Separados por relatório
- 📋 **Tabelas** - Configuráveis

## 🔒 Segurança

- ✅ Sem dados sensíveis expostos
- ✅ Processamento local
- ✅ Upload controlado
- ✅ Validação de arquivos

## 📱 Responsividade

- ✅ Layout adaptável
- ✅ Mobile-friendly
- ✅ Interface moderna
- ✅ Cores profissionais

## 🚀 Performance

- ✅ Processamento rápido
- ✅ Memória otimizada
- ✅ Cache inteligente
- ✅ Sem loops infinitos

## 📞 Suporte

Em caso de dúvidas:
1. Verifique os arquivos de dados
2. Confirme o formato Excel (.xlsx)
3. Use o script de execução correto
4. Acesse a URL correta

---

**Sistema pronto para deploy!** 🎯✨
