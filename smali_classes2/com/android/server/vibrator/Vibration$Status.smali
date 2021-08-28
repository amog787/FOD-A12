.class final enum Lcom/android/server/vibrator/Vibration$Status;
.super Ljava/lang/Enum;
.source "Vibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/Vibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/vibrator/Vibration$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum CANCELLED:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum FINISHED:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum FORWARDED_TO_INPUT_DEVICES:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_BACKGROUND:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_FOR_ALARM:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_FOR_EXTERNAL:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_FOR_ONGOING:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_FOR_POWER:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_FOR_SETTINGS:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_RINGTONE:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_UNKNOWN_VIBRATION:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/Vibration$Status;

.field public static final enum RUNNING:Lcom/android/server/vibrator/Vibration$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 45
    new-instance v0, Lcom/android/server/vibrator/Vibration$Status;

    const-string v1, "RUNNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    .line 46
    new-instance v1, Lcom/android/server/vibrator/Vibration$Status;

    const-string v3, "FINISHED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/vibrator/Vibration$Status;->FINISHED:Lcom/android/server/vibrator/Vibration$Status;

    .line 47
    new-instance v3, Lcom/android/server/vibrator/Vibration$Status;

    const-string v5, "FORWARDED_TO_INPUT_DEVICES"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/vibrator/Vibration$Status;->FORWARDED_TO_INPUT_DEVICES:Lcom/android/server/vibrator/Vibration$Status;

    .line 48
    new-instance v5, Lcom/android/server/vibrator/Vibration$Status;

    const-string v7, "CANCELLED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED:Lcom/android/server/vibrator/Vibration$Status;

    .line 49
    new-instance v7, Lcom/android/server/vibrator/Vibration$Status;

    const-string v9, "IGNORED_ERROR_APP_OPS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

    .line 50
    new-instance v9, Lcom/android/server/vibrator/Vibration$Status;

    const-string v11, "IGNORED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/server/vibrator/Vibration$Status;->IGNORED:Lcom/android/server/vibrator/Vibration$Status;

    .line 51
    new-instance v11, Lcom/android/server/vibrator/Vibration$Status;

    const-string v13, "IGNORED_APP_OPS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

    .line 52
    new-instance v13, Lcom/android/server/vibrator/Vibration$Status;

    const-string v15, "IGNORED_BACKGROUND"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_BACKGROUND:Lcom/android/server/vibrator/Vibration$Status;

    .line 53
    new-instance v15, Lcom/android/server/vibrator/Vibration$Status;

    const-string v14, "IGNORED_RINGTONE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_RINGTONE:Lcom/android/server/vibrator/Vibration$Status;

    .line 54
    new-instance v14, Lcom/android/server/vibrator/Vibration$Status;

    const-string v12, "IGNORED_UNKNOWN_VIBRATION"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_UNKNOWN_VIBRATION:Lcom/android/server/vibrator/Vibration$Status;

    .line 55
    new-instance v12, Lcom/android/server/vibrator/Vibration$Status;

    const-string v10, "IGNORED_UNSUPPORTED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/Vibration$Status;

    .line 56
    new-instance v10, Lcom/android/server/vibrator/Vibration$Status;

    const-string v8, "IGNORED_FOR_ALARM"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_ALARM:Lcom/android/server/vibrator/Vibration$Status;

    .line 57
    new-instance v8, Lcom/android/server/vibrator/Vibration$Status;

    const-string v6, "IGNORED_FOR_EXTERNAL"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_EXTERNAL:Lcom/android/server/vibrator/Vibration$Status;

    .line 58
    new-instance v6, Lcom/android/server/vibrator/Vibration$Status;

    const-string v4, "IGNORED_FOR_ONGOING"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_ONGOING:Lcom/android/server/vibrator/Vibration$Status;

    .line 59
    new-instance v4, Lcom/android/server/vibrator/Vibration$Status;

    const-string v2, "IGNORED_FOR_POWER"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_POWER:Lcom/android/server/vibrator/Vibration$Status;

    .line 60
    new-instance v2, Lcom/android/server/vibrator/Vibration$Status;

    const-string v6, "IGNORED_FOR_SETTINGS"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/android/server/vibrator/Vibration$Status;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_SETTINGS:Lcom/android/server/vibrator/Vibration$Status;

    .line 44
    const/16 v6, 0x10

    new-array v6, v6, [Lcom/android/server/vibrator/Vibration$Status;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    aput-object v2, v6, v4

    sput-object v6, Lcom/android/server/vibrator/Vibration$Status;->$VALUES:[Lcom/android/server/vibrator/Vibration$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/vibrator/Vibration$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 44
    const-class v0, Lcom/android/server/vibrator/Vibration$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/Vibration$Status;

    return-object v0
.end method

.method public static values()[Lcom/android/server/vibrator/Vibration$Status;
    .locals 1

    .line 44
    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->$VALUES:[Lcom/android/server/vibrator/Vibration$Status;

    invoke-virtual {v0}, [Lcom/android/server/vibrator/Vibration$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/vibrator/Vibration$Status;

    return-object v0
.end method
