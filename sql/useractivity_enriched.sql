CREATE TABLE useractivity_enriched WITH (
    'connector' = 'kafka',
    'topic' = 'user_activity_enriched',
    'properties.bootstrap.servers' = 'localhost:29092',
    'format' = 'json'
) AS
SELECT id,
       Upper(activity_type),
       ts
FROM  useractivity;