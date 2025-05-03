#!/bin/bash
# Install dependencies
sudo apt update && sudo apt install -y build-essential git curl ffmpeg libopenblas-dev libsndfile1

# Backend (FastAPI)
python3 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt

# Frontend (React)
cd frontend
npm install
cd ..

# Start backend & frontend
echo "Ready. Run: uvicorn app:app --host 0.0.0.0 --port 8080"
