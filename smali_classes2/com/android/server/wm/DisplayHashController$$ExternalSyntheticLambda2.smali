.class public final synthetic Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/service/displayhash/IDisplayHashingService;

    check-cast p2, Landroid/os/RemoteCallback;

    invoke-static {p1, p2}, Lcom/android/server/wm/DisplayHashController;->lambda$getDisplayHashAlgorithms$2(Landroid/service/displayhash/IDisplayHashingService;Landroid/os/RemoteCallback;)V

    return-void
.end method
