.class public abstract Lcom/android/server/wm/DisplayAreaPolicy;
.super Ljava/lang/Object;
.source "DisplayAreaPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayAreaPolicy$Provider;,
        Lcom/android/server/wm/DisplayAreaPolicy$DefaultProvider;
    }
.end annotation


# instance fields
.field protected final mRoot:Lcom/android/server/wm/RootDisplayArea;

.field protected final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method protected constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/RootDisplayArea;)V
    .locals 0
    .param p1, "wmService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "root"    # Lcom/android/server/wm/RootDisplayArea;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 66
    iput-object p2, p0, Lcom/android/server/wm/DisplayAreaPolicy;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    .line 67
    return-void
.end method


# virtual methods
.method public abstract addWindow(Lcom/android/server/wm/WindowToken;)V
.end method

.method public abstract findAreaForWindowType(ILandroid/os/Bundle;ZZ)Lcom/android/server/wm/DisplayArea$Tokens;
.end method

.method public abstract getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
.end method

.method public abstract getDisplayAreas(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayArea<",
            "+",
            "Lcom/android/server/wm/WindowContainer;",
            ">;>;"
        }
    .end annotation
.end method
