.class interface abstract annotation Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Direction;
.super Ljava/lang/Object;
.source "DefaultCrossProfileIntentFilter.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/DefaultCrossProfileIntentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2608
    name = "Direction"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final TO_PARENT:I = 0x0

.field public static final TO_PROFILE:I = 0x1
