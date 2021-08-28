.class public final synthetic Lcom/android/server/oemlock/VendorLock$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/oemlock/V1_0/IOemLock$getNameCallback;


# instance fields
.field public final synthetic f$0:[Ljava/lang/Integer;

.field public final synthetic f$1:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Integer;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/oemlock/VendorLock$$ExternalSyntheticLambda0;->f$0:[Ljava/lang/Integer;

    iput-object p2, p0, Lcom/android/server/oemlock/VendorLock$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onValues(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/oemlock/VendorLock$$ExternalSyntheticLambda0;->f$0:[Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/server/oemlock/VendorLock$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/oemlock/VendorLock;->lambda$getLockName$0([Ljava/lang/Integer;[Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
