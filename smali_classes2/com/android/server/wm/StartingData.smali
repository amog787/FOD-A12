.class public abstract Lcom/android/server/wm/StartingData;
.super Ljava/lang/Object;
.source "StartingData.java"


# instance fields
.field mIsTransitionForward:Z

.field protected final mService:Lcom/android/server/wm/WindowManagerService;

.field protected final mTypeParams:I


# direct methods
.method protected constructor <init>(Lcom/android/server/wm/WindowManagerService;I)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "typeParams"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/wm/StartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 37
    iput p2, p0, Lcom/android/server/wm/StartingData;->mTypeParams:I

    .line 38
    return-void
.end method


# virtual methods
.method abstract createStartingSurface(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
.end method

.method hasImeSurface()Z
    .locals 1

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method abstract needRevealAnimation()Z
.end method
