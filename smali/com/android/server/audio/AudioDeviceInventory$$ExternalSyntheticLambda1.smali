.class public final synthetic Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$dump$2(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method
