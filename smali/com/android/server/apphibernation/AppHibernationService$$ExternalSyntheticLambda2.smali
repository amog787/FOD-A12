.class public final synthetic Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/apphibernation/AppHibernationService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/apphibernation/AppHibernationService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/apphibernation/AppHibernationService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {v0}, Lcom/android/server/apphibernation/AppHibernationService;->lambda$onBootPhase$0$AppHibernationService()V

    return-void
.end method
