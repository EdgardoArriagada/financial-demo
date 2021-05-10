FROM rasa/rasa:2.6.0-full

WORKDIR /app

# Install dependencies:
COPY requirements* ./
COPY actions/requirements* ./actions/
RUN pip install -r requirements.txt

