.class public final synthetic Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/RemoteFillService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteFillService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/autofill/RemoteFillService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/autofill/RemoteFillService;

    check-cast p1, Landroid/content/IntentSender;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->lambda$onSaveRequest$5$RemoteFillService(Landroid/content/IntentSender;Ljava/lang/Throwable;)V

    return-void
.end method
