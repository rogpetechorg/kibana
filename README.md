AAEAAWVsYXN0aWMva2liYW5hL2tpYmFuYTphaGh1Zm9TbVNqZUZ3dFppZUxqZE5n

É importante no servidor do elasticsearch, gerar o token para conectarmos.

```sh
bin/elasticsearch-service-tokens create elastic/kibana <nome_do_token>
```
depois adicionamos na variável de ambiente:
ELASTICSEARCH_SERVICE_TOKEN