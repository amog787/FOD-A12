.class public final synthetic Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

.field public final synthetic f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->lambda$notifyInterruptionFilterChanged$7$NotificationManagerService$NotificationListeners(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    return-void
.end method
