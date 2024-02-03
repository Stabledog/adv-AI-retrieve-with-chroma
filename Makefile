# Makefile for adv-AI-retrieve-with-chroma
SHELL=/bin/bash
.ONESHELL:
.SUFFIXES:
.SHELLFLAGS = -uec
MAKEFLAGS += --no-builtin-rules --no-print-directory

absdir := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))


setup:
	@
	python3.11 -m pip  install  \
		pypdf \
		langchain \
		chromadb \
		openai \
		sentence-transformers
