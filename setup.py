#!/usr/bin/env python3
"""
Setup script para o Sistema de Análise de Franquias
"""

from setuptools import setup, find_packages
import os

# Ler versão do pyproject.toml
def get_version():
    try:
        import tomllib
        with open("pyproject.toml", "r") as f:
                data = tomllib.load(f)
                return data["project"]["version"]
    except:
        return "1.0.0"

# Ler dependências
def get_requirements():
    try:
        import tomllib
        with open("pyproject.toml", "r") as f:
                data = tomllib.load(f)
                return data["project"]["dependencies"]
    except:
        return [
            "pandas>=1.5.0",
            "openpyxl>=3.0.0",
            "xlrd>=2.0.0",
            "numpy>=1.21.0",
            "matplotlib>=3.5.0",
            "seaborn>=0.11.0",
            "plotly>=5.0.0",
            "scipy>=1.7.0",
            "scikit-learn>=1.0.0",
            "streamlit>=1.28.0",
            "streamlit-aggrid>=0.3.0",
            "openai>=1.0.0",
            "flask>=2.0.0",
            "flask-cors>=4.0.0",
            "altair>=4.2.0",
            "vega_datasets>=0.9.0",
            "pillow>=8.0.0",
            "zlib>=1.0.0",
        ]

# Ler descrição
def get_long_description():
    try:
        with open("README.md", "r", encoding="utf-8") as f:
                return f.read()
    except:
        return "Sistema completo para análise de franquias ATIVAS/INATIVAS e contas a receber com pagamentos"

setup(
    name="sistema-analise-franquias",
    version=get_version(),
    description="Sistema completo para análise de franquias ATIVAS/INATIVAS e contas a receber com pagamentos",
    long_description=get_long_description(),
    long_description_content_type="text/markdown",
    author="Derciel Alves",
    author_email="derciel@example.com",
    url="https://github.com/Derciel/contas-pagas-franquias",
    project_urls={
        "Bug Tracker": "https://github.com/Derciel/contas-pagas-franquias/issues",
        "Documentation": "https://github.com/Derciel/contas-pagas-franquias/blob/main/README.md",
        "Source Code": "https://github.com/Derciel/contas-pagas-franquias",
    },
    packages=find_packages(),
    include_package_data=True,
    install_requires=get_requirements(),
    python_requires=">=3.8",
    classifiers=[
        "Development Status :: 4 - Beta",
        "Intended Audience :: Developers",
        "Intended Audience :: Financial and Insurance Industry",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
        "Programming Language :: Python :: 3",
        "Programming Language :: Python :: 3.8",
        "Programming Language :: Python :: 3.9",
        "Programming Language :: Python :: 3.10",
        "Programming Language :: Python :: 3.11",
        "Programming Language :: Python :: 3.12",
        "Topic :: Office/Business :: Financial",
        "Topic :: Scientific/Engineering :: Information Analysis",
    ],
    keywords=[
        "streamlit", "data-analysis", "excel", "franquias", 
        "contas-receber", "dashboard", "pagamentos"
    ],
    entry_points={
        "console_scripts": [
            "sistema-franquias=sistema_unificado_final:main",
        ],
    },
)
