## Run Actions with pnpm

Ref: https://pnpm.io/continuous-integration#github-actions

```yaml
- uses: thaitype/actions-node/pnpm@v1
  id: run-node
  with: 
    repository: thaitype/demo-node
    token: ${{ secrets.GITHUB_TOKEN }}
    node-version: "20"
    pnpm-version: "8"
    command: "node index.js"

- name: Get the output
  run: |
    echo "Output: ${{ steps.run-node.outputs.command }}"
```

## Note
By default `--frozen-lockfile` option is passed starting from pnpm 6.10.x. It will be automatically added if you run it on CI. If the pnpm-lock.yaml file changes then pass --frozen-lockfile option.

Ref: https://github.com/actions/setup-node/blob/d86ebcd40b3cb50b156bfa44dd277faf38282d12/docs/advanced-usage.md#caching-packages-data
Ref: https://pnpm.io/cli/install#--frozen-lockfile