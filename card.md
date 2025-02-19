# Swipe Card Feature Discussion Summary

## Hardware & Software Overview
- **Hardware:** Magnetic Stripe Reader (MSR) for reading card data.
- **Software Flow:**
  - Prompt user to swipe their card.
  - Process and securely handle card data.
  - Ensure PCI DSS compliance for security.

## Card Data from Magnetic Stripe
### Track 1 Data:
- Primary Account Number (PAN)
- Cardholder Name
- Expiration Date (YYMM)
- Service Code
- Discretionary Data

> %B1234567890123456^DOE/JOHN ^25121010000000000000?

### Track 2 Data:
- PAN
- Expiration Date (YYMM)
- Service Code
- Discretionary Data

> ;1234567890123456=25121010000000000000?

*Note:* CVV is not stored on the magnetic stripe.

## PCI DSS Compliance
- **Purpose:** Protect cardholder data and ensure secure handling.
- **Key Requirements:**
  - Secure network maintenance (firewalls, secure passwords).
  - Encrypt transmission of cardholder data.
  - Regular system updates and vulnerability management.
  - Access controls and activity monitoring.
  - Information security policies.
- **Levels:** Based on annual transaction volume.
- **Recommendation:** Use tokenization to handle sensitive data without direct storage.

## Associating Users with Cards
### Tokenization:
- Use a payment processor to generate a token for the card.
- **Same user + same card = consistent token** (when using customer profiles).
- Tokens are safe to store and PCI-compliant.

### Storing Card Data (Not Recommended):
- PCI DSS prohibits storing full PAN unless securely encrypted.
- Hashing with a salt is generally not sufficient for compliance.
- Allowed to store the **last 4 digits** of the card number.

### Best Practices:
- Create a **customer profile** with the payment processor.
- Save processor-generated **multi-use tokens** under the profile.
- Use **card fingerprints** (if provided) to detect duplicate cards.
- Never store CVV or full unencrypted PAN.

## Conclusion
For a secure and compliant card association system:
- Use processor-provided tokenization.
- Store last 4 digits for user reference.
- Create customer profiles to ensure consistent tokens.
- Avoid storing raw or hashed card data without PCI-approved encryption.
