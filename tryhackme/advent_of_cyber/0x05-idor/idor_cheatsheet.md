# IDOR Cheatsheet

## Common Patterns
- `/user/profile?user_id=123`
- `/api/v1/accounts/456`
- `/files/download?id=789`
- `/admin/users/edit.php?id=101`

## Testing Tips
- Change IDs incrementally (±1, ±10)
- Try other users' known IDs
- Replace your ID with admin/1/root
- Test across roles (user → moderator → admin)
- Check localStorage/sessionStorage for hidden IDs

## Detection
- Response length differs
- Different data returned
- No "Access Denied" message

## Prevention
- Use indirect references (e.g., UUIDs, hashes)
- Enforce server-side access control
- Validate ownership: `if ($record->user_id != $_SESSION['user_id']) die();`
