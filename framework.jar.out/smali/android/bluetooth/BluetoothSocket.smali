.class public final Landroid/bluetooth/BluetoothSocket;
.super Ljava/lang/Object;
.source "BluetoothSocket.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothSocket$SdpHelper;,
        Landroid/bluetooth/BluetoothSocket$SocketState;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothSocket;",
            ">;"
        }
    .end annotation
.end field

.field static final EADDRINUSE:I = 0x62

.field static final EBADFD:I = 0x4d

.field public static final MAX_RFCOMM_CHANNEL:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "BluetoothSocket"

.field private static final TAG_2:Ljava/lang/String; = "BluetoothSocket_MTK"

.field static final TYPE_L2CAP:I = 0x3

.field static final TYPE_RFCOMM:I = 0x1

.field static final TYPE_SCO:I = 0x2


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mAuth:Z

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mEncrypt:Z

.field private mFdHandle:I

.field private final mInputStream:Landroid/bluetooth/BluetoothInputStream;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

.field private mPort:I

.field private final mSdp:Landroid/bluetooth/BluetoothSocket$SdpHelper;

.field private mService:Landroid/bluetooth/IBluetoothSocket;

.field private mSocketData:I

.field private mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 330
    new-instance v0, Landroid/bluetooth/BluetoothSocket$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothSocket$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothSocket;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V
    .locals 8
    .parameter "type"
    .parameter "fd"
    .parameter "auth"
    .parameter "encrypt"
    .parameter "device"
    .parameter "port"
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const-string v0, "BluetoothSocket_MTK"

    const-string v1, "[JSR82] Bluetooth Socket Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v0, "BluetoothSocket_MTK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JSR82] type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " auth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " encrypt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-nez p7, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 187
    if-gez p6, :cond_0

    .line 188
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid RFCOMM channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    if-nez p7, :cond_2

    .line 192
    iput p6, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSdp:Landroid/bluetooth/BluetoothSocket$SdpHelper;

    .line 198
    :goto_0
    iput p1, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    .line 199
    iput-boolean p3, p0, Landroid/bluetooth/BluetoothSocket;->mAuth:Z

    .line 200
    iput-boolean p4, p0, Landroid/bluetooth/BluetoothSocket;->mEncrypt:Z

    .line 201
    iput-object p5, p0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 202
    if-nez p5, :cond_3

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mAddress:Ljava/lang/String;

    .line 208
    :goto_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    if-nez v0, :cond_1

    .line 209
    const-string v0, "bluetooth_socket"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 210
    .local v6, binder:Landroid/os/IBinder;
    if-eqz v6, :cond_4

    .line 211
    invoke-static {v6}, Landroid/bluetooth/IBluetoothSocket$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSocket;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    .line 218
    .end local v6           #binder:Landroid/os/IBinder;
    :cond_1
    :goto_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    if-nez v0, :cond_5

    .line 220
    new-instance v0, Ljava/io/IOException;

    const-string v1, "[JSR82] BluetoothSocket: IBluetoothSocket is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_2
    new-instance v0, Landroid/bluetooth/BluetoothSocket$SdpHelper;

    invoke-direct {v0, p5, p7}, Landroid/bluetooth/BluetoothSocket$SdpHelper;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSdp:Landroid/bluetooth/BluetoothSocket$SdpHelper;

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    goto :goto_0

    .line 205
    :cond_3
    invoke-virtual {p5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mAddress:Ljava/lang/String;

    goto :goto_1

    .line 213
    .restart local v6       #binder:Landroid/os/IBinder;
    :cond_4
    const-string v0, "BluetoothSocket_MTK"

    const-string v1, "[JSR82] Bluetooth Socket service not available!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    goto :goto_2

    .line 223
    .end local v6           #binder:Landroid/os/IBinder;
    :cond_5
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    .line 225
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    move v1, p1

    move v2, p3

    move v3, p4

    move v4, p6

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothSocket;->initSocket(IZZILandroid/os/IBinder;)I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mFdHandle:I

    .line 226
    const/4 v0, -0x1

    iget v1, p0, Landroid/bluetooth/BluetoothSocket;->mFdHandle:I

    if-ne v0, v1, :cond_6

    .line 228
    new-instance v0, Ljava/io/IOException;

    const-string v1, "[JSR82] BluetoothSocket: initSocket() failed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :catch_0
    move-exception v7

    .line 231
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "BluetoothSocket_MTK"

    const-string v1, ""

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_6
    :goto_3
    new-instance v0, Landroid/bluetooth/BluetoothInputStream;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothInputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mInputStream:Landroid/bluetooth/BluetoothInputStream;

    .line 239
    new-instance v0, Landroid/bluetooth/BluetoothOutputStream;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothOutputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

    .line 240
    sget-object v0, Landroid/bluetooth/BluetoothSocket$SocketState;->INIT:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 241
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 274
    return-void

    .line 235
    :cond_7
    iput p2, p0, Landroid/bluetooth/BluetoothSocket;->mFdHandle:I

    goto :goto_3
.end method

.method private constructor <init>(IIZZLjava/lang/String;I)V
    .locals 8
    .parameter "type"
    .parameter "fd"
    .parameter "auth"
    .parameter "encrypt"
    .parameter "address"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    new-instance v5, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v5, p5}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    .line 290
    const-string v0, "BluetoothSocket_MTK"

    const-string v1, "[JSR82] Constructor used by JNI."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    .line 306
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 307
    const/4 v1, 0x4

    new-array v0, v1, [Z

    .line 310
    .local v0, bVarArray:[Z
    const-string v1, "BluetoothSocket_MTK"

    const-string v2, "[JSR82] Constructor_Parcel"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    .line 312
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mAddress:Ljava/lang/String;

    .line 314
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 315
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Landroid/bluetooth/BluetoothSocket;->mAuth:Z

    .line 316
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Landroid/bluetooth/BluetoothSocket;->mEncrypt:Z

    .line 317
    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    :goto_0
    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 319
    new-instance v1, Landroid/bluetooth/BluetoothInputStream;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothInputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mInputStream:Landroid/bluetooth/BluetoothInputStream;

    .line 320
    new-instance v1, Landroid/bluetooth/BluetoothOutputStream;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothOutputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

    .line 321
    iput-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSdp:Landroid/bluetooth/BluetoothSocket$SdpHelper;

    .line 322
    iput-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    .line 323
    iput-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 324
    return-void

    .line 317
    :cond_0
    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothSocket$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSocket;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private native abortNative()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native acceptNative(I)Landroid/bluetooth/BluetoothSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native availableNative()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native bindListenNative()I
.end method

.method private native connectNative()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native destroyNative()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native initSocketFromFdNative(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native initSocketNative()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native readNative([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native writeNative([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method accept(I)Landroid/bluetooth/BluetoothSocket;
    .locals 13
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 578
    const/4 v9, 0x0

    .line 579
    .local v9, bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    const/4 v11, 0x0

    .line 582
    .local v11, newFdHandle:I
    const-string v1, "BluetoothSocket_MTK"

    const-string v2, "[JSR82] accept()."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 585
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "socket closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    :catchall_0
    move-exception v1

    move-object v0, v9

    .end local v9           #bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    .local v0, bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    :goto_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1

    .line 587
    .end local v0           #bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    .restart local v9       #bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    iget v2, p0, Landroid/bluetooth/BluetoothSocket;->mFdHandle:I

    invoke-interface {v1, p1, v2}, Landroid/bluetooth/IBluetoothSocket;->accept(II)I

    move-result v11

    .line 588
    const/4 v1, -0x1

    if-eq v1, v11, :cond_2

    .line 589
    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 591
    const-string v1, "BluetoothSocket_MTK"

    const-string v2, "[JSR82] accept: Connection is created successfully!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    iget v2, p0, Landroid/bluetooth/BluetoothSocket;->mFdHandle:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothSocket;->getAddr(I)Ljava/lang/String;

    move-result-object v8

    .line 593
    .local v8, address:Ljava/lang/String;
    if-nez v8, :cond_1

    .line 594
    const-string v1, "BluetoothSocket_MTK"

    const-string v2, "[JSR82] accept: BD_ADDR string is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    new-instance v1, Ljava/io/IOException;

    const-string v2, "[JSR82] accept: getAddr() failed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 607
    .end local v8           #address:Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v0, v9

    .line 608
    .end local v9           #bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    .restart local v0       #bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    .local v10, e:Landroid/os/RemoteException;
    :goto_1
    :try_start_2
    const-string v1, "BluetoothSocket_MTK"

    const-string v2, ""

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 612
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move-object v1, v12

    .line 609
    .end local v10           #e:Landroid/os/RemoteException;
    :goto_2
    return-object v1

    .line 598
    .end local v0           #bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    .restart local v8       #address:Ljava/lang/String;
    .restart local v9       #bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    :cond_1
    :try_start_3
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    iget v1, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    iget v2, p0, Landroid/bluetooth/BluetoothSocket;->mFdHandle:I

    iget-boolean v3, p0, Landroid/bluetooth/BluetoothSocket;->mAuth:Z

    iget-boolean v4, p0, Landroid/bluetooth/BluetoothSocket;->mEncrypt:Z

    new-instance v5, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v5, v8}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    iget v6, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 600
    .end local v9           #bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    .restart local v0       #bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    :try_start_4
    iput v11, p0, Landroid/bluetooth/BluetoothSocket;->mFdHandle:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 612
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move-object v1, v0

    .line 601
    goto :goto_2

    .line 603
    .end local v0           #bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    .end local v8           #address:Ljava/lang/String;
    .restart local v9       #bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    :cond_2
    :try_start_5
    const-string v1, "BluetoothSocket_MTK"

    const-string v2, "[JSR82] accept: Connection is not created."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    new-instance v1, Ljava/io/IOException;

    const-string v2, "[JSR82] accept: Connection is not created (failed or aborted)."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 612
    .end local v9           #bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    .restart local v0       #bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 607
    .restart local v8       #address:Ljava/lang/String;
    :catch_1
    move-exception v10

    goto :goto_1
.end method

.method available()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 630
    const/4 v1, 0x0

    .line 632
    .local v1, serviceResult:I
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 634
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v4, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v3, v4, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "socket closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2

    .line 636
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    iget v4, p0, Landroid/bluetooth/BluetoothSocket;->mFdHandle:I

    invoke-interface {v3, v4}, Landroid/bluetooth/IBluetoothSocket;->available(I)I

    move-result v1

    .line 637
    if-ne v2, v1, :cond_1

    .line 639
    new-instance v3, Ljava/io/IOException;

    const-string v4, "[JSR82] available: available() failed."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 642
    :catch_0
    move-exception v0

    .line 643
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothSocket_MTK"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 647
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 644
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_0
    return v2

    .line 647
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move v2, v1

    .line 641
    goto :goto_0
.end method

.method bindListen()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 545
    const/4 v1, 0x0

    .line 547
    .local v1, serviceResult:I
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 549
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v4, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v4, :cond_0

    const/16 v2, 0x4d

    .line 563
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 560
    return v2

    .line 550
    :cond_0
    :try_start_1
    const-string v3, "BluetoothSocket_MTK"

    const-string v4, "[JSR82] bindListen"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    :try_start_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    iget v4, p0, Landroid/bluetooth/BluetoothSocket;->mFdHandle:I

    invoke-interface {v3, v4}, Landroid/bluetooth/IBluetoothSocket;->bindListen(I)I

    move-result v1

    .line 553
    if-ne v2, v1, :cond_1

    .line 554
    const-string v3, "BluetoothSocket_MTK"

    const-string v4, "[JSR82] bindListen: bindListen() failed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_1
    iput v1, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 557
    const/4 v2, 0x0

    .line 563
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    goto :goto_0

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "BluetoothSocket_MTK"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 563
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 429
    const/4 v1, 0x0

    .line 432
    .local v1, serviceResult:I
    const-string v2, "BluetoothSocket_MTK"

    const-string v3, "[JSR82] close"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 434
    const-string v2, "BluetoothSocket_MTK"

    const-string v3, "[JSR82] readLock got."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v3, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_0

    .line 450
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 497
    :goto_0
    return-void

    .line 437
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSdp:Landroid/bluetooth/BluetoothSocket$SdpHelper;

    if-eqz v2, :cond_1

    .line 438
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSdp:Landroid/bluetooth/BluetoothSocket$SdpHelper;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket$SdpHelper;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    :cond_1
    :try_start_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    iget v3, p0, Landroid/bluetooth/BluetoothSocket;->mFdHandle:I

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothSocket;->abort(I)I

    move-result v1

    .line 442
    if-ne v4, v1, :cond_2

    .line 444
    new-instance v2, Ljava/io/IOException;

    const-string v3, "[JSR82] close: abort() failed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "BluetoothSocket_MTK"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 450
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 453
    const-string v2, "BluetoothSocket_MTK"

    const-string v3, "[JSR82] Start to aquire writeLock."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 457
    const-string v2, "BluetoothSocket_MTK"

    const-string v3, "[JSR82] writeLock got."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :try_start_4
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    iget v3, p0, Landroid/bluetooth/BluetoothSocket;->mFdHandle:I

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothSocket;->destroy(I)I

    move-result v1

    .line 461
    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 462
    if-ne v4, v1, :cond_3

    .line 464
    new-instance v2, Ljava/io/IOException;

    const-string v3, "[JSR82] close: destroy() failed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 466
    :catch_1
    move-exception v0

    .line 467
    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_5
    const-string v2, "BluetoothSocket_MTK"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 470
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .line 450
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2

    .line 470
    :catchall_1
    move-exception v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v2
.end method

.method public connect()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    const/4 v0, 0x0

    .line 377
    .local v0, connectResult:I
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 379
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v3, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "socket closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2

    .line 381
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSdp:Landroid/bluetooth/BluetoothSocket$SdpHelper;

    if-eqz v2, :cond_1

    .line 382
    const-string v2, "BluetoothSocket_MTK"

    const-string v3, "[JSR82] connect: do SDP"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSdp:Landroid/bluetooth/BluetoothSocket$SdpHelper;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket$SdpHelper;->doSdp()I

    move-result v2

    iput v2, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 384
    const-string v2, "BluetoothSocket_MTK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[JSR82] connect: do SDP done; mPort="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    :cond_1
    const/4 v2, 0x1

    :try_start_2
    iget v3, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    if-le v2, v3, :cond_3

    .line 390
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[JSR82] connect: Invalid RFCOMM channel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 398
    :catch_0
    move-exception v1

    .line 399
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "BluetoothSocket_MTK"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 403
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 420
    return-void

    .line 392
    :cond_3
    :try_start_4
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    iget v3, p0, Landroid/bluetooth/BluetoothSocket;->mFdHandle:I

    iget-object v4, p0, Landroid/bluetooth/BluetoothSocket;->mAddress:Ljava/lang/String;

    iget v5, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    invoke-interface {v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothSocket;->connect(ILjava/lang/String;I)I

    move-result v0

    .line 394
    const/4 v2, -0x1

    if-ne v2, v0, :cond_2

    .line 396
    new-instance v2, Ljava/io/IOException;

    const-string v3, "[JSR82] connect: Connection is not created (failed or aborted)."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 297
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 301
    return-void

    .line 299
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getChannel()I
    .locals 3

    .prologue
    .line 751
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    .line 753
    :goto_0
    return v0

    .line 752
    :cond_0
    const-string v0, "BluetoothSocket_MTK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JSR82] getChannel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mInputStream:Landroid/bluetooth/BluetoothInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 526
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

    return-object v0
.end method

.method public getRemoteDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method read([BII)I
    .locals 4
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 662
    const/4 v1, 0x0

    .line 664
    .local v1, serviceResult:I
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 666
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v3, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "socket closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2

    .line 668
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    iget v3, p0, Landroid/bluetooth/BluetoothSocket;->mFdHandle:I

    invoke-interface {v2, p1, p2, p3, v3}, Landroid/bluetooth/IBluetoothSocket;->read([BIII)I

    move-result v1

    .line 669
    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    .line 671
    new-instance v2, Ljava/io/IOException;

    const-string v3, "[JSR82] read: read() failed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 674
    :catch_0
    move-exception v0

    .line 675
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "BluetoothSocket_MTK"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 676
    const/4 v2, 0x0

    .line 679
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 676
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_0
    return v2

    .line 679
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move v2, v1

    .line 673
    goto :goto_0
.end method

.method throwErrno(I)V
    .locals 4
    .parameter "errno"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 727
    :try_start_0
    const-string v1, "BluetoothSocket_MTK"

    const-string v2, "[JSR82] throwErrnoNative"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    iget v2, p0, Landroid/bluetooth/BluetoothSocket;->mFdHandle:I

    invoke-interface {v1, p1, v2}, Landroid/bluetooth/IBluetoothSocket;->throwErrno(II)V

    .line 731
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[JSR82] throwErrnoNative: errno="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "BluetoothSocket_MTK"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 737
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    goto :goto_0
.end method

.method native throwErrnoNative(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method write([BII)I
    .locals 4
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 694
    const/4 v1, 0x0

    .line 696
    .local v1, serviceResult:I
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 698
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v3, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "socket closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2

    .line 700
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    iget v3, p0, Landroid/bluetooth/BluetoothSocket;->mFdHandle:I

    invoke-interface {v2, p1, p2, p3, v3}, Landroid/bluetooth/IBluetoothSocket;->write([BIII)I

    move-result v1

    .line 701
    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    .line 703
    new-instance v2, Ljava/io/IOException;

    const-string v3, "[JSR82] write: write() failed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "BluetoothSocket_MTK"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 708
    const/4 v2, 0x0

    .line 711
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 708
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_0
    return v2

    .line 711
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move v2, v1

    .line 705
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 341
    iget-object v4, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v5, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v4, v5, :cond_0

    move v1, v2

    .line 342
    .local v1, closed:Z
    :goto_0
    const/4 v4, 0x3

    new-array v0, v4, [Z

    iget-boolean v4, p0, Landroid/bluetooth/BluetoothSocket;->mAuth:Z

    aput-boolean v4, v0, v3

    iget-boolean v3, p0, Landroid/bluetooth/BluetoothSocket;->mEncrypt:Z

    aput-boolean v3, v0, v2

    const/4 v2, 0x2

    aput-boolean v1, v0, v2

    .line 344
    .local v0, bVarArray:[Z
    iget v2, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, p1, p2}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 346
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 352
    iget v2, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    return-void

    .end local v0           #bVarArray:[Z
    .end local v1           #closed:Z
    :cond_0
    move v1, v3

    .line 341
    goto :goto_0
.end method
