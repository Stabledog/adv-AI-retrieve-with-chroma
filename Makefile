# Makefile for adv-AI-retrieve-with-chroma
SHELL=/bin/bash
.ONESHELL:
.SUFFIXES:
.SHELLFLAGS = -uec
MAKEFLAGS += --no-builtin-rules --no-print-directory

absdir := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))
Python = .conda/bin/python3

Flag = $(absdir).flag

setup: $(Flag)/init $(Python)
$(Flag)/init:
	mkdir -p $(@D)

$(Python):
	@echo "Install python3.11 manually using conda and the vscode Select Kernel button"

setup: $(Python) $(Flag)/setup
$(Flag)/setup:
	@
	$(Python) -m pip  install  \
		pypdf \
		langchain \
		chromadb \
		openai \
		sentence-transformers
	touch $@
