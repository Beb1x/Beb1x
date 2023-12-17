#to upgrade every everything
pip freeze | %{$_.split('==')[0]} | %{pip install --upgrade $_}

#to uninstall everything
pip freeze | %{$_.split('==')[0]} | %{pip uninstall -y $_}
