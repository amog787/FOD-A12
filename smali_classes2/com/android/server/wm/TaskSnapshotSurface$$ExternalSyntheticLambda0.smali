.class public final synthetic Lcom/android/server/wm/TaskSnapshotSurface$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskSnapshotSurface;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskSnapshotSurface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotSurface$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TaskSnapshotSurface;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TaskSnapshotSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotSurface;->lambda$remove$0$TaskSnapshotSurface()V

    return-void
.end method
