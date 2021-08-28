.class public final Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "FontManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/graphics/fonts/FontManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/graphics/fonts/FontManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "safeMode"    # Z

    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 136
    new-instance v0, Lcom/android/server/graphics/fonts/FontManagerService;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/graphics/fonts/FontManagerService;-><init>(Landroid/content/Context;ZLcom/android/server/graphics/fonts/FontManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    .line 137
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;)Lcom/android/server/graphics/fonts/FontManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;

    .line 131
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    return-object v0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 141
    const-class v0, Lcom/android/server/graphics/fonts/FontManagerInternal;

    new-instance v1, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle$1;

    invoke-direct {v1, p0}, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle$1;-><init>(Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    const-string v1, "font"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 153
    return-void
.end method
