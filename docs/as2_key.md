# As2Key

## Example As2Key Object

```
{
  "id": 1,
  "as2_partnership_name": "Test",
  "created_at": "2000-01-01T01:00:00Z",
  "fingerprint": "cf:cb:d3:26:52:6c:55:88:83:17:13:cf:e7:70:eb:1b:32:37:38:c0"
}
```

* `id` (int64): AS2 Key ID
* `as2_partnership_name` (string): AS2 Partnership Name
* `created_at` (date-time): AS2 Key created at date/time
* `fingerprint` (string): Public key fingerprint
* `user_id` (int64): User ID.  Provide a value of `0` to operate the current session's user.
* `public_key` (string): Actual contents of Public key.


---

## List As2 Keys

```
Files::As2Key.list(
  user_id: 1, 
  page: 1, 
  per_page: 1
)
```

### Parameters

* `user_id` (int64): User ID.  Provide a value of `0` to operate the current session's user.
* `page` (int64): Current page number.
* `per_page` (int64): Number of records to show per page.  (Max: 10,000, 1,000 or less is recommended).
* `action` (string): Deprecated: If set to `count` returns a count of matching records rather than the records themselves.


---

## Show As2 Key

```
Files::As2Key.find(id)
```

### Parameters

* `id` (int64): Required - As2 Key ID.


---

## Create As2 Key

```
Files::As2Key.create(
  user_id: 1, 
  as2_partnership_name: "Test", 
  public_key: "public_key"
)
```

### Parameters

* `user_id` (int64): User ID.  Provide a value of `0` to operate the current session's user.
* `as2_partnership_name` (string): Required - AS2 Partnership Name
* `public_key` (string): Required - Actual contents of Public key.


---

## Update As2 Key

```
Files::As2Key.update(id, 
  as2_partnership_name: "Test"
)
```

### Parameters

* `id` (int64): Required - As2 Key ID.
* `as2_partnership_name` (string): Required - AS2 Partnership Name


---

## Delete As2 Key

```
Files::As2Key.delete(id)
```

### Parameters

* `id` (int64): Required - As2 Key ID.


---

## Update As2 Key

```
as2_key = Files::As2Key.find(1)
as2_key.update(
  as2_partnership_name: "Test"
)
```

### Parameters

* `id` (int64): Required - As2 Key ID.
* `as2_partnership_name` (string): Required - AS2 Partnership Name


---

## Delete As2 Key

```
as2_key = Files::As2Key.find(1)
as2_key.delete
```

### Parameters

* `id` (int64): Required - As2 Key ID.
