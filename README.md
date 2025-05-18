# QBronze Qiskit Workshop Environment

This repository provides a Docker-based environment for running the QBronze Qiskit workshop materials, making it easy to get started with quantum computing using Qiskit.

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)
- Git (to clone the workshop materials)

## Setup Instructions

### 1. Clone This Repository

First, clone this repository which contains the Docker configuration:

```bash
git clone https://github.com/hannes-sistemica/qcp-workshop.git
cd qcp-workshop
```

### 2. Clone the QBronze Workshop Materials

Next, clone the official QBronze-Qiskit workshop materials into a data directory:

```bash
mkdir -p data
git clone https://gitlab.com/qworld/bronze-qiskit.git data/bronze-qiskit
```

### 3. Start the Environment

From the root directory of this project, simply run:

```bash
docker compose up
```

This command will:
1. Build a Docker image with Python 3.9 and Qiskit 1.2.4
2. Start a container with Jupyter Notebook
3. Mount the workshop materials in the container

### 3. Access Jupyter Notebook

When the container starts, look for output similar to this:

```
qbronze-1  |     To access the notebook, open this file in a browser:
qbronze-1  |         file:///root/.local/share/jupyter/runtime/nbserver-1-open.html
qbronze-1  |     Or copy and paste one of these URLs:
qbronze-1  |         http://127.0.0.1:8888/?token=abcdef123456...
qbronze-1  |      or http://127.0.0.1:8888/tree?token=abcdef123456...
```

**Copy the URL with the token** (the one beginning with `http://127.0.0.1:8888/?token=`) and paste it into your web browser.

### 4. Working with the Workshop Materials

Once Jupyter Notebook opens in your browser:

1. Start with the `before-workshop.ipynb` notebook to verify your Qiskit installation
2. Follow the workshop materials in sequence as directed by the instructors

### 5. Stopping the Environment

To stop the Jupyter server and container, press `Ctrl+C` in the terminal where you ran `docker compose up`.

### 6. Resuming Your Work

To continue your work later, simply run `docker compose up` again from the project directory.

## Customization

The environment uses:
- Python 3.9
- Qiskit 1.2.4 (pinned to avoid deprecation warnings)
- Matplotlib 3.8.0
- Jupyter Notebook 7.0.6

If you need to modify these versions or add additional packages, edit the `Dockerfile` and rebuild the container with `docker compose up --build`.

## Troubleshooting

- **Missing packages**: If you encounter missing package errors while running the notebooks, modify the Dockerfile to include them and rebuild the container.
- **Kernel dying**: Ensure your computer has enough resources (RAM) allocated to Docker.
- **Connection issues**: Make sure port 8888 is not in use by another application.

## License

MIT License - See LICENSE file for details.
