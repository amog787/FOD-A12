.class Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;
.super Ljava/lang/Object;
.source "VcnGatewayConnection.java"

# interfaces
.implements Landroid/net/ipsec/ike/IkeSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/VcnGatewayConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IkeSessionCallbackImpl"
.end annotation


# instance fields
.field private final mToken:I

.field final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;I)V
    .locals 0
    .param p2, "token"    # I

    .line 2086
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2087
    iput p2, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->mToken:I

    .line 2088
    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 3

    .line 2098
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IkeClosed for token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->mToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$500(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 2099
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->mToken:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->access$4000(Lcom/android/server/vcn/VcnGatewayConnection;ILjava/lang/Exception;)V

    .line 2100
    return-void
.end method

.method public onClosedExceptionally(Landroid/net/ipsec/ike/exceptions/IkeException;)V
    .locals 3
    .param p1, "exception"    # Landroid/net/ipsec/ike/exceptions/IkeException;

    .line 2104
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IkeClosedExceptionally for token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->mToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3300(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2105
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->mToken:I

    invoke-static {v0, v1, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$4000(Lcom/android/server/vcn/VcnGatewayConnection;ILjava/lang/Exception;)V

    .line 2106
    return-void
.end method

.method public onError(Landroid/net/ipsec/ike/exceptions/IkeProtocolException;)V
    .locals 3
    .param p1, "exception"    # Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    .line 2110
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IkeError for token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->mToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3300(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2112
    return-void
.end method

.method public onOpened(Landroid/net/ipsec/ike/IkeSessionConfiguration;)V
    .locals 3
    .param p1, "ikeSessionConfig"    # Landroid/net/ipsec/ike/IkeSessionConfiguration;

    .line 2092
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IkeOpened for token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->mToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$500(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 2094
    return-void
.end method
