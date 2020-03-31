Zadanie
=======

ZAD 1
Na maszynach wirtualnych VirtualBox lub Vmware stwórz cluster consula z 2 nodów.
W consulowym key/value store stwórz folder 'domains' z kluczami o dowolnych nazwach – których
value będą: 'example.com' , 'sth.pl'.
Np.
domains\domain1 = sth.pl
domains\domain2 = example.com
Stworz folder 'whitelist' z podfolderami 'example.com' i 'sth.pl' i jakimikolwiek kilkoma wpisami key i
adresami ip jako value w kazdym z nich
Np
whitelist\example.com\whitelist-1 = 1.1.1.1
whitelist\example.com\whitelist-2 = 1.1.1.2
whitelist\example.com\whitelist-3 = 1.1.1.3
Za pomocą consul templates wygeneruj plik '/root/domains'
#nazwa domeny
#nazwa domeny
Za pomocą consul templates wygeneruj plik '/root/whitelist'
#nazwa domeny:
 - whitelist:
 - permit $IP ;
 - permit $IP ;
 ...
Gdzie $IP to jeden z adresow ip z value danego klucza.
Użyj obydwu folderów ‘domains’ oraz ‘whitelist’ gdzie lista domen z ‘domains’ będzie użyta do
odpowiedniego odpytania ‘whitelist’.

About
=====

Tresc nie precyzuje jak to zrobic, pozwolilem sobie skorzystac z packera i ansible.

versions:  
VirtualBox Version 5.2.34_Ubuntu  
Ansible 2.9.6  
Packer 1.5.5  

Playbook wykorzystuje pakiet python-consul  