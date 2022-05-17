
Only VIP adult women!

* Import another rego containing additional data
* Three parts in the rule
* Print statements to understand

```
opa eval --data policy.rego --data data/vips.rego --input data/gauthier.json "data.disco03.authorized"
opa eval --data policy.rego --data data/vips.rego --input data/arnaud.json "data.disco03.authorized"
opa eval --data policy.rego --data data/vips.rego --input data/lorie.json "data.disco03.authorized"
opa eval --data policy.rego --data data/vips.rego --input data/chantal.json "data.disco03.authorized"
```
