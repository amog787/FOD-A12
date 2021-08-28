.class public Lcom/android/server/vcn/Vcn$VcnContentResolver;
.super Ljava/lang/Object;
.source "Vcn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/Vcn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VcnContentResolver"
.end annotation


# instance fields
.field private final mImpl:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/VcnContext;)V
    .locals 1
    .param p1, "vcnContext"    # Lcom/android/server/vcn/VcnContext;

    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    invoke-virtual {p1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vcn/Vcn$VcnContentResolver;->mImpl:Landroid/content/ContentResolver;

    .line 694
    return-void
.end method


# virtual methods
.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "observer"    # Landroid/database/ContentObserver;

    .line 699
    iget-object v0, p0, Lcom/android/server/vcn/Vcn$VcnContentResolver;->mImpl:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 700
    return-void
.end method
