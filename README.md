# nf-test

nf-test is a [Nextflow](https://www.nextflow.io/) pipeline for testing.

nf-test was developed by the Cardiovascular Proteomics Lab/Proteomic Unit at The National Centre for Cardiovascular Research (CNIC, https://www.cnic.es).

# Usage

## Execute the pipeline with samples


2. Execute the pipeline:
```
nextflow \
    -log "/tmp/nextflow/log/nf-test.log" \
    run main.nf   \
        --database "tests/database.fasta" \
        --add_decoys false \
        --decoy_prefix "DECOY_"\
        --outdir  "tests/results" \
        -resume
```

