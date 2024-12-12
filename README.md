# Stencil Theme Development with Docker

This repository contains a setup to run a Stencil theme development environment using Docker.

## Prerequisites

- Docker installed on your machine
- Docker Compose installed (optional but recommended)

---

## Getting Started

### 1. Clone the Repository

Clone this repository to your local machine.

```bash
git clone <repository-url>
cd <repository-name>
```

### 2. Build the Docker Image
Use Docker Compose to build the image:
```bash
docker-compose build
```

### 3. Start the Docker Container
Run the following command to start the container in interactive mode:

This will open a shell inside the container with the working directory set to /theme.

```bash
docker-compose run stencil-theme
```


### 4. Install Dependencies
Once inside the container, install all the dependencies required for the theme:

This command installs the dependencies specified in the package.json file located in the /theme directory.

```bash
npm install
```
### 5. Work on the Theme
Now you can run any necessary commands to develop or preview the theme.

For example, to start the development server, use:

This command starts the Stencil CLI, allowing you to preview and work on the theme in real-time.

```
bash
stencil start
```

### 6. Stop the Container
To stop the container, simply exit the shell:

```bash
exit
```



## Directory Structure
```
project-root/
├── dockerfile          # Dockerfile for building the container
├── docker-compose.yml  # Configuration for Docker Compose
├── theme/              # Theme directory (mounted into the container)
│   ├── package.json    # Theme dependencies
│   ├── node_modules/   # Installed dependencies
│   └── ...             # Other theme files
```

### Notes
The theme folder in this repository is mounted to /theme inside the container, ensuring changes in the host are reflected in the container.
You can modify dockerfile or docker-compose.yml to include additional tools or configurations as required.
Always make sure your theme/package.json is correctly configured to avoid dependency issues.