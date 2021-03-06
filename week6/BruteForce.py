#!/usr/bin/python3
# import from python library 
import string 
import hashlib
import itertools

password_hash = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824" # hashed password to crack 
# password_hash = 'e3b98a4da31a127d4bde6e43033f66ba274cab0eb7eb1c70ec41402bf6273dd8' #t - tested on these options to ensure script viability
# password_hash = '0e07cf830957701d43c183f1515f63e6b68027e528f43ef52b1527a520ddec82' #tt
# password_hash = '3f7c54571faee024e3fd68603c5c95f6a4c8ef73a398840b974f3f57737a116f' #ttt

options = string.ascii_letters + string.digits

# https://docs.python.org/3/library/itertools.html the product method gives us the Cartesian product

for password_length in range(1, 6): #set range of password length
    is_cracked = False
    for permutation in itertools.product(options, repeat=password_length): 
        candidate = ''.join(permutation)
        candidate_hash = hashlib.sha256(candidate.encode('utf-8')).hexdigest()  #hash the word
        print(f"trying password: {candidate}: {candidate_hash}") # Whilst cracking print this line 
        is_cracked = candidate_hash == password_hash       #if the hash is the same as the correct password's hash then we have cracked the passwor
        if is_cracked:
            print(f"Password has been cracked. It was {candidate}") # print this line if cracked
            break
    if is_cracked:
        break # end once cracked
