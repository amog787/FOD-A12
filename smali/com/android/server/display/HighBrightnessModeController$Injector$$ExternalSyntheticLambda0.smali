.class public final synthetic Lcom/android/server/display/HighBrightnessModeController$Injector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/display/DisplayManagerService$Clock;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/display/HighBrightnessModeController$Injector$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/display/HighBrightnessModeController$Injector$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/display/HighBrightnessModeController$Injector$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/display/HighBrightnessModeController$Injector$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/display/HighBrightnessModeController$Injector$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uptimeMillis()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
