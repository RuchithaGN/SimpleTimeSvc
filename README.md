# Build & Run Commands:
# Build the Docker image
docker build -t yourdockerhubusername/simpletimeservice .

# Run the container
docker run -p 5000:5000 yourdockerhubusername/simpletimeservice

# DockerHub & GitHub
Push Docker image:
docker login
docker tag simpletimeservice yourdockerhubusername/simpletimeservice
docker push yourdockerhubusername/simpletimeservice

Push code to GitHub:
git init
git add .
git commit -m "Initial commit of SimpleTimeService"
git branch -M main
git remote add origin https://github.com/yourusername/SimpleTimeService.git
git push -u origin main


# SimpleTimeService
A tiny Flask-based microservice that returns the current timestamp and the client's IP in JSON.

## 🐳 Docker Instructions

### Build
`
docker build -t simpletimeservice .
To run:
docker run -p 5000:5000 simpletimeservice

To Test:
# Open your browser or run:
curl http://localhost:5000/

📦 DockerHub
Available at: https://hub.docker.com/r/yourdockerhubusername/simpletimeservice

