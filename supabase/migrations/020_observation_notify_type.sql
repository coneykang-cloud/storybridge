-- notifications.type CHECK 제약에 'track_notify' 추가
-- (보호자/교사가 행동관찰 기록 작성 시 → 치료사에게 알림)

ALTER TABLE public.notifications DROP CONSTRAINT IF EXISTS notifications_type_check;
ALTER TABLE public.notifications ADD CONSTRAINT notifications_type_check
  CHECK (type IN ('approval_request', 'approval_result', 'approval_sent', 'comment', 'track_notify'));
