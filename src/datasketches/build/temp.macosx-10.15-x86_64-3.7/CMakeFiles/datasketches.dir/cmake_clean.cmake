file(REMOVE_RECURSE
  "../lib.macosx-10.15-x86_64-3.7/libdatasketches.dylib"
  "../lib.macosx-10.15-x86_64-3.7/libdatasketches.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/datasketches.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
