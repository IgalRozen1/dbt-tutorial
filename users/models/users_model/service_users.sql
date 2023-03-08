select data->'id' as id, data->'emails' as emails, data->'mfaEnabled' as mfa from assets
where type='User'
and integration_id=6 -- Github in this case