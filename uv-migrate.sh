source ./.venv/bin/activate
pip freeze > requirements.txt 
deactivate
rm -rf .venv
uv init
uv add -r requirements.txt