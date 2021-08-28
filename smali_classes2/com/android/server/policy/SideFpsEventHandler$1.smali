.class Lcom/android/server/policy/SideFpsEventHandler$1;
.super Ljava/lang/Object;
.source "SideFpsEventHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SideFpsEventHandler;->lambda$onSinglePressDetected$0$SideFpsEventHandler(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SideFpsEventHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SideFpsEventHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/SideFpsEventHandler;

    .line 96
    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$1;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 99
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 100
    return-void
.end method
