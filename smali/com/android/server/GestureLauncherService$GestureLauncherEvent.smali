.class public final enum Lcom/android/server/GestureLauncherService$GestureLauncherEvent;
.super Ljava/lang/Enum;
.source "GestureLauncherService.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GestureLauncherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GestureLauncherEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/GestureLauncherService$GestureLauncherEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

.field public static final enum GESTURE_CAMERA_DOUBLE_TAP_POWER:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

.field public static final enum GESTURE_CAMERA_LIFT:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

.field public static final enum GESTURE_CAMERA_WIGGLE:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

.field public static final enum GESTURE_EMERGENCY_TAP_POWER:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 155
    new-instance v0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    const-string v1, "GESTURE_CAMERA_LIFT"

    const/4 v2, 0x0

    const/16 v3, 0x292

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->GESTURE_CAMERA_LIFT:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    .line 158
    new-instance v1, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    const-string v3, "GESTURE_CAMERA_WIGGLE"

    const/4 v4, 0x1

    const/16 v5, 0x293

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->GESTURE_CAMERA_WIGGLE:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    .line 161
    new-instance v3, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    const-string v5, "GESTURE_CAMERA_DOUBLE_TAP_POWER"

    const/4 v6, 0x2

    const/16 v7, 0x294

    invoke-direct {v3, v5, v6, v7}, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->GESTURE_CAMERA_DOUBLE_TAP_POWER:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    .line 164
    new-instance v5, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    const-string v7, "GESTURE_EMERGENCY_TAP_POWER"

    const/4 v8, 0x3

    const/16 v9, 0x295

    invoke-direct {v5, v7, v8, v9}, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->GESTURE_EMERGENCY_TAP_POWER:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    .line 153
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->$VALUES:[Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 170
    iput p3, p0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->mId:I

    .line 171
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/GestureLauncherService$GestureLauncherEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 153
    const-class v0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    return-object v0
.end method

.method public static values()[Lcom/android/server/GestureLauncherService$GestureLauncherEvent;
    .locals 1

    .line 153
    sget-object v0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->$VALUES:[Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    invoke-virtual {v0}, [Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->mId:I

    return v0
.end method
