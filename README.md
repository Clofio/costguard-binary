# costguard-binary
Clofio CostGuard CLI

## Install on Ubuntu/Linux

```
export COSTGUARD_API_KEY=<key-mailed-to-you>

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Clofio/costguard-binary/HEAD/install.sh)"
```

## Usage

Run below command to see the Terrafom Cost estimate

```
costguard breakdown --path </path/to/terraform/code>
```