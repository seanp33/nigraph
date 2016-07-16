{
  "targets": [
    {
      "target_name": "nigraph",
      "sources": [ "src/main/cpp/nigraph2.cc" ],
      "include_dirs": [
          "/usr/local/include/igraph",
          "<!(node -e \"require('nan')\")"
          ],
      "libraries":['/usr/local/lib/libigraph.dylib',]
    }
  ]
}
