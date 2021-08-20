#!/usr/bin/python3

import string 
import hashlib
import itertools

 password_hash = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824"
# password_hash = 'e3b98a4da31a127d4bde6e43033f66ba274cab0eb7eb1c70ec41402bf6273dd8' #t
# password_hash = '0e07cf830957701d43c183f1515f63e6b68027e528f43ef52b1527a520ddec82' #tt
# password_hash = '3f7c54571faee024e3fd68603c5c95f6a4c8ef73a398840b974f3f57737a116f' #ttt

options = string.ascii_letters + string.digits

# https://docs.python.org/3/library/itertools.html the product method gives us the Cartesian product

for password_length in range(1, 6):
    is_cracked = False
    for permutation in itertools.product(options, repeat=password_length):
        candidate = ''.join(permutation)
        candidate_hash = hashlib.sha256(candidate.encode('utf-8')).hexdigest()
        #print(f"trying password: {candidate}: {candidate_hash}")
        is_cracked = candidate_hash == password_hash
        if is_cracked:
            print(f"Password has been cracked. It was {candidate}")
            break
    if is_cracked:
        break
