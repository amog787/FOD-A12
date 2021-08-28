.class Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;
.super Landroid/telephony/PhoneStateListener;
.source "DataConnectionStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/DataConnectionStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneStateListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/DataConnectionStats;


# direct methods
.method constructor <init>(Lcom/android/server/am/DataConnectionStats;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 165
    iput-object p1, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    .line 166
    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/util/concurrent/Executor;)V

    .line 167
    return-void
.end method


# virtual methods
.method public onDataActivity(I)V
    .locals 1
    .param p1, "direction"    # I

    .line 189
    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    invoke-static {v0}, Lcom/android/server/am/DataConnectionStats;->access$300(Lcom/android/server/am/DataConnectionStats;)V

    .line 190
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .line 183
    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    invoke-static {v0, p1}, Lcom/android/server/am/DataConnectionStats;->access$402(Lcom/android/server/am/DataConnectionStats;I)I

    .line 184
    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    invoke-static {v0}, Lcom/android/server/am/DataConnectionStats;->access$300(Lcom/android/server/am/DataConnectionStats;)V

    .line 185
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .line 176
    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    invoke-static {v0, p1}, Lcom/android/server/am/DataConnectionStats;->access$102(Lcom/android/server/am/DataConnectionStats;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 177
    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/DataConnectionStats;->access$202(Lcom/android/server/am/DataConnectionStats;I)I

    .line 178
    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    invoke-static {v0}, Lcom/android/server/am/DataConnectionStats;->access$300(Lcom/android/server/am/DataConnectionStats;)V

    .line 179
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 171
    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    invoke-static {v0, p1}, Lcom/android/server/am/DataConnectionStats;->access$002(Lcom/android/server/am/DataConnectionStats;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 172
    return-void
.end method
