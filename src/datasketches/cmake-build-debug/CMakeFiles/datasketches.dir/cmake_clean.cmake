file(REMOVE_RECURSE
  "libdatasketches.dylib"
  "libdatasketches.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/datasketches.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
