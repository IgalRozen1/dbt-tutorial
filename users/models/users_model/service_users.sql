SELECT data->'name' AS name, data->'emails' AS emails, data->'mfaEnabled' AS mfa 
FROM assets AS a
JOIN tenants AS t ON t.last_scan_id=a.scan_id -- get assets from the last scan 
WHERE a.type='User'
AND t.id='55dfc0d9-1ee9-0e62-4057-d9a1fdb4a6ba'
AND a.integration_id=6 -- Github