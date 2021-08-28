.class public final synthetic Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda12;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda12;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda12;->INSTANCE:Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda12;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/content/SyncOperation;

    invoke-static {p1}, Lcom/android/server/content/SyncManager;->lambda$dumpPendingSyncs$8(Lcom/android/server/content/SyncOperation;)Z

    move-result p1

    return p1
.end method
