# 1. Use official Python image as base
FROM python:3.9-slim

# 2. Set working directory inside container
WORKDIR /app

# 3. Copy all files to container
COPY . .

# 4. Install required Python packages
RUN pip install -r requirements.txt

# 5. Expose Flask app port
EXPOSE 5000

# 6. Run the application
CMD ["python3", "app.py"]

