.class Lcom/android/server/timedetector/ServiceConfigAccessor$ConfigOriginPrioritiesSupplier;
.super Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;
.source "ServiceConfigAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timedetector/ServiceConfigAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigOriginPrioritiesSupplier"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;-><init>(Lcom/android/server/timedetector/ServiceConfigAccessor$1;)V

    .line 201
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessor$ConfigOriginPrioritiesSupplier;->mContext:Landroid/content/Context;

    .line 202
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/timedetector/ServiceConfigAccessor$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/android/server/timedetector/ServiceConfigAccessor$1;

    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/timedetector/ServiceConfigAccessor$ConfigOriginPrioritiesSupplier;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected lookupPriorityStrings()[Ljava/lang/String;
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessor$ConfigOriginPrioritiesSupplier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
