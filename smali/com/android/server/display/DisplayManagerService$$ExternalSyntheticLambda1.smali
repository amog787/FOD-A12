.class public final synthetic Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/DisplayManagerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/DisplayManagerService;

    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->$r8$lambda$blkD86Pa3eTp0bxU70Yrbd3ywUQ(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method
