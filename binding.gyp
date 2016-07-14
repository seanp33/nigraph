{
  "targets": [
    {
      "target_name": "nigraph",
      "sources": [ "nigraph2.cc" ],
      "include_dirs": [
          "/usr/local/include/igraph",
          "<!(node -e \"require('nan')\")"
          ],
      "libraries":['/usr/local/lib/libigraph.dylib',]
    }
  ]
}
