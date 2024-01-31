Note: By default `--frozen-lockfile` option is passed starting from pnpm 6.10.x. It will be automatically added if you run it on CI. If the pnpm-lock.yaml file changes then pass --frozen-lockfile option.

Ref: https://github.com/actions/setup-node/blob/d86ebcd40b3cb50b156bfa44dd277faf38282d12/docs/advanced-usage.md#caching-packages-data