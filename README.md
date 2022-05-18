
## Test policies

### Disco #1

[Adults only](disco01/README.md)

### Disco #2

[Adult ladies only](disco02/README.md)

### Disco #3

[VIP adult ladies only](disco03/README.md)

## Run server

```bash
opa run --server \
  --addr=0.0.0.0:8080 \
  --log-level=debug \
  disco03/policy.rego \
  disco03/data/vips.rego
```

## List policies

List all policies

```bash
curl -s http://localhost:8080/v1/policies | jq ".result[].id"
```

Check our disco03 policy

```bash
curl -s http://localhost:8080/v1/policies/disco03/policy.rego | jq -r ".result.raw"
```

Check default data

```bash
curl -s http://localhost:8080/v1/data/disco03/authorized
curl -s http://localhost:8080/v1/data/vips/names
```

## Query with REST

Eval like testing

### Gauthier

```bash
curl -s -X POST \
  -H 'Content-Type: application/x-yaml' \
  -H 'Accept: application/json' \
  -d 'input:
  name: Gauthier
  age: 11
  gender: Male' \
  http://localhost:8080/v1/data/disco03?explain=full \
  | jq ".result.authorized"
```

### Arnaud
```
curl -s -X POST \
  -H 'Content-Type: application/x-yaml' \
  -H 'Accept: application/json' \
  -d 'input:
  name: Arnaud
  age: 40
  gender: Male' \
  http://localhost:8080/v1/data/disco03?explain=full \
  | jq ".result.authorized"
```

### Lorie

```
curl -s -X POST \
  -H 'Content-Type: application/x-yaml' \
  -H 'Accept: application/json' \
  -d 'input:
  name: Lorie
  age: 40
  gender: Female' \
  http://localhost:8080/v1/data/disco03?explain=full \
  | jq ".result.authorized"
```

### Chantal

```
curl -s -X POST \
  -H 'Content-Type: application/x-yaml' \
  -H 'Accept: application/json' \
  -d 'input:
  name: Chantal
  age: 79
  gender: Female' \
  http://localhost:8080/v1/data/disco03?explain=full \
  | jq ".result.authorized"
```
