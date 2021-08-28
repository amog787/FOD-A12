.class final enum Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;
.super Ljava/lang/Enum;
.source "SoundTriggerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ModelState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

.field public static final enum ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

.field public static final enum INIT:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

.field public static final enum LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 238
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->INIT:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    .line 240
    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    const-string v3, "LOADED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    .line 242
    new-instance v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    const-string v5, "ACTIVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    .line 236
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->$VALUES:[Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 236
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 236
    const-class v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;
    .locals 1

    .line 236
    sget-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->$VALUES:[Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    invoke-virtual {v0}, [Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    return-object v0
.end method
