.class public final Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;
.super Ljava/lang/Object;
.source "MultiClientInputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;,
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;,
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;,
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;,
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserState;,
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;,
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;,
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;,
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowHandleSource;,
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientIdSource;,
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientState;,
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;,
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;,
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final IME_CONNECTION_UNIFIED_BIND_FLAGS:I = 0x44000005

.field private static final PER_DISPLAY_FOCUS_DISABLED_WARNING_MSG:Ljava/lang/String; = "Consider rebuilding the system image after enabling config_perDisplayFocusEnabled to make IME focus compatible with multi-client IME mode."

.field private static final PER_DISPLAY_FOCUS_DISABLED_WARNING_TITLE:Ljava/lang/String; = "config_perDisplayFocusEnabled is not true."

.field private static final RECONNECT_DELAY_MSEC:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "MultiClientInputMethodManagerService"

.field private static final sImeComponentName:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 137
    sget-object v0, Lcom/android/server/inputmethod/InputMethodSystemProperty;->sMultiClientImeComponentName:Landroid/content/ComponentName;

    sput-object v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->sImeComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    .line 114
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->reportNotSupported()V

    return-void
.end method

.method static synthetic access$300()Landroid/content/ComponentName;
    .locals 1

    .line 114
    sget-object v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->sImeComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;ILandroid/content/ComponentName;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/content/ComponentName;

    .line 114
    invoke-static {p0, p1, p2}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->queryInputMethod(Landroid/content/Context;ILandroid/content/ComponentName;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    return-object v0
.end method

.method private static queryInputMethod(Landroid/content/Context;ILandroid/content/ComponentName;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 1175
    const/4 v0, 0x0

    const-string v1, "MultiClientInputMethodManagerService"

    if-nez p2, :cond_0

    .line 1176
    const-string/jumbo v2, "queryInputMethod invoked with null componentName"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    return-object v0

    .line 1181
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1182
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.inputmethodservice.MultiClientInputMethodService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1184
    invoke-virtual {v3, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    const/16 v4, 0x80

    .line 1182
    invoke-virtual {v2, v3, v4, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 1187
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :try_start_0
    new-instance v4, Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v3}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->resolveMultiClientImeService(Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 1188
    :catch_0
    move-exception v4

    .line 1189
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load input method from services ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1191
    .end local v4    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private static reportNotSupported()V
    .locals 0

    .line 144
    return-void
.end method

.method static resolveMultiClientImeService(Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 1203
    .local p0, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MultiClientInputMethodManagerService"

    if-eqz v0, :cond_0

    .line 1204
    const-string v0, "No IME found"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    return-object v1

    .line 1207
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    .line 1208
    const-string v0, "Only one IME service is supported."

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    return-object v1

    .line 1211
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1212
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1213
    .local v4, "si":Landroid/content/pm/ServiceInfo;
    invoke-static {v0}, Landroid/view/inputmethod/InputMethodInfo;->computeId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v5

    .line 1214
    .local v5, "imeId":Ljava/lang/String;
    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v7, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " must have required"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    return-object v1

    .line 1219
    :cond_2
    sget-boolean v6, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v6, :cond_3

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v6

    if-nez v3, :cond_3

    .line 1220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " must be pre-installed when Build.IS_DEBUGGABLE is false"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    return-object v1

    .line 1223
    :cond_3
    return-object v0
.end method
