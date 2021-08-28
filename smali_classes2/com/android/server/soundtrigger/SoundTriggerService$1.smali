.class Lcom/android/server/soundtrigger/SoundTriggerService$1;
.super Ljava/lang/Object;
.source "SoundTriggerService.java"

# interfaces
.implements Lcom/android/server/soundtrigger/SoundTriggerHelper$SoundTriggerModuleProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/soundtrigger/SoundTriggerService;->newSoundTriggerHelper()Lcom/android/server/soundtrigger/SoundTriggerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

.field final synthetic val$middlemanIdentity:Landroid/media/permission/Identity;

.field final synthetic val$originatorIdentity:Landroid/media/permission/Identity;


# direct methods
.method constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/media/permission/Identity;Landroid/media/permission/Identity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 224
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$1;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$1;->val$middlemanIdentity:Landroid/media/permission/Identity;

    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$1;->val$originatorIdentity:Landroid/media/permission/Identity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getModule(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;)Landroid/hardware/soundtrigger/SoundTriggerModule;
    .locals 3
    .param p1, "moduleId"    # I
    .param p2, "statusListener"    # Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    .line 234
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$1;->val$middlemanIdentity:Landroid/media/permission/Identity;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$1;->val$originatorIdentity:Landroid/media/permission/Identity;

    const/4 v2, 0x0

    invoke-static {p1, p2, v2, v0, v1}, Landroid/hardware/soundtrigger/SoundTrigger;->attachModuleAsMiddleman(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;Landroid/media/permission/Identity;Landroid/media/permission/Identity;)Landroid/hardware/soundtrigger/SoundTriggerModule;

    move-result-object v0

    return-object v0
.end method

.method public listModuleProperties(Ljava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
            ">;)I"
        }
    .end annotation

    .line 227
    .local p1, "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;>;"
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$1;->val$middlemanIdentity:Landroid/media/permission/Identity;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$1;->val$originatorIdentity:Landroid/media/permission/Identity;

    invoke-static {p1, v0, v1}, Landroid/hardware/soundtrigger/SoundTrigger;->listModulesAsMiddleman(Ljava/util/ArrayList;Landroid/media/permission/Identity;Landroid/media/permission/Identity;)I

    move-result v0

    return v0
.end method
