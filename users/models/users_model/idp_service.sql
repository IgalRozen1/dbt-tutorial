WITH idp_users AS (
    SELECT * FROM {{ ref('idp_users') }}
),

service_users AS (
    SELECT * FROM {{ ref('service_users') }}
),

idp_service_users AS (
    SELECT service_users.name, service_users.emails, idp_users.mfa FROM service_users
    LEFT JOIN idp_users ON idp_users.emails = service_users.emails
)

SELECT * FROM idp_service_users
