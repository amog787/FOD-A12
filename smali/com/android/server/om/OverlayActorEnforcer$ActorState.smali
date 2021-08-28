.class public final enum Lcom/android/server/om/OverlayActorEnforcer$ActorState;
.super Ljava/lang/Enum;
.source "OverlayActorEnforcer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayActorEnforcer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActorState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/om/OverlayActorEnforcer$ActorState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/om/OverlayActorEnforcer$ActorState;

.field public static final enum ACTOR_NOT_FOUND:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

.field public static final enum ACTOR_NOT_PREINSTALLED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

.field public static final enum ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

.field public static final enum ERROR_READING_OVERLAYABLE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

.field public static final enum INVALID_ACTOR:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

.field public static final enum INVALID_OVERLAYABLE_ACTOR_NAME:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

.field public static final enum MISSING_ACTOR_NAME:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

.field public static final enum MISSING_LEGACY_PERMISSION:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

.field public static final enum MISSING_NAMESPACE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

.field public static final enum MISSING_OVERLAYABLE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

.field public static final enum MISSING_TARGET_OVERLAYABLE_NAME:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

.field public static final enum NO_NAMED_ACTORS:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

.field public static final enum NO_PACKAGES_FOR_UID:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

.field public static final enum TARGET_NOT_FOUND:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

.field public static final enum UNABLE_TO_GET_TARGET_OVERLAYABLE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 217
    new-instance v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    const-string v1, "TARGET_NOT_FOUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/om/OverlayActorEnforcer$ActorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->TARGET_NOT_FOUND:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 218
    new-instance v1, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    const-string v3, "NO_PACKAGES_FOR_UID"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/om/OverlayActorEnforcer$ActorState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->NO_PACKAGES_FOR_UID:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 219
    new-instance v3, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    const-string v5, "MISSING_TARGET_OVERLAYABLE_NAME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/server/om/OverlayActorEnforcer$ActorState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_TARGET_OVERLAYABLE_NAME:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 220
    new-instance v5, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    const-string v7, "MISSING_LEGACY_PERMISSION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/server/om/OverlayActorEnforcer$ActorState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_LEGACY_PERMISSION:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 221
    new-instance v7, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    const-string v9, "ERROR_READING_OVERLAYABLE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/server/om/OverlayActorEnforcer$ActorState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ERROR_READING_OVERLAYABLE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 222
    new-instance v9, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    const-string v11, "UNABLE_TO_GET_TARGET_OVERLAYABLE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/server/om/OverlayActorEnforcer$ActorState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->UNABLE_TO_GET_TARGET_OVERLAYABLE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 223
    new-instance v11, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    const-string v13, "MISSING_OVERLAYABLE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/server/om/OverlayActorEnforcer$ActorState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_OVERLAYABLE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 224
    new-instance v13, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    const-string v15, "INVALID_OVERLAYABLE_ACTOR_NAME"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/server/om/OverlayActorEnforcer$ActorState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->INVALID_OVERLAYABLE_ACTOR_NAME:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 225
    new-instance v15, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    const-string v14, "NO_NAMED_ACTORS"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/android/server/om/OverlayActorEnforcer$ActorState;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->NO_NAMED_ACTORS:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 226
    new-instance v14, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    const-string v12, "MISSING_NAMESPACE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/android/server/om/OverlayActorEnforcer$ActorState;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_NAMESPACE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 227
    new-instance v12, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    const-string v10, "MISSING_ACTOR_NAME"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/android/server/om/OverlayActorEnforcer$ActorState;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_ACTOR_NAME:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 228
    new-instance v10, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    const-string v8, "ACTOR_NOT_FOUND"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/android/server/om/OverlayActorEnforcer$ActorState;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ACTOR_NOT_FOUND:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 229
    new-instance v8, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    const-string v6, "ACTOR_NOT_PREINSTALLED"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/android/server/om/OverlayActorEnforcer$ActorState;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ACTOR_NOT_PREINSTALLED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 230
    new-instance v6, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    const-string v4, "INVALID_ACTOR"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/android/server/om/OverlayActorEnforcer$ActorState;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->INVALID_ACTOR:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 231
    new-instance v4, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    const-string v2, "ALLOWED"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/android/server/om/OverlayActorEnforcer$ActorState;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 216
    const/16 v2, 0xf

    new-array v2, v2, [Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v6

    sput-object v2, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->$VALUES:[Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 216
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 216
    const-class v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    .locals 1

    .line 216
    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->$VALUES:[Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    invoke-virtual {v0}, [Lcom/android/server/om/OverlayActorEnforcer$ActorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v0
.end method
