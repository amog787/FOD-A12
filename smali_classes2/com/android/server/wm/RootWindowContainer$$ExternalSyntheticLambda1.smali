.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    check-cast p2, Landroid/content/pm/ApplicationInfo;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p4, Ljava/lang/String;

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/wm/RootWindowContainer;->$r8$lambda$FLmzhr01j2GERvqrf-mKQKpEFpE(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)V

    return-void
.end method
