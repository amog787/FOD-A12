.class public final synthetic Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/window/WindowContainerTransaction$Change;

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Landroid/window/WindowContainerTransaction$Change;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;->f$0:Landroid/window/WindowContainerTransaction$Change;

    iput-object p2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;->f$1:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;->f$0:Landroid/window/WindowContainerTransaction$Change;

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;->f$1:[I

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applyDisplayAreaChanges$1(Landroid/window/WindowContainerTransaction$Change;[ILjava/lang/Object;)V

    return-void
.end method
