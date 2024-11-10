AAEAAWVsYXN0aWMva2liYW5hL2tpYmFuYTphaGh1Zm9TbVNqZUZ3dFppZUxqZE5n

É importante no servidor do elasticsearch, gerar o token para conectarmos.

```sh
bin/elasticsearch-service-tokens create elastic/kibana <nome_do_token>
```
depois adicionamos na variável de ambiente:
ELASTICSEARCH_SERVICE_TOKEN


É importante definir chaves de criptografia estáticas para garantir a segurança e funcionalidade do Kibana.

Gerar chaves de criptografia seguras:

Você pode gerar chaves de criptografia usando o comando:

```
bin/kibana-encryption-keys generate

```

Este comando gerará chaves para:

xpack.encryptedSavedObjects.encryptionKey
xpack.reporting.encryptionKey
xpack.security.encryptionKey


```sh
curl -X POST "https://elasticsearch.snzkaq.easypanel.host//_security/service/elastic/kibana/credential/token/kibana-token" \
  -H "Content-Type: application/json" \
  -u USERNAME:SENHA

```

Vai gerar UM TOKEN
```

{"created":true,"token":{"name":"kibana-token","value":"TOKEN-GERADO AQUI"}}%          
```