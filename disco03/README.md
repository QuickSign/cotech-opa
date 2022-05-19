
Only VIP adult women!

* Import another rego containing additional data
* Print statements to understand
* Three parts in the rule

### Evaluation

```
opa eval --data policy.rego --data data/vips.rego --input data/gauthier.json "data.disco03.authorized" | jq ".result[0].expressions[0].value"
opa eval --data policy.rego --data data/vips.rego --input data/arnaud.json "data.disco03.authorized" | jq ".result[0].expressions[0].value"
opa eval --data policy.rego --data data/vips.rego --input data/lorie.json "data.disco03.authorized" | jq ".result[0].expressions[0].value"
opa eval --data policy.rego --data data/vips.rego --input data/chantal.json "data.disco03.authorized" | jq ".result[0].expressions[0].value"
```

