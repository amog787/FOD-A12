.class public final synthetic Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/locksettings/LockSettingsService;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsService;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/locksettings/LockSettingsService;

    iput-wide p2, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda4;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-wide v1, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda4;->f$1:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->lambda$storeGatekeeperPasswordTemporarily$3$LockSettingsService(J)V

    return-void
.end method
