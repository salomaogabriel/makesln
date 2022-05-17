
NAME=default
create_sln : add_project_to_sln
	@echo "Finished creating Solution: $(NAME)"
	
create_sln_file: 
	dotnet new sln -o $(NAME) # Runs First 
	
add_reference: cd_to_file
	cd $(NAME); dotnet add ./$(NAME).Tests reference ./$(NAME) # Runs Third

cd_to_file: create_sln_file
	cd $(NAME); dotnet new xunit -o $(NAME).Tests # Runs Second
	cd $(NAME); dotnet new classlib -o $(NAME)

add_project_to_sln: add_fluent_assertions
	cd $(NAME); dotnet sln add $(NAME) # Runs Last
	cd $(NAME); dotnet sln add $(NAME).Tests	

add_fluent_assertions: add_reference
	cd $(NAME); dotnet add ./$(NAME).Tests package FluentAssertions --version 6.6.0	# Runs Fourth
