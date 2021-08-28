.class public final synthetic Lcom/android/server/wm/ResetTargetTaskHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/function/TriFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/ResetTargetTaskHelper$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/ResetTargetTaskHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/ResetTargetTaskHelper$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/wm/ResetTargetTaskHelper$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/wm/ResetTargetTaskHelper$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/wm/ResetTargetTaskHelper;

    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/android/server/wm/ResetTargetTaskHelper;->$r8$lambda$M87McZMh4q_Tq_1Y6n1dml2qxjo(Lcom/android/server/wm/ResetTargetTaskHelper;Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
