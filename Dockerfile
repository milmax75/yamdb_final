FROM python:3.7-slim 
 
WORKDIR /app 
 
COPY api_yamdb/requirements.txt /app 
 
RUN pip3 install -r /app/requirements.txt --no-cache-dir 
 
COPY ./ /app 
 
CMD ["gunicorn", "yamdb_final.wsgi:application", "--bind", "84.201.158.11:8000" ]

LABEL author='milmax75', version=1.0, status='reading theory again'
