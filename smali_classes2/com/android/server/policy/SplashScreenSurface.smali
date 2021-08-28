.class Lcom/android/server/policy/SplashScreenSurface;
.super Ljava/lang/Object;
.source "SplashScreenSurface.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mAppToken:Landroid/os/IBinder;

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "appToken"    # Landroid/os/IBinder;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/policy/SplashScreenSurface;->mView:Landroid/view/View;

    .line 44
    iput-object p2, p0, Lcom/android/server/policy/SplashScreenSurface;->mAppToken:Landroid/os/IBinder;

    .line 45
    return-void
.end method


# virtual methods
.method public remove(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 52
    iget-object v0, p0, Lcom/android/server/policy/SplashScreenSurface;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 53
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/policy/SplashScreenSurface;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 54
    return-void
.end method
