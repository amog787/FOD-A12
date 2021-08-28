.class Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;
.super Lcom/android/server/location/contexthub/IContextHubWrapper;
.source "IContextHubWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/IContextHubWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContextHubWrapperV1_0"
.end annotation


# instance fields
.field private mHub:Landroid/hardware/contexthub/V1_0/IContexthub;


# direct methods
.method constructor <init>(Landroid/hardware/contexthub/V1_0/IContexthub;)V
    .locals 0
    .param p1, "hub"    # Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 164
    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 166
    return-void
.end method


# virtual methods
.method public getHub()Landroid/hardware/contexthub/V1_0/IContexthub;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    return-object v0
.end method

.method public getHubs()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/V1_0/ContextHub;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    invoke-interface {v1}, Landroid/hardware/contexthub/V1_0/IContexthub;->getHubs()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public onAirplaneModeSettingChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 204
    return-void
.end method

.method public onLocationSettingChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 198
    return-void
.end method

.method public onMicrophoneDisableSettingChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 207
    return-void
.end method

.method public onWifiSettingChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 201
    return-void
.end method

.method public registerCallback(ILandroid/hardware/contexthub/V1_2/IContexthubCallback;)V
    .locals 1
    .param p1, "hubId"    # I
    .param p2, "callback"    # Landroid/hardware/contexthub/V1_2/IContexthubCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    invoke-interface {v0, p1, p2}, Landroid/hardware/contexthub/V1_0/IContexthub;->registerCallback(ILandroid/hardware/contexthub/V1_0/IContexthubCallback;)I

    .line 175
    return-void
.end method

.method public supportsAirplaneModeSettingNotifications()Z
    .locals 1

    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public supportsLocationSettingNotifications()Z
    .locals 1

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public supportsMicrophoneDisableSettingNotifications()Z
    .locals 1

    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public supportsWifiSettingNotifications()Z
    .locals 1

    .line 186
    const/4 v0, 0x0

    return v0
.end method
