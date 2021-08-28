.class Lcom/android/server/timezonedetector/EnvironmentImpl$3;
.super Landroid/database/ContentObserver;
.source "EnvironmentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/timezonedetector/EnvironmentImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/ServiceConfigAccessor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/timezonedetector/EnvironmentImpl;


# direct methods
.method constructor <init>(Lcom/android/server/timezonedetector/EnvironmentImpl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/timezonedetector/EnvironmentImpl;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 104
    iput-object p1, p0, Lcom/android/server/timezonedetector/EnvironmentImpl$3;->this$0:Lcom/android/server/timezonedetector/EnvironmentImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 107
    iget-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl$3;->this$0:Lcom/android/server/timezonedetector/EnvironmentImpl;

    invoke-static {v0}, Lcom/android/server/timezonedetector/EnvironmentImpl;->access$000(Lcom/android/server/timezonedetector/EnvironmentImpl;)V

    .line 108
    return-void
.end method
