.class Lcom/android/server/am/ActiveServices$AppOpCallback$1;
.super Ljava/lang/Object;
.source "ActiveServices.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpNotedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices$AppOpCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActiveServices$AppOpCallback;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActiveServices$AppOpCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActiveServices$AppOpCallback;

    .line 2389
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback$1;->this$0:Lcom/android/server/am/ActiveServices$AppOpCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpNoted(IILjava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "result"    # I

    .line 2393
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback$1;->this$0:Lcom/android/server/am/ActiveServices$AppOpCallback;

    invoke-static {v0, p1, p2, p6}, Lcom/android/server/am/ActiveServices$AppOpCallback;->access$400(Lcom/android/server/am/ActiveServices$AppOpCallback;III)V

    .line 2394
    return-void
.end method
