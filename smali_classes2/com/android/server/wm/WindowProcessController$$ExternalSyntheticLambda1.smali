.class public final synthetic Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/server/wm/WindowProcessListener;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    check-cast p4, Ljava/lang/String;

    check-cast p5, Ljava/lang/Long;

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-object p0, p1

    move p1, p2

    move p2, p3

    move-object p3, p4

    move-wide p4, v0

    invoke-interface/range {p0 .. p5}, Lcom/android/server/wm/WindowProcessListener;->onStartActivity(IZLjava/lang/String;J)V

    return-void
.end method
