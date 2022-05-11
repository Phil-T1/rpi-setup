
#Bash Aliases!

#Wake work laptop (non-root)
alias wol="wakeonlan C8:F7:50:70:0A:78 && exit"

#Wake home laptop (non-root)
alias wol2="wakeonlan 88:D7:F6:9F:66:93 && exit"

#Wake work + home (non-root)
alias wola="wakeonlan C8:F7:50:70:0A:78 && wakeonlan 88:D7:F6:9F:66:93 && exit"