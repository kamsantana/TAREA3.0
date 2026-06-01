# Usar una imagen base ligera de Python
FROM python:3.11-slim

# Configurar el directorio de trabajo
WORKDIR /app

# Copiar los archivos de requerimientos e instalar dependencias
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el código de la aplicación
COPY app/ ./app/

# Comando por defecto para ejecutar la aplicación
CMD ["python", "app/calculadora.py"]