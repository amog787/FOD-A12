.class public final Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;
.super Ljava/lang/Object;
.source "NativeUidRangeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/netd/aidl/NativeUidRangeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private netId:I

.field private subPriority:I

.field private uidRanges:[Landroid/net/UidRangeParcel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->netId:I

    .line 23
    iput v0, p0, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->subPriority:I

    return-void
.end method


# virtual methods
.method public build()Landroid/net/netd/aidl/NativeUidRangeConfig;
    .locals 4

    .line 29
    new-instance v0, Landroid/net/netd/aidl/NativeUidRangeConfig;

    iget v1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->netId:I

    iget-object v2, p0, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->uidRanges:[Landroid/net/UidRangeParcel;

    iget v3, p0, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->subPriority:I

    invoke-direct {v0, v1, v2, v3}, Landroid/net/netd/aidl/NativeUidRangeConfig;-><init>(I[Landroid/net/UidRangeParcel;I)V

    return-object v0
.end method

.method public setNetId(I)Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;
    .locals 0
    .param p1, "netId"    # I

    .line 15
    iput p1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->netId:I

    .line 16
    return-object p0
.end method

.method public setSubPriority(I)Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;
    .locals 0
    .param p1, "subPriority"    # I

    .line 25
    iput p1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->subPriority:I

    .line 26
    return-object p0
.end method

.method public setUidRanges([Landroid/net/UidRangeParcel;)Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;
    .locals 0
    .param p1, "uidRanges"    # [Landroid/net/UidRangeParcel;

    .line 20
    iput-object p1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->uidRanges:[Landroid/net/UidRangeParcel;

    .line 21
    return-object p0
.end method
