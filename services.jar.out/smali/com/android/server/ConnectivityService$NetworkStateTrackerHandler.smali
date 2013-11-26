.class Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateTrackerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 3087
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 3088
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3089
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 3094
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 3167
    :cond_0
    :goto_0
    return-void

    .line 3096
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    .line 3097
    .local v1, info:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 3098
    .local v3, type:I
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 3102
    .local v2, state:Landroid/net/NetworkInfo$State;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ConnectivityChange for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    .line 3114
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v5

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v5

    shl-int/lit8 v5, v5, 0xa

    or-int v0, v4, v5

    .line 3117
    .local v0, eventLogParam:I
    const v4, 0xc364

    invoke-static {v4, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 3120
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_2

    .line 3122
    iget-object v4, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleConnectionFailure(Landroid/net/NetworkInfo;)V
    invoke-static {v4, v1}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    .line 3150
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;)Lcom/android/server/net/LockdownVpnTracker;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3151
    iget-object v4, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;)Lcom/android/server/net/LockdownVpnTracker;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/net/LockdownVpnTracker;->onNetworkInfoChanged(Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 3123
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_3

    .line 3125
    iget-object v4, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleCaptivePortalTrackerCheck(Landroid/net/NetworkInfo;)V
    invoke-static {v4, v1}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto :goto_1

    .line 3126
    :cond_3
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v4, :cond_4

    .line 3127
    iget-object v4, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleDisconnect(Landroid/net/NetworkInfo;)V
    invoke-static {v4, v1}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto :goto_1

    .line 3128
    :cond_4
    sget-object v4, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v2, v4, :cond_7

    .line 3136
    const-string v4, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Change to Suspend_State due to reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with network="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v4

    const-string v5, "2GVoiceCallStarted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    if-nez v4, :cond_6

    .line 3141
    :cond_5
    const-string v4, "CDS/Srv"

    const-string v5, "Suspend PS TX/RX Temporarily without deactivating PDP context"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3142
    iget-object v4, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->sendSuspendedBroadcast(Landroid/net/NetworkInfo;)V
    invoke-static {v4, v1}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_1

    .line 3144
    :cond_6
    const-string v4, "CDS/Srv"

    const-string v5, "Switch to Suspend:invoke handleDisconnect()"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3145
    iget-object v4, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleDisconnect(Landroid/net/NetworkInfo;)V
    invoke-static {v4, v1}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_1

    .line 3147
    :cond_7
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v4, :cond_1

    .line 3148
    iget-object v4, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleConnect(Landroid/net/NetworkInfo;)V
    invoke-static {v4, v1}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_1

    .line 3155
    .end local v0           #eventLogParam:I
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v2           #state:Landroid/net/NetworkInfo$State;
    .end local v3           #type:I
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    .line 3159
    .restart local v1       #info:Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    const/4 v6, 0x0

    #calls: Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V
    invoke-static {v4, v5, v6}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_0

    .line 3162
    .end local v1           #info:Landroid/net/NetworkInfo;
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    .line 3163
    .restart local v1       #info:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 3164
    .restart local v3       #type:I
    iget-object v4, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V

    goto/16 :goto_0

    .line 3094
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method
