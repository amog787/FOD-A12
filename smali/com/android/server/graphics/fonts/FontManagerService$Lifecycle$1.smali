.class Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle$1;
.super Ljava/lang/Object;
.source "FontManagerService.java"

# interfaces
.implements Lcom/android/server/graphics/fonts/FontManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;


# direct methods
.method constructor <init>(Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;

    .line 142
    iput-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle$1;->this$0:Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSerializedSystemFontMap()Landroid/os/SharedMemory;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle$1;->this$0:Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;

    invoke-static {v0}, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;->access$100(Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;)Lcom/android/server/graphics/fonts/FontManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/graphics/fonts/FontManagerService;->getCurrentFontMap()Landroid/os/SharedMemory;

    move-result-object v0

    return-object v0
.end method
