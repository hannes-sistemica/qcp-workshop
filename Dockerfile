FROM python:3.9-slim

WORKDIR /app/notebooks

# Install specific version of Qiskit and dependencies
RUN pip install --no-cache-dir \
    qiskit==1.2.4 \
    matplotlib==3.8.0 \
    jupyter==1.0.0 \
    notebook==7.0.6 \
    numpy==1.26.0

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
