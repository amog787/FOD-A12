.class Lcom/android/server/tracing/TracingServiceProxy$1;
.super Landroid/tracing/ITracingServiceProxy$Stub;
.source "TracingServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tracing/TracingServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tracing/TracingServiceProxy;


# direct methods
.method constructor <init>(Lcom/android/server/tracing/TracingServiceProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tracing/TracingServiceProxy;

    .line 55
    iput-object p1, p0, Lcom/android/server/tracing/TracingServiceProxy$1;->this$0:Lcom/android/server/tracing/TracingServiceProxy;

    invoke-direct {p0}, Landroid/tracing/ITracingServiceProxy$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyTraceSessionEnded(Z)V
    .locals 1
    .param p1, "sessionStolen"    # Z

    .line 63
    iget-object v0, p0, Lcom/android/server/tracing/TracingServiceProxy$1;->this$0:Lcom/android/server/tracing/TracingServiceProxy;

    invoke-static {v0, p1}, Lcom/android/server/tracing/TracingServiceProxy;->access$000(Lcom/android/server/tracing/TracingServiceProxy;Z)V

    .line 64
    return-void
.end method
