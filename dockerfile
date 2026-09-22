FROM node:22-bullseye-slim

# Install system utilities & Python for Hermes
RUN apt-get update && apt-get install -y git curl python3 python3-pip python3-venv && rm -rf /var/lib/apt/lists/*

# Install OmniRoute globally
RUN npm install -g omniroute

# Set working directory
WORKDIR /app

# Expose Render's dynamic port (defaults to 10000)
ENV PORT=10000
EXPOSE 10000

# Start OmniRoute
CMD ["omniroute", "--port", "10000"]
