from minio import Minio
from minio.error import ResponseError

# Configura le credenziali e l'endpoint
minio_endpoint = "https://minio-edoardo-ferrazzo-dev.apps.sandbox-m4.g2pi.p1.openshiftapps.com"
minio_access_key = "OtNBsY8J4LIrRa5OGctD"
minio_secret_key = "T70Sy4eAtOJLSUXXGz95In2VJsJggNLzHrnaUzPl"

# Crea un client MinIO
minio_client = Minio(
    minio_endpoint,
    access_key=minio_access_key,
    secret_key=minio_secret_key,
    secure=True  # Imposta a False se il server MinIO non utilizza HTTPS
)

# Elenca i bucket
try:
    buckets = minio_client.list_buckets()
    print("Elenco dei bucket:")
    for bucket in buckets:
        print(f" - {bucket.name}")
except ResponseError as err:
    print(err)

# Elenca gli oggetti in un bucket specifico (es. 'redhat-test')
bucket_name = 'redhat-test'
try:
    objects = minio_client.list_objects(bucket_name)
    print(f"Elenco degli oggetti in {bucket_name}:")
    for obj in objects:
        print(f" - {obj.object_name}")
except ResponseError as err:
    print(err)
