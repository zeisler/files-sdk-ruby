# Bundle

## Example Bundle Object

```
{
  "code": "abc123",
  "created_at": "2000-01-01 01:00:00 UTC",
  "description": "The public description of the bundle.",
  "expires_at": "2000-01-01 01:00:00 UTC",
  "paths": [

  ],
  "id": 1,
  "note": "The internal note on the bundle.",
  "password_protected": true,
  "url": "https://subdomain.files.com/f/12345678",
  "user_id": 1,
  "username": "user"
}
```

* `code` (string): Bundle code.  This code forms the end part of the Public URL.
* `created_at` (date-time): Bundle created at date/time
* `description` (string): Public description
* `expires_at` (date-time): Bundle expiration date/time
* `paths` (array): A list of paths in this bundle
* `id` (int64): Bundle ID
* `note` (string): Bundle internal note
* `password_protected` (boolean): Is this bundle password protected?
* `url` (string): Public URL of Share Link
* `user_id` (int64): Bundle creator user ID
* `username` (string): Bundle creator username
* `password` (string): Password for this bundle.


---

## List Bundles

```
Files::Bundle.list(
  user_id: 1, 
  page: 1, 
  per_page: 1
)
```

### Parameters

* `user_id` (int64): User ID. If not provided, this operation will operate on your own user.
* `page` (int64): Current page number.
* `per_page` (int64): Number of records to show per page.  (Max: 10,000, 1,000 or less is recommended).
* `action` (string): Deprecated: If set to `count` returns a count of matching records rather than the records themselves.


---

## Show Bundle

```
Files::Bundle.find(id)
```

### Parameters

* `id` (int64): Required - Bundle ID.


---

## Create Bundle

```
Files::Bundle.create(
  user_id: 1, 
  paths: ["file.txt"], 
  password: "Password", 
  expires_at: "2000-01-01 01:00:00 UTC", 
  description: "Public description", 
  note: "Internal Note"
)
```

### Parameters

* `user_id` (int64): User ID. If not provided, this operation will operate on your own user.
* `paths` (array(string)): Required - A list of paths to include in this bundle.
* `password` (string): Password for this bundle.
* `expires_at` (string): Bundle expiration date/time.
* `description` (string): Bundle public description
* `note` (string): Bundle internal note


---

## Send email(s) with a link to bundle

```
Files::Bundle.share(id, 
  to: ["johndoe@gmail.com"], 
  note: "Just a note."
)
```

### Parameters

* `id` (int64): Required - Bundle ID.
* `to` (array(string)): Required - A list of email addresses to share this bundle with.
* `note` (string): Note to include in email.


---

## Delete Bundle

```
Files::Bundle.delete(id)
```

### Parameters

* `id` (int64): Required - Bundle ID.


---

## Send email(s) with a link to bundle

```
bundle = Files::Bundle.find(1)
bundle.share(
  to: ["johndoe@gmail.com"],
  note: "Just a note."
)
```

### Parameters

* `id` (int64): Required - Bundle ID.
* `to` (array(string)): Required - A list of email addresses to share this bundle with.
* `note` (string): Note to include in email.


---

## Delete Bundle

```
bundle = Files::Bundle.find(1)
bundle.delete
```

### Parameters

* `id` (int64): Required - Bundle ID.