# Migrate to `uv` from pip + virtualenv

This repo documents a simple and reproducible way to migrate an existing Python project using `virtualenv` and `pip` to [**uv**](https://github.com/astral-sh/uv), a faster Python package manager and workflow tool by Astral.

---

## 🔁 Why migrate to `uv`?

- 🚀 **Faster installs** with Rust-based dependency resolution  
- 🧼 Cleaner environment management  
- 📦 Compatible with existing `requirements.txt`  
- 🛠 Better performance for large projects

---

## 📋 Migration Steps

If you're currently using a `.venv` and `requirements.txt`, follow these steps:

```bash
# Step 1: Activate your existing virtual environment
source ./.venv/bin/activate

# Step 2: Export your current dependencies
pip freeze > requirements.txt 

# Step 3: Deactivate and remove the old venv
deactivate
rm -rf .venv

# Step 4: Initialize a new uv environment
uv init

# Step 5: Install the dependencies using uv
uv add -r requirements.txt

