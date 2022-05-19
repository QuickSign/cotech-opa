
Unit testing our policy

All works well

```bash
opa test test_disco03_policy.rego ../disco03/policy.rego ../disco03/data/vips.rego
```

No VIP list means nobody can enter

```bash
opa test test_disco03_policy.rego ../disco03/policy.rego
```