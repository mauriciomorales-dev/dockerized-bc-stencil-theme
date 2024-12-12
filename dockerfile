# Use Node.js 18 as the base image
FROM node:18

# Install system dependencies for Python support
RUN apt-get update && apt-get install -y \
    python3 python3-pip python3-dev \
    && rm -rf /var/lib/apt/lists/*

# Install Stencil CLI, Webpack, Husky, and any other global tools you need
RUN npm install -g @bigcommerce/stencil-cli webpack webpack-cli husky

# Set the default working directory inside the container
WORKDIR /theme

# Set default command to open an interactive shell
CMD ["/bin/bash"]
