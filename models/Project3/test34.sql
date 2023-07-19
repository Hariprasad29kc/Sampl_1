version:2

models:
  - name: stg_ord
    columns:
      - name: O_ORDERDATE
        tests:
          - is_above
    