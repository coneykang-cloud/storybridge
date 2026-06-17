'use client'

import { useEffect } from 'react'
import { useNotificationStore } from '@/stores/notification.store'

export function NotificationConnector({ userId }: { userId: string }) {
  const { fetchNotifications, connect, disconnect } = useNotificationStore()

  useEffect(() => {
    fetchNotifications()
    connect(userId)
    return () => disconnect()
  }, [userId])

  return null
}
