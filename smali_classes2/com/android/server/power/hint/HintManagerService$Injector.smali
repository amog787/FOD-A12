.class Lcom/android/server/power/hint/HintManagerService$Injector;
.super Ljava/lang/Object;
.source "HintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/hint/HintManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method createNativeWrapper()Lcom/android/server/power/hint/HintManagerService$NativeWrapper;
    .locals 1

    .line 87
    new-instance v0, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    invoke-direct {v0}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;-><init>()V

    return-object v0
.end method
