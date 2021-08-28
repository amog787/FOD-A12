.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda47;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda47;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda47;-><init>()V

    sput-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda47;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda47;

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

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p1}, Lcom/android/server/wm/Task;->lambda$getTopWaitSplashScreenActivity$13(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    return p1
.end method
