.class public final synthetic Lcom/android/server/am/OomAdjProfiler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/OomAdjProfiler$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/am/OomAdjProfiler$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/OomAdjProfiler$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/am/OomAdjProfiler$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/am/OomAdjProfiler$$ExternalSyntheticLambda0;

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

    check-cast p1, Lcom/android/server/am/OomAdjProfiler;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/am/OomAdjProfiler;->$r8$lambda$WGvtgxkAhtMnJr3XT1WyqVb7_14(Lcom/android/server/am/OomAdjProfiler;ZZZ)V

    return-void
.end method
