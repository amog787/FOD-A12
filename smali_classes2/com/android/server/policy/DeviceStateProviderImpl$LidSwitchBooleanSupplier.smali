.class final Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;
.super Ljava/lang/Object;
.source "DeviceStateProviderImpl.java"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/DeviceStateProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LidSwitchBooleanSupplier"
.end annotation


# instance fields
.field private final mExpectedOpen:Z

.field final synthetic this$0:Lcom/android/server/policy/DeviceStateProviderImpl;


# direct methods
.method constructor <init>(Lcom/android/server/policy/DeviceStateProviderImpl;Z)V
    .locals 0
    .param p2, "expectedOpen"    # Z

    .line 381
    iput-object p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    iput-boolean p2, p0, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;->mExpectedOpen:Z

    .line 383
    return-void
.end method


# virtual methods
.method public getAsBoolean()Z
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    invoke-static {v0}, Lcom/android/server/policy/DeviceStateProviderImpl;->access$100(Lcom/android/server/policy/DeviceStateProviderImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    invoke-static {v1}, Lcom/android/server/policy/DeviceStateProviderImpl;->access$200(Lcom/android/server/policy/DeviceStateProviderImpl;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 392
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    invoke-static {v1}, Lcom/android/server/policy/DeviceStateProviderImpl;->access$200(Lcom/android/server/policy/DeviceStateProviderImpl;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;->mExpectedOpen:Z

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 389
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Have not received lid switch value."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;
    throw v1

    .line 393
    .restart local p0    # "this":Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
