.class final enum Lcom/google/android/startop/iorap/EventSequenceValidator$State;
.super Ljava/lang/Enum;
.source "EventSequenceValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/EventSequenceValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/startop/iorap/EventSequenceValidator$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/startop/iorap/EventSequenceValidator$State;

.field public static final enum ACTIVITY_CANCELLED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

.field public static final enum ACTIVITY_FINISHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

.field public static final enum ACTIVITY_LAUNCHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

.field public static final enum INIT:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

.field public static final enum INTENT_FAILED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

.field public static final enum INTENT_STARTED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

.field public static final enum REPORT_FULLY_DRAWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

.field public static final enum UNKNOWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 224
    new-instance v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/startop/iorap/EventSequenceValidator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INIT:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 225
    new-instance v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const-string v3, "INTENT_STARTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/startop/iorap/EventSequenceValidator$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_STARTED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 226
    new-instance v3, Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const-string v5, "INTENT_FAILED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/startop/iorap/EventSequenceValidator$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_FAILED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 227
    new-instance v5, Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const-string v7, "ACTIVITY_LAUNCHED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/android/startop/iorap/EventSequenceValidator$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_LAUNCHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 228
    new-instance v7, Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const-string v9, "ACTIVITY_CANCELLED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/android/startop/iorap/EventSequenceValidator$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_CANCELLED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 229
    new-instance v9, Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const-string v11, "ACTIVITY_FINISHED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/android/startop/iorap/EventSequenceValidator$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_FINISHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 230
    new-instance v11, Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const-string v13, "REPORT_FULLY_DRAWN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/google/android/startop/iorap/EventSequenceValidator$State;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->REPORT_FULLY_DRAWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 231
    new-instance v13, Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const-string v15, "UNKNOWN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/google/android/startop/iorap/EventSequenceValidator$State;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->UNKNOWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 223
    const/16 v15, 0x8

    new-array v15, v15, [Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->$VALUES:[Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/startop/iorap/EventSequenceValidator$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 223
    const-class v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/startop/iorap/EventSequenceValidator$State;
    .locals 1

    .line 223
    sget-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->$VALUES:[Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    invoke-virtual {v0}, [Lcom/google/android/startop/iorap/EventSequenceValidator$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    return-object v0
.end method
