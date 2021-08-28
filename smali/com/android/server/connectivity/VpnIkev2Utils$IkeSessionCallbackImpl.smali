.class Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;
.super Ljava/lang/Object;
.source "VpnIkev2Utils.java"

# interfaces
.implements Landroid/net/ipsec/ike/IkeSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/VpnIkev2Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IkeSessionCallbackImpl"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

.field private final mNetwork:Landroid/net/Network;

.field private final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;Landroid/net/Network;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;
    .param p3, "network"    # Landroid/net/Network;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mTag:Ljava/lang/String;

    .line 302
    iput-object p2, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    .line 303
    iput-object p3, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mNetwork:Landroid/net/Network;

    .line 304
    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IkeClosed for network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    iget-object v1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mNetwork:Landroid/net/Network;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;->onSessionLost(Landroid/net/Network;Ljava/lang/Exception;)V

    .line 316
    return-void
.end method

.method public onClosedExceptionally(Landroid/net/ipsec/ike/exceptions/IkeException;)V
    .locals 3
    .param p1, "exception"    # Landroid/net/ipsec/ike/exceptions/IkeException;

    .line 320
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IkeClosedExceptionally for network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    iget-object v1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mNetwork:Landroid/net/Network;

    invoke-interface {v0, v1, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;->onSessionLost(Landroid/net/Network;Ljava/lang/Exception;)V

    .line 322
    return-void
.end method

.method public onError(Landroid/net/ipsec/ike/exceptions/IkeProtocolException;)V
    .locals 3
    .param p1, "exception"    # Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    .line 326
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IkeError for network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    return-void
.end method

.method public onOpened(Landroid/net/ipsec/ike/IkeSessionConfiguration;)V
    .locals 3
    .param p1, "ikeSessionConfig"    # Landroid/net/ipsec/ike/IkeSessionConfiguration;

    .line 308
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IkeOpened for network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void
.end method
