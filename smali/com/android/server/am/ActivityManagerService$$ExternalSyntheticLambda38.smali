.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToLongFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda38;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda38;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda38;->INSTANCE:Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda38;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 2

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method
