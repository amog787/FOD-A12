.class public final enum Lcom/android/server/dreams/DreamManagerService$DreamManagerEvent;
.super Ljava/lang/Enum;
.source "DreamManagerService.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DreamManagerEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/dreams/DreamManagerService$DreamManagerEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/dreams/DreamManagerService$DreamManagerEvent;

.field public static final enum DREAM_START:Lcom/android/server/dreams/DreamManagerService$DreamManagerEvent;

.field public static final enum DREAM_STOP:Lcom/android/server/dreams/DreamManagerService$DreamManagerEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 102
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$DreamManagerEvent;

    const-string v1, "DREAM_START"

    const/4 v2, 0x0

    const/16 v3, 0x241

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/dreams/DreamManagerService$DreamManagerEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/dreams/DreamManagerService$DreamManagerEvent;->DREAM_START:Lcom/android/server/dreams/DreamManagerService$DreamManagerEvent;

    .line 105
    new-instance v1, Lcom/android/server/dreams/DreamManagerService$DreamManagerEvent;

    const-string v3, "DREAM_STOP"

    const/4 v4, 0x1

    const/16 v5, 0x242

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/dreams/DreamManagerService$DreamManagerEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/dreams/DreamManagerService$DreamManagerEvent;->DREAM_STOP:Lcom/android/server/dreams/DreamManagerService$DreamManagerEvent;

    .line 100
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/server/dreams/DreamManagerService$DreamManagerEvent;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/android/server/dreams/DreamManagerService$DreamManagerEvent;->$VALUES:[Lcom/android/server/dreams/DreamManagerService$DreamManagerEvent;

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

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 111
    iput p3, p0, Lcom/android/server/dreams/DreamManagerService$DreamManagerEvent;->mId:I

    .line 112
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/dreams/DreamManagerService$DreamManagerEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 100
    const-class v0, Lcom/android/server/dreams/DreamManagerService$DreamManagerEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/dreams/DreamManagerService$DreamManagerEvent;

    return-object v0
.end method

.method public static values()[Lcom/android/server/dreams/DreamManagerService$DreamManagerEvent;
    .locals 1

    .line 100
    sget-object v0, Lcom/android/server/dreams/DreamManagerService$DreamManagerEvent;->$VALUES:[Lcom/android/server/dreams/DreamManagerService$DreamManagerEvent;

    invoke-virtual {v0}, [Lcom/android/server/dreams/DreamManagerService$DreamManagerEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/dreams/DreamManagerService$DreamManagerEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/android/server/dreams/DreamManagerService$DreamManagerEvent;->mId:I

    return v0
.end method
