.class Lcom/android/server/vcn/Vcn$VcnMobileDataContentObserver;
.super Landroid/database/ContentObserver;
.source "Vcn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/Vcn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VcnMobileDataContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vcn/Vcn;


# direct methods
.method private constructor <init>(Lcom/android/server/vcn/Vcn;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 651
    iput-object p1, p0, Lcom/android/server/vcn/Vcn$VcnMobileDataContentObserver;->this$0:Lcom/android/server/vcn/Vcn;

    .line 652
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 653
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vcn/Vcn;Landroid/os/Handler;Lcom/android/server/vcn/Vcn$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/vcn/Vcn;
    .param p2, "x1"    # Landroid/os/Handler;
    .param p3, "x2"    # Lcom/android/server/vcn/Vcn$1;

    .line 650
    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/Vcn$VcnMobileDataContentObserver;-><init>(Lcom/android/server/vcn/Vcn;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 657
    iget-object v0, p0, Lcom/android/server/vcn/Vcn$VcnMobileDataContentObserver;->this$0:Lcom/android/server/vcn/Vcn;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/Vcn;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/Vcn;->sendMessage(Landroid/os/Message;)Z

    .line 658
    return-void
.end method
