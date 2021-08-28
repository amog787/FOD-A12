.class Lcom/android/server/statusbar/StatusBarManagerService$UiState;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/statusbar/StatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiState"
.end annotation


# instance fields
.field private mAppearance:I

.field private mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

.field private mBehavior:I

.field private mDisabled1:I

.field private mDisabled2:I

.field private mFullscreen:Z

.field private mImeBackDisposition:I

.field private mImeToken:Landroid/os/IBinder;

.field private mImeWindowVis:I

.field private mNavbarColorManagedByIme:Z

.field private mShowImeSwitcher:Z

.field private mTransientBarTypes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .locals 1

    .line 1106
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1107
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    .line 1108
    new-array v0, p1, [Lcom/android/internal/view/AppearanceRegion;

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 1109
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:Landroid/util/ArraySet;

    .line 1110
    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    .line 1112
    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mFullscreen:Z

    .line 1113
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    .line 1114
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    .line 1115
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    .line 1116
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    .line 1117
    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    .line 1118
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeToken:Landroid/os/IBinder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/statusbar/StatusBarManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p2, "x1"    # Lcom/android/server/statusbar/StatusBarManagerService$1;

    .line 1106
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/statusbar/StatusBarManagerService$UiState;I[Lcom/android/internal/view/AppearanceRegion;ZIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .param p1, "x1"    # I
    .param p2, "x2"    # [Lcom/android/internal/view/AppearanceRegion;
    .param p3, "x3"    # Z
    .param p4, "x4"    # I
    .param p5, "x5"    # Z

    .line 1106
    invoke-direct/range {p0 .. p5}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setBarAttributes(I[Lcom/android/internal/view/AppearanceRegion;ZIZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/statusbar/StatusBarManagerService$UiState;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .param p1, "x1"    # [I

    .line 1106
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->showTransient([I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/statusbar/StatusBarManagerService$UiState;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .param p1, "x1"    # [I

    .line 1106
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->clearTransient([I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1106
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->getDisabled2()I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/statusbar/StatusBarManagerService$UiState;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 1106
    invoke-direct {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->disableEquals(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/statusbar/StatusBarManagerService$UiState;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 1106
    invoke-direct {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setDisabled(II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/statusbar/StatusBarManagerService$UiState;IIZLandroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Landroid/os/IBinder;

    .line 1106
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setImeWindowState(IIZLandroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1106
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1106
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)[Lcom/android/internal/view/AppearanceRegion;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1106
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1106
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1106
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1106
    iget-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1106
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1106
    iget-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1106
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mBehavior:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1106
    iget-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mFullscreen:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1106
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->getDisabled1()I

    move-result v0

    return v0
.end method

.method private clearTransient([I)V
    .locals 5
    .param p1, "types"    # [I

    .line 1137
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 1138
    .local v2, "type":I
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1137
    .end local v2    # "type":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1140
    :cond_0
    return-void
.end method

.method private disableEquals(II)Z
    .locals 1
    .param p1, "disabled1"    # I
    .param p2, "disabled2"    # I

    .line 1156
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getDisabled1()I
    .locals 1

    .line 1143
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    return v0
.end method

.method private getDisabled2()I
    .locals 1

    .line 1147
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    return v0
.end method

.method private setBarAttributes(I[Lcom/android/internal/view/AppearanceRegion;ZIZ)V
    .locals 0
    .param p1, "appearance"    # I
    .param p2, "appearanceRegions"    # [Lcom/android/internal/view/AppearanceRegion;
    .param p3, "navbarColorManagedByIme"    # Z
    .param p4, "behavior"    # I
    .param p5, "isFullscreen"    # Z

    .line 1123
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    .line 1124
    iput-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 1125
    iput-boolean p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    .line 1126
    iput p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mBehavior:I

    .line 1127
    iput-boolean p5, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mFullscreen:Z

    .line 1128
    return-void
.end method

.method private setDisabled(II)V
    .locals 0
    .param p1, "disabled1"    # I
    .param p2, "disabled2"    # I

    .line 1151
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    .line 1152
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    .line 1153
    return-void
.end method

.method private setImeWindowState(IIZLandroid/os/IBinder;)V
    .locals 0
    .param p1, "vis"    # I
    .param p2, "backDisposition"    # I
    .param p3, "showImeSwitcher"    # Z
    .param p4, "token"    # Landroid/os/IBinder;

    .line 1161
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    .line 1162
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    .line 1163
    iput-boolean p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    .line 1164
    iput-object p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeToken:Landroid/os/IBinder;

    .line 1165
    return-void
.end method

.method private showTransient([I)V
    .locals 5
    .param p1, "types"    # [I

    .line 1131
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 1132
    .local v2, "type":I
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1131
    .end local v2    # "type":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1134
    :cond_0
    return-void
.end method
