.class Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;
.super Ljava/lang/Object;
.source "SensorPrivacyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SensorPrivacyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyCallHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SensorPrivacyService$EmergencyCallHelper$CallStateCallback;,
        Lcom/android/server/SensorPrivacyService$EmergencyCallHelper$OutgoingEmergencyStateCallback;
    }
.end annotation


# instance fields
.field private mCallStateCallback:Lcom/android/server/SensorPrivacyService$EmergencyCallHelper$CallStateCallback;

.field private mEmergencyStateCallback:Lcom/android/server/SensorPrivacyService$EmergencyCallHelper$OutgoingEmergencyStateCallback;

.field private mEmergencyStateLock:Ljava/lang/Object;

.field private mIsInEmergencyCall:Z

.field private mMicUnmutedForEmergencyCall:Z

.field final synthetic this$0:Lcom/android/server/SensorPrivacyService;


# direct methods
.method constructor <init>(Lcom/android/server/SensorPrivacyService;)V
    .locals 3

    .line 1723
    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1721
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;->mEmergencyStateLock:Ljava/lang/Object;

    .line 1724
    new-instance v0, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper$OutgoingEmergencyStateCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper$OutgoingEmergencyStateCallback;-><init>(Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;Lcom/android/server/SensorPrivacyService$1;)V

    iput-object v0, p0, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;->mEmergencyStateCallback:Lcom/android/server/SensorPrivacyService$EmergencyCallHelper$OutgoingEmergencyStateCallback;

    .line 1725
    new-instance v0, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper$CallStateCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper$CallStateCallback;-><init>(Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;Lcom/android/server/SensorPrivacyService$1;)V

    iput-object v0, p0, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;->mCallStateCallback:Lcom/android/server/SensorPrivacyService$EmergencyCallHelper$CallStateCallback;

    .line 1727
    invoke-static {p1}, Lcom/android/server/SensorPrivacyService;->access$3100(Lcom/android/server/SensorPrivacyService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;->mEmergencyStateCallback:Lcom/android/server/SensorPrivacyService$EmergencyCallHelper$OutgoingEmergencyStateCallback;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 1729
    invoke-static {p1}, Lcom/android/server/SensorPrivacyService;->access$3100(Lcom/android/server/SensorPrivacyService;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;->mCallStateCallback:Lcom/android/server/SensorPrivacyService$EmergencyCallHelper$CallStateCallback;

    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 1731
    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;

    .line 1714
    invoke-direct {p0}, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;->onEmergencyCall()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;

    .line 1714
    invoke-direct {p0}, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;->onCallOver()V

    return-void
.end method

.method private onCallOver()V
    .locals 6

    .line 1775
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;->mEmergencyStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1776
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;->mIsInEmergencyCall:Z

    if-eqz v1, :cond_0

    .line 1777
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;->mIsInEmergencyCall:Z

    .line 1778
    iget-boolean v2, p0, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;->mMicUnmutedForEmergencyCall:Z

    if-eqz v2, :cond_0

    .line 1779
    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/SensorPrivacyService;->access$2300(Lcom/android/server/SensorPrivacyService;)Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object v2

    .line 1780
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const/4 v4, 0x5

    .line 1779
    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5, v5}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->access$3400(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;IIIZ)V

    .line 1781
    iput-boolean v1, p0, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;->mMicUnmutedForEmergencyCall:Z

    .line 1784
    :cond_0
    monitor-exit v0

    .line 1785
    return-void

    .line 1784
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onEmergencyCall()V
    .locals 6

    .line 1759
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;->mEmergencyStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1760
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;->mIsInEmergencyCall:Z

    if-nez v1, :cond_1

    .line 1761
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;->mIsInEmergencyCall:Z

    .line 1762
    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/SensorPrivacyService;->access$2300(Lcom/android/server/SensorPrivacyService;)Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object v2

    .line 1763
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->isIndividualSensorPrivacyEnabled(II)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1764
    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/SensorPrivacyService;->access$2300(Lcom/android/server/SensorPrivacyService;)Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object v2

    .line 1765
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    const/4 v5, 0x5

    .line 1764
    invoke-static {v2, v4, v5, v1, v3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->access$3400(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;IIIZ)V

    .line 1766
    iput-boolean v1, p0, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;->mMicUnmutedForEmergencyCall:Z

    goto :goto_0

    .line 1768
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;->mMicUnmutedForEmergencyCall:Z

    .line 1771
    :cond_1
    :goto_0
    monitor-exit v0

    .line 1772
    return-void

    .line 1771
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method isInEmergencyCall()Z
    .locals 2

    .line 1734
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;->mEmergencyStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1735
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/SensorPrivacyService$EmergencyCallHelper;->mIsInEmergencyCall:Z

    monitor-exit v0

    return v1

    .line 1736
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
