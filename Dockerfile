FROM python:3.13-alpine

WORKDIR /app

COPY requirements.txt .

# Corrigido 'install' e '--no-cache-dir'
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8080

# Removido --reload para um ambiente de produção
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8080"]
