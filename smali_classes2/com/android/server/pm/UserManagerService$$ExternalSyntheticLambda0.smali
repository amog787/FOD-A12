.class public final synthetic Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->lambda$isUserForeground$0()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
