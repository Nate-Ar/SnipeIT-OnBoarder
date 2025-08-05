# SnipeIT-OnBoarder
A simple PowerShell script to extract user information from a local Active Directory and export it to a CSV file formatted for import into Snipe-IT

---

## 🔧 Features

- Retrieves all **enabled AD users** with an email address and first name thats not blank
- Collects key user attributes: name, email, title, department, phone, etc.
- Exports to a **Snipe-IT compatible CSV** format
- Easily customizable for your organization

---

## 📁 Output Example

The script generates a CSV file (`snipeit_users.csv`) with the following columns:

- `first_name`
- `last_name`
- `email`
- `username`
- `phone`
- `location`
- `title`
- `department`
- `company`
- `password` (default placeholder: `"Password"`)
- `activated` (set to `"false"` to prevent login access by default)

---

## 🚀 Usage

1. Open PowerShell as Administrator  
2. Run the script:  
   ```powershell
   .\UserGrab.ps1
