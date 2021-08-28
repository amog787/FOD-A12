.class final Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VibratorManagerRecords"
.end annotation


# instance fields
.field private final mPreviousExternalVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/vibrator/Vibration$DebugInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousVibrations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/vibrator/Vibration$DebugInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPreviousVibrationsLimit:I

.field final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;I)V
    .locals 0
    .param p2, "limit"    # I

    .line 1181
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1173
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousVibrations:Landroid/util/SparseArray;

    .line 1176
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousExternalVibrations:Ljava/util/LinkedList;

    .line 1182
    iput p2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousVibrationsLimit:I

    .line 1183
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;ILcom/android/server/vibrator/VibratorManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/vibrator/VibratorManagerService;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/server/vibrator/VibratorManagerService$1;

    .line 1172
    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;-><init>(Lcom/android/server/vibrator/VibratorManagerService;I)V

    return-void
.end method


# virtual methods
.method declared-synchronized dumpProto(Ljava/io/FileDescriptor;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    monitor-enter p0

    .line 1249
    :try_start_0
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1251
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->access$100(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1252
    :try_start_1
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v2}, Lcom/android/server/vibrator/VibratorManagerService;->access$1300(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/vibrator/VibrationSettings;->dumpProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 1253
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v2}, Lcom/android/server/vibrator/VibratorManagerService;->access$200(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    .line 1254
    :try_start_2
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v2}, Lcom/android/server/vibrator/VibratorManagerService;->access$200(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationThread;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/vibrator/Vibration;->getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;

    move-result-object v2

    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1298
    :catchall_0
    move-exception v2

    goto/16 :goto_6

    .line 1257
    :cond_0
    :goto_0
    :try_start_3
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v2}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 1258
    :try_start_4
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v2}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;

    move-result-object v2

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1262
    :cond_1
    const/4 v2, 0x0

    .line 1263
    .local v2, "isVibrating":Z
    const/4 v3, 0x0

    .line 1264
    .local v3, "isUnderExternalControl":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    :try_start_5
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v5}, Lcom/android/server/vibrator/VibratorManagerService;->access$1400(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-ge v4, v5, :cond_2

    .line 1265
    const-wide v5, 0x20500000001L

    :try_start_6
    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v7}, Lcom/android/server/vibrator/VibratorManagerService;->access$1400(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1266
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v5}, Lcom/android/server/vibrator/VibratorManagerService;->access$1400(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v5}, Lcom/android/server/vibrator/VibratorController;->isVibrating()Z

    move-result v5

    or-int/2addr v2, v5

    .line 1267
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v5}, Lcom/android/server/vibrator/VibratorManagerService;->access$1400(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v5}, Lcom/android/server/vibrator/VibratorController;->isUnderExternalControl()Z

    move-result v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    or-int/2addr v3, v5

    .line 1264
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1269
    .end local v4    # "i":I
    :cond_2
    const-wide v4, 0x10800000003L

    :try_start_7
    invoke-virtual {v0, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1270
    const-wide v4, 0x10800000005L

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1273
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousVibrations:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-ge v4, v5, :cond_4

    .line 1275
    :try_start_8
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousVibrations:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 1287
    const-wide v5, 0x20b00000010L

    .local v5, "fieldId":J
    goto :goto_3

    .line 1280
    .end local v5    # "fieldId":J
    :sswitch_0
    const-wide v5, 0x20b0000000eL

    .line 1282
    .restart local v5    # "fieldId":J
    goto :goto_3

    .line 1277
    .end local v5    # "fieldId":J
    :sswitch_1
    const-wide v5, 0x20b0000000dL

    .line 1278
    .restart local v5    # "fieldId":J
    goto :goto_3

    .line 1284
    .end local v5    # "fieldId":J
    :sswitch_2
    const-wide v5, 0x20b0000000fL

    .line 1285
    .restart local v5    # "fieldId":J
    nop

    .line 1289
    :goto_3
    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousVibrations:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/vibrator/Vibration$DebugInfo;

    .line 1290
    .local v8, "info":Lcom/android/server/vibrator/Vibration$DebugInfo;
    invoke-virtual {v8, v0, v5, v6}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1291
    .end local v8    # "info":Lcom/android/server/vibrator/Vibration$DebugInfo;
    goto :goto_4

    .line 1273
    .end local v5    # "fieldId":J
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1294
    .end local v4    # "i":I
    :cond_4
    :try_start_9
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousExternalVibrations:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v5, :cond_5

    :try_start_a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/vibrator/Vibration$DebugInfo;

    .line 1295
    .local v5, "info":Lcom/android/server/vibrator/Vibration$DebugInfo;
    const-wide v6, 0x20b00000011L

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1297
    .end local v5    # "info":Lcom/android/server/vibrator/Vibration$DebugInfo;
    goto :goto_5

    .line 1298
    .end local v2    # "isVibrating":Z
    .end local v3    # "isUnderExternalControl":Z
    :cond_5
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1299
    :try_start_c
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1300
    monitor-exit p0

    return-void

    .line 1298
    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;
    :catchall_1
    move-exception v2

    :goto_6
    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1248
    .end local v0    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_1
        0x31 -> :sswitch_0
    .end sparse-switch
.end method

.method dumpText(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1208
    const-string v0, "Vibrator Manager Service:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1209
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->access$100(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1210
    :try_start_0
    const-string v1, "  mVibrationSettings:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v2}, Lcom/android/server/vibrator/VibratorManagerService;->access$1300(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSettings;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1212
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1213
    const-string v1, "  mVibratorControllers:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1214
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v2}, Lcom/android/server/vibrator/VibratorManagerService;->access$1400(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v3}, Lcom/android/server/vibrator/VibratorManagerService;->access$1400(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1217
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1218
    const-string v1, "  mCurrentVibration:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v2}, Lcom/android/server/vibrator/VibratorManagerService;->access$200(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 1220
    move-object v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v2}, Lcom/android/server/vibrator/VibratorManagerService;->access$200(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationThread;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/vibrator/Vibration;->getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1219
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1221
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1222
    const-string v1, "  mNextVibration:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v2}, Lcom/android/server/vibrator/VibratorManagerService;->access$400(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1224
    move-object v2, v3

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v2}, Lcom/android/server/vibrator/VibratorManagerService;->access$400(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationThread;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/vibrator/Vibration;->getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1223
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1225
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1226
    const-string v1, "  mCurrentExternalVibration:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v2}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1228
    :goto_3
    goto :goto_4

    :cond_3
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v2}, Lcom/android/server/vibrator/VibratorManagerService;->access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;

    move-result-object v3

    goto :goto_3

    :goto_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1227
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1229
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1230
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousVibrations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1231
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1232
    const-string v2, "  Previous vibrations for usage "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1233
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousVibrations:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1234
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1235
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousVibrations:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vibrator/Vibration$DebugInfo;

    .line 1236
    .local v3, "info":Lcom/android/server/vibrator/Vibration$DebugInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1237
    .end local v3    # "info":Lcom/android/server/vibrator/Vibration$DebugInfo;
    goto :goto_6

    .line 1230
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1240
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1241
    const-string v1, "  Previous external vibrations:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1242
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousExternalVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/vibrator/Vibration$DebugInfo;

    .line 1243
    .local v2, "info":Lcom/android/server/vibrator/Vibration$DebugInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1244
    .end local v2    # "info":Lcom/android/server/vibrator/Vibration$DebugInfo;
    goto :goto_7

    .line 1245
    :cond_6
    monitor-exit v0

    .line 1246
    return-void

    .line 1245
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method record(Lcom/android/server/vibrator/Vibration;)V
    .locals 3
    .param p1, "vib"    # Lcom/android/server/vibrator/Vibration;

    .line 1187
    iget-object v0, p1, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    .line 1188
    .local v0, "usage":I
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousVibrations:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1189
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousVibrations:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1191
    :cond_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousVibrations:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/android/server/vibrator/Vibration;->getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->record(Ljava/util/LinkedList;Lcom/android/server/vibrator/Vibration$DebugInfo;)V

    .line 1192
    return-void
.end method

.method record(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;)V
    .locals 2
    .param p1, "vib"    # Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 1196
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousExternalVibrations:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->record(Ljava/util/LinkedList;Lcom/android/server/vibrator/Vibration$DebugInfo;)V

    .line 1197
    return-void
.end method

.method record(Ljava/util/LinkedList;Lcom/android/server/vibrator/Vibration$DebugInfo;)V
    .locals 2
    .param p2, "info"    # Lcom/android/server/vibrator/Vibration$DebugInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/vibrator/Vibration$DebugInfo;",
            ">;",
            "Lcom/android/server/vibrator/Vibration$DebugInfo;",
            ")V"
        }
    .end annotation

    .line 1201
    .local p1, "records":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/vibrator/Vibration$DebugInfo;>;"
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousVibrationsLimit:I

    if-le v0, v1, :cond_0

    .line 1202
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 1204
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1205
    return-void
.end method
