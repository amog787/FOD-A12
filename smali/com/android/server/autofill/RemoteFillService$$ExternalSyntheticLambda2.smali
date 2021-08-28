.class public final synthetic Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/os/IResultReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/os/IResultReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/os/IResultReceiver;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/os/IResultReceiver;

    check-cast p1, Landroid/service/autofill/IAutoFillService;

    invoke-static {v0, p1}, Lcom/android/server/autofill/RemoteFillService;->lambda$onSavedPasswordCountRequest$6(Lcom/android/internal/os/IResultReceiver;Landroid/service/autofill/IAutoFillService;)V

    return-void
.end method
