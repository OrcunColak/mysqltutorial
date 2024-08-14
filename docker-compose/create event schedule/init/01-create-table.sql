CREATE TABLE messages
(
    message_id   VARCHAR(36) PRIMARY KEY,
    sender_id    VARCHAR(36),
    receiver_id  VARCHAR(36),
    message_text TEXT,
    sent_at      TIMESTAMP
);

insert into messages (message_id,
                      sender_id,
                      receiver_id,
                      message_text,
                      sent_at)
values (uuid(),
        uuid(),
        uuid(),
        'message_1',
        CONVERT_TZ(NOW(), @@session.time_zone, '+00:00')
        );