# Use a minimal Python image
FROM python:3.11-slim

# Create a non-root user
RUN useradd -m appuser

# Set working directory
WORKDIR /app

# Copy files
COPY requirements.txt .
COPY app.py .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Change ownership and switch to non-root user
RUN chown -R appuser /app
USER appuser

# Expose port
EXPOSE 5000

# Start the app
CMD ["python", "app.py"]
