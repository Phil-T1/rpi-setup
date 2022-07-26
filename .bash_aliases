# Bash Aliases!

# Wake work laptop
alias wol_w="wakeonlan C8:F7:50:70:0A:78"

# Wake home laptop
alias wol_h="wakeonlan 88:D7:F6:9F:66:93"

# Wake home + work
alias wol_a="wol_w && wol_h"
