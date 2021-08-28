.class Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;
.super Ljava/lang/Object;
.source "GlobalKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlobalKeyAction"
.end annotation


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mDispatchWhenNonInteractive:Z

.field final synthetic this$0:Lcom/android/server/policy/GlobalKeyManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalKeyManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalKeyManager;
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "dispatchWhenNonInteractive"    # Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->this$0:Lcom/android/server/policy/GlobalKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->mComponentName:Landroid/content/ComponentName;

    .line 120
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->mDispatchWhenNonInteractive:Z

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    .line 115
    iget-object v0, p0, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    .line 115
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->mDispatchWhenNonInteractive:Z

    return v0
.end method
