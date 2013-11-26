.class public Landroid/server/BluetoothSocketService;
.super Landroid/bluetooth/IBluetoothSocket$Stub;
.source "BluetoothSocketService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/BluetoothSocketService$1;,
        Landroid/server/BluetoothSocketService$Reaper;,
        Landroid/server/BluetoothSocketService$ServiceRecordClient;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field public static final BLUETOOTH_SOCKET_SERVICE:Ljava/lang/String; = "bluetooth_socket"

.field private static final TAG:Ljava/lang/String; = "BTSocketService"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothService:Landroid/server/BluetoothService;

.field private final mContext:Landroid/content/Context;

.field private final mServiceRecordToPid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/server/BluetoothSocketService$ServiceRecordClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .locals 2
    .parameter "context"
    .parameter "bluetoothService"

    .prologue
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothSocket$Stub;-><init>()V

    const-string v0, "[JSR82][Service] Initialization Constructor +++"

    invoke-static {v0}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/server/BluetoothSocketService;->mBluetoothService:Landroid/server/BluetoothService;

    iget-object v0, p0, Landroid/server/BluetoothSocketService;->mBluetoothService:Landroid/server/BluetoothService;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "[JSR82][Service] This platform does not support Bluetooth."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    const-string v0, "[JSR82][Service] Bluetooth Adapter does not exist!!"

    invoke-static {v0}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Landroid/server/BluetoothSocketService;->initNative()V

    iget-object v0, p0, Landroid/server/BluetoothSocketService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "[JSR82][Service] Bluetooth is not enabled!!"

    invoke-static {v0}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    :cond_2
    const-string v0, "[JSR82][Service] Initialization Constructor ---"

    invoke-static {v0}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothSocketService;->mServiceRecordToPid:Ljava/util/HashMap;

    return-void
.end method

.method private native abortNative(I)I
.end method

.method private native acceptNative(II)I
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-static {p0}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/server/BluetoothSocketService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/server/BluetoothSocketService;->mServiceRecordToPid:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Landroid/server/BluetoothSocketService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/server/BluetoothSocketService;->abortNative(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/server/BluetoothSocketService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/server/BluetoothSocketService;->destroyNative(I)I

    move-result v0

    return v0
.end method

.method private native availableNative(I)I
.end method

.method private native bindListenNative(I)I
.end method

.method private native cleanupNative()V
.end method

.method private native connectNative(ILjava/lang/String;I)I
.end method

.method private native destroyNative(I)I
.end method

.method private native getAddrNative(I)Ljava/lang/String;
.end method

.method private native getRealServerChannelNative(I)I
.end method

.method private native initNative()V
.end method

.method private native initSocketNative(IZZI)I
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    const-string v0, "BTSocketService"

    invoke-static {v0, p0}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private native readNative([BIII)I
.end method

.method private native throwErrnoNative(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native writeNative([BIII)I
.end method


# virtual methods
.method public abort(I)I
    .locals 4
    .parameter "fdHandle"

    .prologue
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "[JSR82][Service] abort"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v1, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Landroid/server/BluetoothSocketService;->abortNative(I)I

    move-result v0

    .local v0, result:I
    goto :goto_0
.end method

.method public accept(II)I
    .locals 4
    .parameter "timeout"
    .parameter "fdHandle"

    .prologue
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "[JSR82][Service] accept"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v1, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothSocketService;->acceptNative(II)I

    move-result v0

    .local v0, result:I
    goto :goto_0
.end method

.method public available(I)I
    .locals 4
    .parameter "fdHandle"

    .prologue
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "[JSR82][Service] available"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v1, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothSocketService;->availableNative(I)I

    move-result v0

    .local v0, result:I
    goto :goto_0
.end method

.method public bindListen(I)I
    .locals 4
    .parameter "fdHandle"

    .prologue
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "[JSR82][Service] bindListen"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v1, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothSocketService;->bindListenNative(I)I

    move-result v0

    .local v0, result:I
    goto :goto_0
.end method

.method public connect(ILjava/lang/String;I)I
    .locals 4
    .parameter "fdHandle"
    .parameter "sAddr"
    .parameter "channelNumber"

    .prologue
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "[JSR82][Service] connect"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v1, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/server/BluetoothSocketService;->connectNative(ILjava/lang/String;I)I

    move-result v0

    .local v0, result:I
    goto :goto_0
.end method

.method public destroy(I)I
    .locals 4
    .parameter "fdHandle"

    .prologue
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "[JSR82][Service] destroy"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v1, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Landroid/server/BluetoothSocketService;->destroyNative(I)I

    move-result v0

    .local v0, result:I
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothSocketService;->cleanupNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Landroid/bluetooth/IBluetoothSocket$Stub;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/bluetooth/IBluetoothSocket$Stub;->finalize()V

    throw v0
.end method

.method public getAddr(I)Ljava/lang/String;
    .locals 3
    .parameter "fdHandle"

    .prologue
    iget-object v0, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[JSR82][Service] getAddr"

    invoke-static {v0}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v0}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothSocketService;->getAddrNative(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRealServerChannel(I)I
    .locals 3
    .parameter "channelOriginal"

    .prologue
    iget-object v0, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[JSR82][Service] getRealServerChannel. channelOriginal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v0}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothSocketService;->getRealServerChannelNative(I)I

    move-result v0

    goto :goto_0
.end method

.method public initSocket(IZZILandroid/os/IBinder;)I
    .locals 7
    .parameter "type"
    .parameter "auth"
    .parameter "encrypt"
    .parameter "port"
    .parameter "b"

    .prologue
    const/4 v6, 0x0

    iget-object v3, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[JSR82][Service] initSocket"

    invoke-static {v3}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const-string v3, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v3}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    const/4 v2, -0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/server/BluetoothSocketService;->initSocketNative(IZZI)I

    move-result v2

    .local v2, result:I
    if-ltz v2, :cond_0

    new-instance v0, Landroid/server/BluetoothSocketService$ServiceRecordClient;

    invoke-direct {v0, v6}, Landroid/server/BluetoothSocketService$ServiceRecordClient;-><init>(Landroid/server/BluetoothSocketService$1;)V

    .local v0, client:Landroid/server/BluetoothSocketService$ServiceRecordClient;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    iput v3, v0, Landroid/server/BluetoothSocketService$ServiceRecordClient;->pid:I

    iput-object p5, v0, Landroid/server/BluetoothSocketService$ServiceRecordClient;->binder:Landroid/os/IBinder;

    new-instance v3, Landroid/server/BluetoothSocketService$Reaper;

    iget v4, v0, Landroid/server/BluetoothSocketService$ServiceRecordClient;->pid:I

    invoke-direct {v3, p0, v2, v4}, Landroid/server/BluetoothSocketService$Reaper;-><init>(Landroid/server/BluetoothSocketService;II)V

    iput-object v3, v0, Landroid/server/BluetoothSocketService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;

    iget-object v3, p0, Landroid/server/BluetoothSocketService;->mServiceRecordToPid:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v3, v0, Landroid/server/BluetoothSocketService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {p5, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    iput-object v6, v0, Landroid/server/BluetoothSocketService$ServiceRecordClient;->death:Landroid/os/IBinder$DeathRecipient;

    goto :goto_0
.end method

.method public read([BIII)I
    .locals 4
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .parameter "fdHandle"

    .prologue
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v1, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/server/BluetoothSocketService;->readNative([BIII)I

    move-result v0

    .local v0, result:I
    goto :goto_0
.end method

.method public throwErrno(II)V
    .locals 4
    .parameter "errno"
    .parameter "fdHandle"

    .prologue
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "[JSR82][Service] throwErrno"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothSocketService;->throwErrnoNative(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    :try_start_1
    const-string v1, "BTSocketService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    goto :goto_0
.end method

.method public write([BIII)I
    .locals 4
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .parameter "fdHandle"

    .prologue
    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/server/BluetoothSocketService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v1, "[JSR82][Service] ERROR! Bluetooth is not enabled!"

    invoke-static {v1}, Landroid/server/BluetoothSocketService;->log(Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/server/BluetoothSocketService;->writeNative([BIII)I

    move-result v0

    .local v0, result:I
    goto :goto_0
.end method
