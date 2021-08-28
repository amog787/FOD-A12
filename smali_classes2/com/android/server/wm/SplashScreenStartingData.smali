.class Lcom/android/server/wm/SplashScreenStartingData;
.super Lcom/android/server/wm/StartingData;
.source "SplashScreenStartingData.java"


# instance fields
.field private final mCompatInfo:Landroid/content/res/CompatibilityInfo;

.field private final mIcon:I

.field private final mLabelRes:I

.field private final mLogo:I

.field private final mMergedOverrideConfiguration:Landroid/content/res/Configuration;

.field private final mNonLocalizedLabel:Ljava/lang/CharSequence;

.field private final mPkg:Ljava/lang/String;

.field private final mTheme:I

.field private final mWindowFlags:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;I)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "theme"    # I
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p5, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p6, "labelRes"    # I
    .param p7, "icon"    # I
    .param p8, "logo"    # I
    .param p9, "windowFlags"    # I
    .param p10, "mergedOverrideConfiguration"    # Landroid/content/res/Configuration;
    .param p11, "typeParams"    # I

    .line 42
    invoke-direct {p0, p1, p11}, Lcom/android/server/wm/StartingData;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    .line 43
    iput-object p2, p0, Lcom/android/server/wm/SplashScreenStartingData;->mPkg:Ljava/lang/String;

    .line 44
    iput p3, p0, Lcom/android/server/wm/SplashScreenStartingData;->mTheme:I

    .line 45
    iput-object p4, p0, Lcom/android/server/wm/SplashScreenStartingData;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 46
    iput-object p5, p0, Lcom/android/server/wm/SplashScreenStartingData;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    .line 47
    iput p6, p0, Lcom/android/server/wm/SplashScreenStartingData;->mLabelRes:I

    .line 48
    iput p7, p0, Lcom/android/server/wm/SplashScreenStartingData;->mIcon:I

    .line 49
    iput p8, p0, Lcom/android/server/wm/SplashScreenStartingData;->mLogo:I

    .line 50
    iput p9, p0, Lcom/android/server/wm/SplashScreenStartingData;->mWindowFlags:I

    .line 51
    iput-object p10, p0, Lcom/android/server/wm/SplashScreenStartingData;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 52
    return-void
.end method


# virtual methods
.method createStartingSurface(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    .locals 13
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/SplashScreenStartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    iget-object v3, p0, Lcom/android/server/wm/SplashScreenStartingData;->mPkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/wm/SplashScreenStartingData;->mTheme:I

    iget-object v5, p0, Lcom/android/server/wm/SplashScreenStartingData;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v6, p0, Lcom/android/server/wm/SplashScreenStartingData;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    iget v7, p0, Lcom/android/server/wm/SplashScreenStartingData;->mLabelRes:I

    iget v8, p0, Lcom/android/server/wm/SplashScreenStartingData;->mIcon:I

    iget v9, p0, Lcom/android/server/wm/SplashScreenStartingData;->mLogo:I

    iget v10, p0, Lcom/android/server/wm/SplashScreenStartingData;->mWindowFlags:I

    iget-object v11, p0, Lcom/android/server/wm/SplashScreenStartingData;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 59
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v12

    .line 56
    move-object v2, p1

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/wm/StartingSurfaceController;->createSplashScreenStartingSurface(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;I)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    move-result-object v0

    return-object v0
.end method

.method needRevealAnimation()Z
    .locals 1

    .line 64
    const/4 v0, 0x1

    return v0
.end method
