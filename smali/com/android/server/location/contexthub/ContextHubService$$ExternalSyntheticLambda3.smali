.class public final synthetic Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda3;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda3;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Landroid/hardware/location/NanoAppInstanceInfo;

    invoke-static {v0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->lambda$dump$2(Ljava/io/PrintWriter;Landroid/hardware/location/NanoAppInstanceInfo;)V

    return-void
.end method
