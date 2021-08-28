.class public final synthetic Lcom/android/server/UiModeManagerService$12$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/UiModeManagerService$12$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/UiModeManagerService$12$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/UiModeManagerService$12$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/UiModeManagerService$12$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/UiModeManagerService$12$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method
