.class final Lcom/android/server/wm/MirrorActiveUids$UidRecord;
.super Ljava/lang/Object;
.source "MirrorActiveUids.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MirrorActiveUids;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UidRecord"
.end annotation


# instance fields
.field mNumNonAppVisibleWindow:I

.field mProcState:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/MirrorActiveUids$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/MirrorActiveUids$1;

    .line 88
    invoke-direct {p0}, Lcom/android/server/wm/MirrorActiveUids$UidRecord;-><init>()V

    return-void
.end method
