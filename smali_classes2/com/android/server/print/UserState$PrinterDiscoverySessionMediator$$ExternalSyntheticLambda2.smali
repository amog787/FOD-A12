.class public final synthetic Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    check-cast p2, Lcom/android/server/print/RemotePrintService;

    check-cast p3, Landroid/print/PrinterId;

    invoke-static {p1, p2, p3}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->$r8$lambda$pVUz9hy3VNDfqD4QAYcmzhjCl6k(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    return-void
.end method
