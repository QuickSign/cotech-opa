
Only adult women!

Eval each person.

```
opa eval --data policy.rego --input data/gauthier.json "data.disco02.authorized" | jq ".result[0].expressions[0].value"
opa eval --data policy.rego --input data/arnaud.json "data.disco02.authorized" | jq ".result[0].expressions[0].value"
opa eval --data policy.rego --input data/lorie.json "data.disco02.authorized" | jq ".result[0].expressions[0].value"
```
