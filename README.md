# Skylab

## Creating Antlr runtime project and grammar

https://github.com/antlr/antlr4/blob/master/doc/swift-target.md

```bash
projects_dir="${HOME}/Projects"
brew install antlr4

cd "${projects_dir}"
git clone https://github.com/antlr/antlr4
git clone https://github.com/antlr/grammars-v4 antlr4-grammars

cd "${projects_dir}/antlr4/runtime/Swift"
antlr4_swift_runtime_tmp=$(python boot.py --gen-spm-module | grep -E -o /private/tmp/Antlr4-tmp-\\d+ | head -n 1)
mv "${antlr4_swift_runtime_tmp}" "${projects_dir}/antlr4-swift"

cd "${projects_dir}/Skylab"
antlr -Dlanguage=Swift -message-format gnu -o Sources/Skylab/Generated "${projects_dir}/antlr4-grammars/graphql/GraphQL.g4"
```

## Antlr TODOs

- handle `warning: 'Hashable.hashValue' is deprecated as a protocol requirement; conform type 'Interval' to 'Hashable' by implementing 'hash(into:)' instead`
