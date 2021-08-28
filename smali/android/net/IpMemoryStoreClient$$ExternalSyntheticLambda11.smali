.class public final synthetic Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/net/IpMemoryStoreClient$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/net/ipmemorystore/OnDeleteStatusListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/ipmemorystore/OnDeleteStatusListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda11;->f$0:Landroid/net/ipmemorystore/OnDeleteStatusListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda11;->f$0:Landroid/net/ipmemorystore/OnDeleteStatusListener;

    invoke-static {v0}, Landroid/net/IpMemoryStoreClient;->lambda$deleteCluster$23(Landroid/net/ipmemorystore/OnDeleteStatusListener;)V

    return-void
.end method
