.class Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;
.super Ljava/lang/Object;
.source "FontManagerService.java"

# interfaces
.implements Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/graphics/fonts/FontManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FsverityUtilImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/graphics/fonts/FontManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/graphics/fonts/FontManagerService$1;

    .line 156
    invoke-direct {p0}, Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public hasFsverity(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .line 159
    invoke-static {p1}, Lcom/android/internal/security/VerityUtils;->hasFsverity(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public rename(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dest"    # Ljava/io/File;

    .line 170
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public setUpFsverity(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "pkcs7Signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    invoke-static {p1, p2}, Lcom/android/internal/security/VerityUtils;->setUpFsverity(Ljava/lang/String;[B)V

    .line 165
    return-void
.end method
