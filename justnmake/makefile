# Makefile

CLASS_NAME = BuddyInfo
JAVA_BIN = BuddyInfo.class
JAVA_FILE = BuddyInfo.java
JAR_FILE = BuddyInfo.jar

.PHONY: compile manifest jar clean run dry-run

main: compile manifest jar run dry-run clean

compile:
	@echo "Compiling $(wildcard *.java) files..."
	@javac BuddyInfo.java
	@echo " $(wildcard *.java) files compiled!✅\n"

manifest:
	@echo "Creating manifest.txt file..."
	@echo "Main-Class: $(CLASS_NAME)" > manifest.txt
	@echo " manifest.txt created! ✅\n"

jar:
	@echo "Creating JAR file..."
	@jar cvfm $(JAR_FILE) manifest.txt $(JAVA_BIN)
	@echo " $(wildcard *.jar) file created! ✅ \n"

clean:
	@echo "Deleting files:\n$(wildcard *.class) \n $(wildcard *.jar)\n $(wildcard manifest.txt)\n"
	@-rm -f *.class 
	@-rm -f *.jar
	@-rm -f manifest.txt
	@echo "Files deleted! ✅ \n"

dry-run:
	@java BuddyInfo.java

run: compile manifest jar
	@java -jar $(JAR_FILE)
	
# Makefile for Python

# Variables
VENV_DIR = venv
REQUIREMENTS = requirements.txt
RESULTS_DIR = results
MAIN = main.py

.PHONY: all clean install run

all: install run clean

clean:
	rm -rf $(RESULTS_DIR)/*

install:
	python3 -m venv $(VENV_DIR)
	$(VENV_DIR)/bin/pip install --upgrade pip
	$(VENV_DIR)/bin/pip install -r $(REQUIREMENTS)

run:
	$(VENV_DIR)/bin/activate"
	sleep 100
	$(VENV_DIR)/bin/python $(MAIN)
