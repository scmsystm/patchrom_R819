.class Landroid/server/BluetoothSocketService$Reaper;
.super Ljava/lang/Object;
.source "BluetoothSocketService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothSocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Reaper"
.end annotation


# instance fields
.field mHandle:I

.field mPid:I

.field final synthetic this$0:Landroid/server/BluetoothSocketService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothSocketService;II)V
    .locals 0
    .parameter
    .parameter "handle"
    .parameter "pid"

    .prologue
    iput-object p1, p0, Landroid/server/BluetoothSocketService$Reaper;->this$0:Landroid/server/BluetoothSocketService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Landroid/server/BluetoothSocketService$Reaper;->mPid:I

    iput p2, p0, Landroid/server/BluetoothSocketService$Reaper;->mHandle:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    .prologue
    iget-object v2, p0, Landroid/server/BluetoothSocketService$Reaper;->this$0:Landroid/server/BluetoothSocketService;

    monitor-enter v2

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tracked app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/server/BluetoothSocketService$Reaper;->mPid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " died"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/server/BluetoothSocketService;->access$000(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/server/BluetoothSocketService$Reaper;->this$0:Landroid/server/BluetoothSocketService;

    #getter for: Landroid/server/BluetoothSocketService;->mServiceRecordToPid:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/server/BluetoothSocketService;->access$100(Landroid/server/BluetoothSocketService;)Ljava/util/HashMap;

    move-result-object v1

    iget v3, p0, Landroid/server/BluetoothSocketService$Reaper;->mHandle:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/server/BluetoothSocketService$ServiceRecordClient;

    .local v0, client:Landroid/server/BluetoothSocketService$ServiceRecordClient;
    if-eqz v0, :cond_1

    iget v1, p0, Landroid/server/BluetoothSocketService$Reaper;->mPid:I

    iget v3, v0, Landroid/server/BluetoothSocketService$ServiceRecordClient;->pid:I

    if-ne v1, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing service record "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/server/BluetoothSocketService$Reaper;->mHandle:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for pid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/server/BluetoothSocketService$Reaper;->mPid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/server/BluetoothSocketService;->access$000(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/server/BluetoothSocketService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/server/BluetoothSocketService$ServiceRecordClient;->binder:Landroid/os/IBinder;

    iget-object v3, v0, Landroid/server/BluetoothSocketService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    iget-object v1, p0, Landroid/server/BluetoothSocketService$Reaper;->this$0:Landroid/server/BluetoothSocketService;

    #getter for: Landroid/server/BluetoothSocketService;->mServiceRecordToPid:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/server/BluetoothSocketService;->access$100(Landroid/server/BluetoothSocketService;)Ljava/util/HashMap;

    move-result-object v1

    iget v3, p0, Landroid/server/BluetoothSocketService$Reaper;->mHandle:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/server/BluetoothSocketService$Reaper;->this$0:Landroid/server/BluetoothSocketService;

    iget v3, p0, Landroid/server/BluetoothSocketService$Reaper;->mHandle:I

    #calls: Landroid/server/BluetoothSocketService;->abortNative(I)I
    invoke-static {v1, v3}, Landroid/server/BluetoothSocketService;->access$200(Landroid/server/BluetoothSocketService;I)I

    iget-object v1, p0, Landroid/server/BluetoothSocketService$Reaper;->this$0:Landroid/server/BluetoothSocketService;

    iget v3, p0, Landroid/server/BluetoothSocketService$Reaper;->mHandle:I

    #calls: Landroid/server/BluetoothSocketService;->destroyNative(I)I
    invoke-static {v1, v3}, Landroid/server/BluetoothSocketService;->access$300(Landroid/server/BluetoothSocketService;I)I

    :cond_1
    monitor-exit v2

    return-void

    .end local v0           #client:Landroid/server/BluetoothSocketService$ServiceRecordClient;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
