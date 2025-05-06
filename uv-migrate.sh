# Activate your current virtual environment
source ./.venv/bin/activate

# Activate your current virtual environment
source ./venv/bin/activate

# Install pipreqs to extract only top-level dependencies
pip install pipreqs

# Generate a clean requirements.txt based on actual imports
pipreqs . --force

# Deactivate and remove the old environment
deactivate
rm -rf .venv

# Initialize uv and install dependencies
uv init
uv add -r requirements.txt
