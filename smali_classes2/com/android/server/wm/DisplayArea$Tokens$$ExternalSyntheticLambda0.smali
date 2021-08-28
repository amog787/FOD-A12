.class public final synthetic Lcom/android/server/wm/DisplayArea$Tokens$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayArea$Tokens;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayArea$Tokens;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayArea$Tokens$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayArea$Tokens;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Tokens$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayArea$Tokens;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayArea$Tokens;->lambda$new$0$DisplayArea$Tokens(Lcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
