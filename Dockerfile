FROM python:3.8-slim

# Setup virtual environment
ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Install dependencies:
COPY requirements* ./
COPY actions/requirements* ./actions/
RUN pip install -r requirements.txt

