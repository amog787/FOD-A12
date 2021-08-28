.class public final synthetic Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayPolicy;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:[Lcom/android/internal/view/AppearanceRegion;

.field public final synthetic f$5:Z

.field public final synthetic f$6:I

.field public final synthetic f$7:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayPolicy;ILjava/lang/String;I[Lcom/android/internal/view/AppearanceRegion;ZIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/wm/DisplayPolicy;

    iput p2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$3:I

    iput-object p5, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$4:[Lcom/android/internal/view/AppearanceRegion;

    iput-boolean p6, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$5:Z

    iput p7, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$6:I

    iput-boolean p8, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$7:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/wm/DisplayPolicy;

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$1:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$3:I

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$4:[Lcom/android/internal/view/AppearanceRegion;

    iget-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$5:Z

    iget v6, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$6:I

    iget-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$7:Z

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/DisplayPolicy;->lambda$updateSystemUiVisibilityLw$12$DisplayPolicy(ILjava/lang/String;I[Lcom/android/internal/view/AppearanceRegion;ZIZ)V

    return-void
.end method
