# Day 41 – Securing Data with AWS KMS

## Task / Requirement
The Nautilus DevOps team aims to enhance data security by using AWS Key Management Service (KMS).
The task is to create a symmetric KMS key and use it to encrypt and decrypt a sensitive file,
ensuring that the decrypted content matches the original data.

The configuration must be correct, as a validation script will attempt to decrypt the encrypted
file using the created KMS key.

**Requirement details:**
- AWS Service: AWS KMS
- KMS Key Type: Symmetric
- KMS Key Alias: alias/nautilus-KMS-Key
- Sensitive File: `/root/SensitiveData.txt`
- Encrypted Output File: `/root/EncryptedData.bin`
- Goal: Encrypt and decrypt data using AWS KMS and verify integrity

---

## Steps Performed

### KMS Key Creation
- Created a **symmetric KMS key**
- Assigned an alias named **nautilus-KMS-Key**
- Ensured the key was enabled and available for encryption and decryption operations

---

### Verify Original File
- Verified the contents of the sensitive file before encryption: `echo /root/SensitiveData.txt` --> `This is a sensitive file.`

### Encrypt Sensitive Data
- Encrypted the sensitive file using AWS KMS
- Base64-decoded the ciphertext and saved it as a binary file
```bash
aws kms encrypt \
  --key-id alias/nautilus-KMS-Key \
  --plaintext fileb:///root/SensitiveData.txt \
  --query CiphertextBlob \
  --output text \
  | base64 --decode > /root/EncryptedData.bin
```

### Decrypt Encrypted Data
- Decrypted the encrypted file using AWS KMS
- Base64-decoded the plaintext and saved it as a new file
```bash
aws kms decrypt \
  --ciphertext-blob fileb:///root/EncryptedData.bin \
  --query Plaintext \
  --output text \
  | base64 --decode > /root/DecryptedData.txt
```

### Verification
- Verified the decrypted file contents: `echo /root/DecryptedData.txt` --> `This is a sensitive file.`
- Confirmed that the decrypted data matched the original file exactly

## Learnings / Key Takeaways
- AWS KMS provides centralized key management for encrypting and decrypting data
- Symmetric KMS keys are commonly used for application-level encryption
- KMS encryption outputs base64-encoded ciphertext that must be decoded for storage
- Decryption restores the original plaintext when correct key permissions are present
- Using KMS improves security by avoiding hard-coded encryption keys
- Proper key configuration is essential for automated validation and access control


