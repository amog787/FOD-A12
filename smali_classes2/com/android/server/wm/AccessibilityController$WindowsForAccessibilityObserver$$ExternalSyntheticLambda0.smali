.class public final synthetic Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    check-cast p1, Lcom/android/server/wm/ShellRoot;

    check-cast p2, Lcom/android/server/wm/ShellRoot;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->lambda$getSortedShellRoots$0$AccessibilityController$WindowsForAccessibilityObserver(Lcom/android/server/wm/ShellRoot;Lcom/android/server/wm/ShellRoot;)I

    move-result p1

    return p1
.end method
