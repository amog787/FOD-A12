.class public final synthetic Lcom/android/server/wm/ActivityStartController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/ActivityStartController$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/ActivityStartController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityStartController$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityStartController$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/wm/ActivityStartController$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/server/wm/ActivityStartController;->lambda$startActivities$0(I)[Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
