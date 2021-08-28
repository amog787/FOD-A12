.class public Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;
.super Ljava/lang/Object;
.source "VcnGatewayConnection.java"

# interfaces
.implements Landroid/net/ipsec/ike/ChildSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/VcnGatewayConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VcnChildSessionCallback"
.end annotation


# instance fields
.field private final mToken:I

.field final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/vcn/VcnGatewayConnection;
    .param p2, "token"    # I

    .line 2120
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2121
    iput p2, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    .line 2122
    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 3

    .line 2138
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChildClosed for token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$500(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 2139
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3400(Lcom/android/server/vcn/VcnGatewayConnection;ILjava/lang/Exception;)V

    .line 2140
    return-void
.end method

.method public onClosedExceptionally(Landroid/net/ipsec/ike/exceptions/IkeException;)V
    .locals 3
    .param p1, "exception"    # Landroid/net/ipsec/ike/exceptions/IkeException;

    .line 2144
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChildClosedExceptionally for token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3300(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2145
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-static {v0, v1, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$3400(Lcom/android/server/vcn/VcnGatewayConnection;ILjava/lang/Exception;)V

    .line 2146
    return-void
.end method

.method public onIpSecTransformCreated(Landroid/net/IpSecTransform;I)V
    .locals 3
    .param p1, "transform"    # Landroid/net/IpSecTransform;
    .param p2, "direction"    # I

    .line 2150
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChildTransformCreated; Direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$500(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 2151
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->access$4200(Lcom/android/server/vcn/VcnGatewayConnection;ILandroid/net/IpSecTransform;I)V

    .line 2152
    return-void
.end method

.method public onIpSecTransformDeleted(Landroid/net/IpSecTransform;I)V
    .locals 3
    .param p1, "transform"    # Landroid/net/IpSecTransform;
    .param p2, "direction"    # I

    .line 2166
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChildTransformDeleted; Direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; for token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$500(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 2167
    return-void
.end method

.method public onIpSecTransformsMigrated(Landroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V
    .locals 3
    .param p1, "inIpSecTransform"    # Landroid/net/IpSecTransform;
    .param p2, "outIpSecTransform"    # Landroid/net/IpSecTransform;

    .line 2158
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChildTransformsMigrated; token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$500(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 2159
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->access$4300(Lcom/android/server/vcn/VcnGatewayConnection;ILandroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V

    .line 2160
    return-void
.end method

.method public onOpened(Landroid/net/ipsec/ike/ChildSessionConfiguration;)V
    .locals 1
    .param p1, "childConfig"    # Landroid/net/ipsec/ike/ChildSessionConfiguration;

    .line 2133
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    invoke-direct {v0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;-><init>(Landroid/net/ipsec/ike/ChildSessionConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->onOpened(Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V

    .line 2134
    return-void
.end method

.method onOpened(Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V
    .locals 3
    .param p1, "childConfig"    # Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    .line 2127
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChildOpened for token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$500(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 2128
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-static {v0, v1, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$4100(Lcom/android/server/vcn/VcnGatewayConnection;ILcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V

    .line 2129
    return-void
.end method
