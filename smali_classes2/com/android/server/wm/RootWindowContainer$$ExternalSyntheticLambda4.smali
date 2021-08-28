.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda4;

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

    check-cast p1, Lcom/android/server/wm/Task;

    check-cast p2, Landroid/app/ActivityTaskManager$RootTaskInfo;

    check-cast p3, [I

    invoke-static {p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->$r8$lambda$YLZAlJ3sCipIy27vYwSdw4Ep3R4(Lcom/android/server/wm/Task;Landroid/app/ActivityTaskManager$RootTaskInfo;[I)V

    return-void
.end method
