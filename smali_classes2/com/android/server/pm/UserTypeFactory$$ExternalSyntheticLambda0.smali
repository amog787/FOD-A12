.class public final synthetic Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserTypeDetails$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/UserTypeDetails$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/UserTypeDetails$Builder;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeNoBackground(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    return-void
.end method
