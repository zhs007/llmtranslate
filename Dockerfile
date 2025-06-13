# Use official Python 3.12 image based on Debian bookworm
FROM python:3.12-bookworm

# Set work directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the code
COPY translate.py ./

# Default command: show help
CMD ["python", "translate.py"]
