#!/bin/bash
echo "  starting memory test..."
yes | tr \\n x | head -c $((1048576*$MEMORY_MB_TO_HAVE)) | grep n
rc=$?;if [ $rc != 1 ]; then echo "ERROR: not enough memory! rc=$rc";exit $rc;fi
echo "  memory test passed."
