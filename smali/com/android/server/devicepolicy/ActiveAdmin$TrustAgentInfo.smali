.class Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;
.super Ljava/lang/Object;
.source "ActiveAdmin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/ActiveAdmin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrustAgentInfo"
.end annotation


# instance fields
.field public options:Landroid/os/PersistableBundle;


# direct methods
.method constructor <init>(Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    .line 214
    return-void
.end method
