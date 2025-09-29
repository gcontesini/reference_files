# Justfile

# Variables
version := "0.0.1"
venv_dir := "venv"
requirements := "requirements.txt"
results_dir := "results"
backup_results_dir := "backup/results"
backup_project_dir := "backup/project"
main_file := "main.py"
sep := "\n<----------------------------------------------------------------->\n"

# Default recipe
default: restart-project run

# TO DO
# Show operating system
# show-os:
# 	@echo "Operating System: {{os}}"

# Reinstall project from scratch
restart-project:
	@echo " {{sep}} Reinstalling Project...💿 {{sep}} "
	just clean
	@rm -rf {{venv_dir}}
	just install
	@echo " {{sep}} Reinstalled Project ✅ {{sep}} "

# Clean up results directory
clean:
	@echo " {{sep}} Cleaning {{results_dir}} directory...💿 {{sep}} "
	@if [ -d "{{results_dir}}" ]; then rm -rf {{results_dir}}/*; fi
	@echo " {{sep}} Clean Project ✅ {{sep}} "

# Install Python dependencies
install:
	@echo " {{sep}} Installing Python dependencies...💿 {{sep}} "
	@mkdir -p {{results_dir}}
	@python3 -m venv {{venv_dir}}
	@{{venv_dir}}/bin/pip install --upgrade pip
	@{{venv_dir}}/bin/pip install -r {{requirements}}
	@echo " {{sep}} Python dependencies installed  ✅ {{sep}}"

# Add Python module
add module:
	@echo " {{sep}} Adding module...💿 {{sep}} "
	@{{venv_dir}}/bin/pip install {{module}}
	@echo " {{sep}} {{module}} added to the project ✅ {{sep}}"

# Update Python dependencies
update-requirements:
	@echo " {{sep}} Updating Python dependencies...💿 {{sep}} "
	@{{venv_dir}}/bin/pip freeze > {{requirements}}
	@echo " {{sep}} Python dependencies updated ✅ {{sep}}"

# Run the main Python script
run:
	@echo " {{sep}} Running Python script...💿 {{sep}} "
	@time {{venv_dir}}/bin/python {{main_file}}
	@echo " {{sep}} Python script run ✅ {{sep}} "

# Run with PyPy
pypy:
	@echo " {{sep}} Running Python script with PyPy...💿 {{sep}} "
	@time {{venv_dir}}/bin/python -m pypy3 {{main_file}}
	@echo " {{sep}} Python script run with PyPy ✅ {{sep}} "

# Delete the project and backup results
delete-project:
	@echo " {{sep}} Deleting Project...💿 {{sep}} "
	@rm -rf {{venv_dir}}
	just backup-results
	@echo " {{sep}} Project deleted ✅ {{sep}} "

# Backup results into a zip file
backup-project:
	@echo " {{sep}} Backing up project...💿 {{sep}} "
	@mkdir -p {{backup_project_dir}}
	@zip -r project_backup_$(whoami)_$(date +%Y-%m-%d).zip . -x "{{venv_dir}}/*" "{{results_dir}}/*" ".git/*" "*__pycache__/*" ".vscode/*"
	@mv project_backup_$(whoami)_$(date +%Y-%m-%d).zip {{backup_project_dir}}
	@echo " {{sep}} Backed up complete ✅ {{sep}} "
	just backup-results

# Backup results into a zip file
backup-results:
	@echo " {{sep}} Backing up results...💿 {{sep}} "
	@mkdir -p {{backup_results_dir}}
	@zip -r results_backup_$(whoami)_$(date +%Y-%m-%d).zip {{results_dir}}
	@mv results_backup_$(whoami)_$(date +%Y-%m-%d).zip {{backup_results_dir}}
	@echo " {{sep}} Backed up complete ✅ {{sep}} "