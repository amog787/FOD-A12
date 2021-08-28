.class public final synthetic Lcom/android/server/wm/RunningTasks$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/RunningTasks$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/RunningTasks$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/wm/RunningTasks$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/wm/RunningTasks$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/wm/RunningTasks$$ExternalSyntheticLambda1;

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

    check-cast p1, Lcom/android/server/wm/RunningTasks;

    check-cast p2, Lcom/android/server/wm/Task;

    invoke-static {p1, p2}, Lcom/android/server/wm/RunningTasks;->$r8$lambda$aFBbfqyz8Q9KhX3puvL-WHTqL88(Lcom/android/server/wm/RunningTasks;Lcom/android/server/wm/Task;)V

    return-void
.end method
