.class Lcom/android/server/pm/WatchedIntentResolver$1;
.super Lcom/android/server/utils/Watcher;
.source "WatchedIntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/WatchedIntentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/WatchedIntentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/pm/WatchedIntentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/WatchedIntentResolver;

    .line 87
    .local p0, "this":Lcom/android/server/pm/WatchedIntentResolver$1;, "Lcom/android/server/pm/WatchedIntentResolver$1;"
    iput-object p1, p0, Lcom/android/server/pm/WatchedIntentResolver$1;->this$0:Lcom/android/server/pm/WatchedIntentResolver;

    invoke-direct {p0}, Lcom/android/server/utils/Watcher;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/android/server/utils/Watchable;)V
    .locals 1
    .param p1, "what"    # Lcom/android/server/utils/Watchable;

    .line 90
    .local p0, "this":Lcom/android/server/pm/WatchedIntentResolver$1;, "Lcom/android/server/pm/WatchedIntentResolver$1;"
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentResolver$1;->this$0:Lcom/android/server/pm/WatchedIntentResolver;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/WatchedIntentResolver;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 91
    return-void
.end method
