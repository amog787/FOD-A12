.class public final synthetic Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;

    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p1, p2}, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->$r8$lambda$-FyrsYQsO8MCaRk2R6fED6yOeX8(Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
