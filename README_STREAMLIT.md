# 🚀 Deploy no Streamlit Cloud

Guia completo para deploy do Sistema de Análise de Franquias no Streamlit Cloud.

## 📋 Pré-requisitos

### Conta Streamlit Cloud
- [x] Conta criada em https://share.streamlit.io
- [x] Repositório GitHub conectado
- [x] App criado e configurado

### Repositório GitHub
- [x] Código atualizado no GitHub
- [x] Dependências otimizadas
- [x] Arquivos de deploy prontos

## 🚀 Como Fazer o Deploy

### Método 1: Interface Web (Recomendado)

1. **Acessar Streamlit Cloud**
   - URL: https://share.streamlit.io
   - Login com sua conta

2. **Criar Novo App**
   - Clique em "New app"
   - Selecione "From existing repo"

3. **Configurar App**
   ```
   Repository: Derciel/contas-pagas-franquias
   Branch: main
   Main file path: sistema_unificado_final.py
   Python version: 3.12
   Requirements file: requirements_streamlit.txt
   ```

4. **Deploy**
   - Clique em "Deploy!"
   - Aguarde o processo de build

### Método 2: Streamlit CLI

1. **Instalar Streamlit CLI**
   ```bash
   pip install streamlit
   ```

2. **Fazer Login**
   ```bash
   streamlit login
   ```

3. **Fazer Deploy**
   ```bash
   streamlit deploy sistema_unificado_final.py
   ```

## 📦 Arquivos de Deploy

### requirements_streamlit.txt
```txt
# Dependências mínimas para Streamlit Cloud
streamlit>=1.28.0
pandas>=1.5.0
numpy>=1.21.0
openpyxl>=3.0.0
plotly>=5.0.0
scipy>=1.7.0
altair>=4.2.0
vega_datasets>=0.9.0
```

### requirements_minimal.txt
```txt
# Apenas o essencial
streamlit>=1.28.0
pandas>=1.5.0
numpy>=1.21.0
openpyxl>=3.0.0
plotly>=5.0.0
scipy>=1.7.0
```

## 🔧 Configurações Recomendadas

### App Settings
- **App name:** Sistema de Análise de Franquias
- **URL:** custom-url (opcional)
- **Visibility:** Public/Private
- **Python version:** 3.12

### Advanced Settings
- **Custom port:** 8501 (padrão Streamlit Cloud)
- **Memory:** 1GB mínimo
- **CPU:** 1 core mínimo
- **Timeout:** 300 segundos

## 🚨 Troubleshooting

### Erros Comuns

#### **ModuleNotFoundError: No module named 'altair.vegalite.v4'**
```
Solução: Use requirements_streamlit.txt
Remove altair==4.2.2 se necessário
```

#### **Memory Error**
```
Solução: Aumente memory allocation
Settings > Advanced > Memory > 2GB
```

#### **Build Timeout**
```
Solução: Use requirements_minimal.txt
Remove dependências opcionais
```

#### **Import Error**
```
Solução: Verifique imports no código
Remova bibliotecas não usadas
Use apenas dependências essenciais
```

### Logs de Deploy

#### **Ver Logs**
1. Acesse seu app no Streamlit Cloud
2. Clique em "⋮" (três pontos)
3. Selecione "Settings"
4. Vá para "Logs"

#### **Logs Comuns**
```
INFO: Starting app...
INFO: Installing requirements...
INFO: Building app...
INFO: Deploying...
```

## 📊 Performance no Cloud

### Otimizações
- **Cache:** Desativado para dados dinâmicos
- **Lazy Loading:** Para grandes datasets
- **Memory Management:** Limpeza automática
- **Error Handling:** Captura de exceções

### Limites
- **Upload:** 200MB por arquivo
- **Memory:** 1-4GB dependendo do plano
- **CPU:** 1-2 cores dependendo do plano
- **Concurrent Users:** Ilimitado

## 🔄 Automação de Deploy

### GitHub Actions (Opcional)

```yaml
# .github/workflows/streamlit.yml
name: Deploy to Streamlit

on:
  push:
    branches: [ main ]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: Setup Python
      uses: actions/setup-python@v2
      with:
        python-version: 3.12
    - name: Install dependencies
      run: |
        pip install -r requirements_streamlit.txt
    - name: Deploy to Streamlit
      run: |
        streamlit deploy sistema_unificado_final.py
```

## 📱 Acessando o App

### URL Padrão
```
https://seu-usuario-contas-pagas-franquias.streamlit.app
```

### URL Customizada
```
https://sistema-franquias.seu-dominio.com
```

## 🎯 Melhores Práticas

### Para Deploy Sucesso
1. **Teste localmente** antes do deploy
2. **Use requirements_streamlit.txt** para Cloud
3. **Monitore logs** após deploy
4. **Otimize performance** para produção
5. **Configure backup** de dados

### Manutenção
1. **Updates regulares** do código
2. **Monitoramento** de performance
3. **Backup** do repositório
4. **Documentação** atualizada
5. **Testes** automatizados

## 📞 Suporte

### Streamlit Cloud
- **Docs:** https://docs.streamlit.io
- **Community:** https://discuss.streamlit.io
- **GitHub:** https://github.com/streamlit/streamlit

### Projeto
- **Repositório:** https://github.com/Derciel/contas-pagas-franquias
- **Issues:** https://github.com/Derciel/contas-pagas-franquias/issues
- **Wiki:** https://github.com/Derciel/contas-pagas-franquias/wiki

---

## 🚀 Deploy Rápido

### 1-Click Deploy
```bash
# Clone o repositório
git clone https://github.com/Derciel/contas-pagas-franquias.git

# Acesse Streamlit Cloud
# https://share.streamlit.io

# Configure o deploy
# Repository: Derciel/contas-pagas-franquias
# Branch: main
# Main file: sistema_unificado_final.py
# Requirements: requirements_streamlit.txt

# Deploy!
```

**Sistema pronto para Streamlit Cloud!** 🚀✨
