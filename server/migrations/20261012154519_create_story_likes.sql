CREATE TABLE story_likes (
    story_id UUID NOT NULL REFERENCES stories(id) ON DELETE CASCADE,
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    PRIMARY KEY(story_id, user_id)
);

CREATE INDEX story_likes_user_id_idx ON story_likes(user_id);