.class interface abstract Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupPowerChangeListener;
.super Ljava/lang/Object;
.source "DisplayGroupPowerStateMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayGroupPowerStateMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "DisplayGroupPowerChangeListener"
.end annotation


# static fields
.field public static final DISPLAY_GROUP_ADDED:I = 0x0

.field public static final DISPLAY_GROUP_CHANGED:I = 0x2

.field public static final DISPLAY_GROUP_REMOVED:I = 0x1


# virtual methods
.method public abstract onDisplayGroupEventLocked(II)V
.end method
