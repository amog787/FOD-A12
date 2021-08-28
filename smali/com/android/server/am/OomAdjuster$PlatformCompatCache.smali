.class Lcom/android/server/am/OomAdjuster$PlatformCompatCache;
.super Ljava/lang/Object;
.source "OomAdjuster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OomAdjuster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlatformCompatCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OomAdjuster$PlatformCompatCache$CacheItem;
    }
.end annotation


# instance fields
.field private final mCacheEnabled:Z

.field private final mCaches:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/am/OomAdjuster$PlatformCompatCache$CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mIPlatformCompatProxy:Lcom/android/internal/compat/IPlatformCompat;

.field private final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;


# direct methods
.method constructor <init>([J)V
    .locals 9
    .param p1, "compatChanges"    # [J

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    .line 270
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 271
    .local v1, "b":Landroid/os/IBinder;
    instance-of v2, v1, Lcom/android/server/compat/PlatformCompat;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 272
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/compat/PlatformCompat;

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 274
    array-length v0, p1

    :goto_0
    if-ge v3, v0, :cond_0

    aget-wide v5, p1, v3

    .line 275
    .local v5, "changeId":J
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    new-instance v7, Lcom/android/server/am/OomAdjuster$PlatformCompatCache$CacheItem;

    iget-object v8, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-direct {v7, v8, v5, v6}, Lcom/android/server/am/OomAdjuster$PlatformCompatCache$CacheItem;-><init>(Lcom/android/server/compat/PlatformCompat;J)V

    invoke-virtual {v2, v5, v6, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 274
    .end local v5    # "changeId":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 277
    :cond_0
    iput-object v4, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache;->mIPlatformCompatProxy:Lcom/android/internal/compat/IPlatformCompat;

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache;->mCacheEnabled:Z

    goto :goto_1

    .line 281
    :cond_1
    invoke-static {v1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache;->mIPlatformCompatProxy:Lcom/android/internal/compat/IPlatformCompat;

    .line 282
    iput-object v4, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 283
    iput-boolean v3, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache;->mCacheEnabled:Z

    .line 285
    :goto_1
    return-void
.end method


# virtual methods
.method invalidate(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 307
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 308
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OomAdjuster$PlatformCompatCache$CacheItem;

    invoke-virtual {v1, p1}, Lcom/android/server/am/OomAdjuster$PlatformCompatCache$CacheItem;->invalidate(Landroid/content/pm/ApplicationInfo;)V

    .line 307
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 310
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p1, "changeId"    # J
    .param p3, "app"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache;->mCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache$CacheItem;

    invoke-virtual {v0, p3}, Lcom/android/server/am/OomAdjuster$PlatformCompatCache$CacheItem;->isChangeEnabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    goto :goto_0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache;->mIPlatformCompatProxy:Lcom/android/internal/compat/IPlatformCompat;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    .line 288
    :goto_0
    return v0
.end method

.method isChangeEnabled(JLandroid/content/pm/ApplicationInfo;Z)Z
    .locals 3
    .param p1, "changeId"    # J
    .param p3, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "defaultValue"    # Z

    .line 298
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache;->mCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache$CacheItem;

    invoke-virtual {v0, p3}, Lcom/android/server/am/OomAdjuster$PlatformCompatCache$CacheItem;->isChangeEnabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    goto :goto_0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache;->mIPlatformCompatProxy:Lcom/android/internal/compat/IPlatformCompat;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    return v0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error reading platform compat change "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OomAdjuster"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    return p4
.end method
