# Gamebot
The project structure for a sample project that uses a chatbot for having a conversation about recent video games. 
Using [RAWG](https://rawg.io/apidocs) might be useful for accessing the relevant API.

## Example use cases
1. What video games have been released on the PS5 last month?
2. Can you tell me about the game 'some video game name'?

_Feel free to add more use cases._

## Required VSCode Extensions
1. Python
2. Pylance
3. Pylint
4. Python Environment Manager
5. isort
6. Black Formatter

## Local Setup (Unit tests and code completion)
1. In vscode CMD+ALT+P and select 'Python: Create Environment'
2. Select Venv
3. Select Python 3.11.X (or whatever recent python version you have installed)
4. Select requirements.txt or run 'pip install -r requirements.txt afterwards' in the terminal (after activating the venv)

After restarting vscode you now get correct code completion and can run the unit tests.

## Docker Setup (Running the bot)
1. cd docker
2. docker-compose up
3. [http://localhost:8088](http://localhost:8088)

You can also access the SwaggerUI documentation here: [http://localhost:8008/docs](http://localhost:8008/docs)
