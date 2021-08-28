.class public final synthetic Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda2;

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

    invoke-static {p1}, Lcom/android/server/wm/AppTransitionController;->lambda$findAnimLayoutParamsToken$2(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    return p1
.end method
