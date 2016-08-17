BEGIN TRANSACTION;

ALTER TABLE BLOCK_HISTORY ADD COLUMN viewed INTEGER DEFAULT 0;

CREATE UNIQUE INDEX IF NOT EXISTS idx_block_contact ON block (contact_id);
CREATE UNIQUE INDEX IF NOT EXISTS idx_block_bot ON block (bot_id);

COMMIT;