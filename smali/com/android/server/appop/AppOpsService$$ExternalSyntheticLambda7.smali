.class public final synthetic Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;-><init>()V

    sput-object v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/appop/AppOpsService;

    check-cast p2, Lcom/android/server/appop/AppOpsService$ModeCallback;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    check-cast p5, Ljava/lang/String;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/appop/AppOpsService;->$r8$lambda$cQF62lZT2B382dOHCevnBWdZGys(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$ModeCallback;IILjava/lang/String;)V

    return-void
.end method
