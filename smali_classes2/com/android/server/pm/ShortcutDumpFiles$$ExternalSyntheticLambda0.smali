.class public final synthetic Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 0

    invoke-static {p1}, Lcom/android/server/pm/ShortcutDumpFiles;->lambda$dumpAll$1(Ljava/io/File;)Z

    move-result p1

    return p1
.end method
