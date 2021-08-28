.class final enum Lcom/android/server/wm/Task$ActivityState;
.super Ljava/lang/Enum;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ActivityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/wm/Task$ActivityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wm/Task$ActivityState;

.field public static final enum DESTROYED:Lcom/android/server/wm/Task$ActivityState;

.field public static final enum DESTROYING:Lcom/android/server/wm/Task$ActivityState;

.field public static final enum FINISHING:Lcom/android/server/wm/Task$ActivityState;

.field public static final enum INITIALIZING:Lcom/android/server/wm/Task$ActivityState;

.field public static final enum PAUSED:Lcom/android/server/wm/Task$ActivityState;

.field public static final enum PAUSING:Lcom/android/server/wm/Task$ActivityState;

.field public static final enum RESTARTING_PROCESS:Lcom/android/server/wm/Task$ActivityState;

.field public static final enum RESUMED:Lcom/android/server/wm/Task$ActivityState;

.field public static final enum STARTED:Lcom/android/server/wm/Task$ActivityState;

.field public static final enum STOPPED:Lcom/android/server/wm/Task$ActivityState;

.field public static final enum STOPPING:Lcom/android/server/wm/Task$ActivityState;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 355
    new-instance v0, Lcom/android/server/wm/Task$ActivityState;

    const-string v1, "INITIALIZING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/Task$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/Task$ActivityState;->INITIALIZING:Lcom/android/server/wm/Task$ActivityState;

    .line 356
    new-instance v1, Lcom/android/server/wm/Task$ActivityState;

    const-string v3, "STARTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/wm/Task$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/wm/Task$ActivityState;->STARTED:Lcom/android/server/wm/Task$ActivityState;

    .line 357
    new-instance v3, Lcom/android/server/wm/Task$ActivityState;

    const-string v5, "RESUMED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/server/wm/Task$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/wm/Task$ActivityState;->RESUMED:Lcom/android/server/wm/Task$ActivityState;

    .line 358
    new-instance v5, Lcom/android/server/wm/Task$ActivityState;

    const-string v7, "PAUSING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/server/wm/Task$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/server/wm/Task$ActivityState;->PAUSING:Lcom/android/server/wm/Task$ActivityState;

    .line 359
    new-instance v7, Lcom/android/server/wm/Task$ActivityState;

    const-string v9, "PAUSED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/server/wm/Task$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/server/wm/Task$ActivityState;->PAUSED:Lcom/android/server/wm/Task$ActivityState;

    .line 360
    new-instance v9, Lcom/android/server/wm/Task$ActivityState;

    const-string v11, "STOPPING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/server/wm/Task$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/server/wm/Task$ActivityState;->STOPPING:Lcom/android/server/wm/Task$ActivityState;

    .line 361
    new-instance v11, Lcom/android/server/wm/Task$ActivityState;

    const-string v13, "STOPPED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/server/wm/Task$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/server/wm/Task$ActivityState;->STOPPED:Lcom/android/server/wm/Task$ActivityState;

    .line 362
    new-instance v13, Lcom/android/server/wm/Task$ActivityState;

    const-string v15, "FINISHING"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/server/wm/Task$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/server/wm/Task$ActivityState;->FINISHING:Lcom/android/server/wm/Task$ActivityState;

    .line 363
    new-instance v15, Lcom/android/server/wm/Task$ActivityState;

    const-string v14, "DESTROYING"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/android/server/wm/Task$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/server/wm/Task$ActivityState;->DESTROYING:Lcom/android/server/wm/Task$ActivityState;

    .line 364
    new-instance v14, Lcom/android/server/wm/Task$ActivityState;

    const-string v12, "DESTROYED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/android/server/wm/Task$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/server/wm/Task$ActivityState;->DESTROYED:Lcom/android/server/wm/Task$ActivityState;

    .line 365
    new-instance v12, Lcom/android/server/wm/Task$ActivityState;

    const-string v10, "RESTARTING_PROCESS"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/android/server/wm/Task$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/server/wm/Task$ActivityState;->RESTARTING_PROCESS:Lcom/android/server/wm/Task$ActivityState;

    .line 354
    const/16 v10, 0xb

    new-array v10, v10, [Lcom/android/server/wm/Task$ActivityState;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    sput-object v10, Lcom/android/server/wm/Task$ActivityState;->$VALUES:[Lcom/android/server/wm/Task$ActivityState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 354
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wm/Task$ActivityState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 354
    const-class v0, Lcom/android/server/wm/Task$ActivityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task$ActivityState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wm/Task$ActivityState;
    .locals 1

    .line 354
    sget-object v0, Lcom/android/server/wm/Task$ActivityState;->$VALUES:[Lcom/android/server/wm/Task$ActivityState;

    invoke-virtual {v0}, [Lcom/android/server/wm/Task$ActivityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wm/Task$ActivityState;

    return-object v0
.end method
