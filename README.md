# actions-node
Run Node on Github Actions

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