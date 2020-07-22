file(REMOVE_RECURSE
  "../lib.macosx-10.9-x86_64-3.7/libdatasketches.pdb"
  "../lib.macosx-10.9-x86_64-3.7/libdatasketches.dylib"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/datasketches.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
