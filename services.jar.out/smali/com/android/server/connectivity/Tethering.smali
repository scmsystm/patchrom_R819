.class public Lcom/android/server/connectivity/Tethering;
.super Landroid/net/INetworkManagementEventObserver$Stub;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$TetherMasterSM;,
        Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;,
        Lcom/android/server/connectivity/Tethering$StateReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DHCP_DEFAULT_RANGE:[Ljava/lang/String; = null

.field private static final DNS_DEFAULT_SERVER1:Ljava/lang/String; = "8.8.8.8"

.field private static final DNS_DEFAULT_SERVER2:Ljava/lang/String; = "8.8.4.4"

.field private static final DUN_TYPE:Ljava/lang/Integer; = null

.field private static final HIPRI_TYPE:Ljava/lang/Integer; = null

.field private static final MASTERSM_IPV4:Ljava/lang/String; = "TetherMaster"

.field private static final MASTERSM_IPV6:Ljava/lang/String; = "Ipv6TetherMaster"

.field private static final MOBILE_TYPE:Ljava/lang/Integer; = null

.field private static final TAG:Ljava/lang/String; = "Tethering"

.field private static final USB_INTERNET_CONNECTED:I = 0x2

.field private static final USB_INTERNET_CONNECTING:I = 0x1

.field private static final USB_INTERNET_DISCONNECTED:I = 0x0

.field private static final USB_INTERNET_SUSPENDED:I = 0x3

.field private static final USB_NEAR_IFACE_ADDR:Ljava/lang/String; = "192.168.42.129"

.field private static final USB_PREFIX_LENGTH:I = 0x18

.field private static final VDBG:Z = true


# instance fields
.field private final mConnService:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDefaultDnsServers:[Ljava/lang/String;

.field private mDhcpRange:[Ljava/lang/String;

.field private mIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;",
            ">;"
        }
    .end annotation
.end field

.field private mIpv6FeatureEnable:Z

.field private mIpv6IfaceObserver:Landroid/net/INetworkManagementIpv6EventObserver;

.field private mIpv6TetherMasterSM:Lcom/android/internal/util/StateMachine;

.field private mIsTetheringChangeDone:Z

.field private mLooper:Landroid/os/Looper;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private mNotificationSync:Ljava/lang/Object;

.field private mPreferredUpstreamMobileApn:I

.field private mPublicSync:Ljava/lang/Object;

.field private mRndisEnabled:Z

.field private mStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private mTetherDone:Z

.field private mTetherMasterSM:Lcom/android/internal/util/StateMachine;

.field private mTetherableBluetoothRegexs:[Ljava/lang/String;

.field private mTetherableUsbRegexs:[Ljava/lang/String;

.field private mTetherableWifiRegexs:[Ljava/lang/String;

.field private mTetheredFail:Z

.field private mTetheredNotification:Landroid/app/Notification;

.field private mThread:Landroid/os/HandlerThread;

.field private mUnTetherDone:Z

.field private mUpstreamIfaceTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUsbIface:Ljava/lang/String;

.field private mUsbInternetDnsServers:[Ljava/lang/String;

.field private mUsbInternetEnable:Z

.field private mUsbInternetState:I

.field private mUsbTetherEnabled:Z

.field private mUsbTetherRequested:Z

.field private mWifiIface:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 107
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    .line 108
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    .line 109
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    .line 134
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "192.168.42.2"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "192.168.42.254"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "192.168.43.2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "192.168.43.254"

    aput-object v2, v0, v1

    const-string v1, "192.168.44.2"

    aput-object v1, v0, v3

    const-string v1, "192.168.44.254"

    aput-object v1, v0, v4

    const/4 v1, 0x6

    const-string v2, "192.168.45.2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "192.168.45.254"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "192.168.46.2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "192.168.46.254"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "192.168.47.2"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "192.168.47.254"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "192.168.48.2"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "192.168.48.254"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/IConnectivityManager;Landroid/os/Looper;)V
    .locals 8
    .parameter "context"
    .parameter "nmService"
    .parameter "statsService"
    .parameter "connService"
    .parameter "looper"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 186
    invoke-direct {p0}, Landroid/net/INetworkManagementEventObserver$Stub;-><init>()V

    .line 113
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    .line 148
    iput-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mUnTetherDone:Z

    .line 149
    iput-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mTetherDone:Z

    .line 150
    iput-boolean v5, p0, Lcom/android/server/connectivity/Tethering;->mTetheredFail:Z

    .line 158
    iput-boolean v5, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherEnabled:Z

    .line 162
    iput-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mIsTetheringChangeDone:Z

    .line 170
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "192.168.0.1"

    aput-object v3, v2, v5

    const-string v3, "168.95.1.1"

    aput-object v3, v2, v6

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUsbInternetDnsServers:[Ljava/lang/String;

    .line 1163
    new-instance v2, Lcom/android/server/connectivity/Tethering$1;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/Tethering$1;-><init>(Lcom/android/server/connectivity/Tethering;)V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIpv6IfaceObserver:Landroid/net/INetworkManagementIpv6EventObserver;

    .line 187
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 188
    iput-object p2, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    .line 189
    iput-object p3, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    .line 190
    iput-object p4, p0, Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;

    .line 191
    iput-object p5, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    .line 193
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    .line 195
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    .line 198
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "Tethering"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mThread:Landroid/os/HandlerThread;

    .line 199
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 200
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    .line 201
    new-instance v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const-string v3, "TetherMaster"

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    .line 202
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v2}, Lcom/android/internal/util/StateMachine;->start()V

    .line 206
    new-instance v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const-string v3, "Ipv6TetherMaster"

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIpv6TetherMasterSM:Lcom/android/internal/util/StateMachine;

    .line 207
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIpv6TetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v2}, Lcom/android/internal/util/StateMachine;->start()V

    .line 211
    new-instance v2, Lcom/android/server/connectivity/Tethering$StateReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 213
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v2, "android.net.wifi.WIFI_HOTSPOT_CLIENTS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 218
    iput v5, p0, Lcom/android/server/connectivity/Tethering;->mUsbInternetState:I

    .line 219
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mNotificationSync:Ljava/lang/Object;

    .line 221
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 222
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    const-string v2, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 225
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    .line 229
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    array-length v2, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    array-length v2, v2

    rem-int/lit8 v2, v2, 0x2

    if-ne v2, v6, :cond_1

    .line 230
    :cond_0
    sget-object v2, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    .line 234
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 237
    new-array v2, v7, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    .line 238
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    const-string v3, "8.8.8.8"

    aput-object v3, v2, v5

    .line 239
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    const-string v3, "8.8.4.4"

    aput-object v3, v2, v6

    .line 241
    const-string v2, "wifi.interface"

    const-string v3, "wlan0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mWifiIface:Ljava/lang/String;

    .line 244
    iput-boolean v5, p0, Lcom/android/server/connectivity/Tethering;->mUsbInternetEnable:Z

    .line 248
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIpv6IfaceObserver:Landroid/net/INetworkManagementIpv6EventObserver;

    invoke-interface {p2, v2}, Landroid/os/INetworkManagementService;->registerIpv6Observer(Landroid/net/INetworkManagementIpv6EventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mIpv6TetherMasterSM:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->updateTetheredNotification()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->configureUsbIface(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mIpv6FeatureEnable:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mUsbInternetEnable:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mUsbInternetEnable:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mTetherDone:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/connectivity/Tethering;)Landroid/net/INetworkStatsService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mIsTetheringChangeDone:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->updateDns()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUsbInternetDnsServers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->broadcastReadyforUsbInternetConfig()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    return p1
.end method

.method static synthetic access$4102(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredFail:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherEnabled:Z

    return v0
.end method

.method static synthetic access$5900(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiIface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Tethering;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/server/connectivity/Tethering;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->hasIpv6Address(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Lcom/android/server/connectivity/Tethering;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    return v0
.end method

.method static synthetic access$6600(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mUnTetherDone:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isIpv6MasterSmOn()Z

    move-result v0

    return v0
.end method

.method private broadcastDataConnectionStateChanged(I)V
    .locals 8
    .parameter "state"

    .prologue
    .line 2611
    iget v5, p0, Lcom/android/server/connectivity/Tethering;->mUsbInternetState:I

    if-ne v5, p1, :cond_0

    .line 2612
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip the state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    :goto_0
    return-void

    .line 2615
    :cond_0
    iput p1, p0, Lcom/android/server/connectivity/Tethering;->mUsbInternetState:I

    .line 2618
    iget-boolean v5, p0, Lcom/android/server/connectivity/Tethering;->mUsbInternetEnable:Z

    if-nez v5, :cond_1

    const/4 v5, 0x2

    if-ne p1, v5, :cond_1

    .line 2619
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "broadcastDataConnectionStateChanged ignore:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2621
    :cond_1
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "broadcastDataConnectionStateChanged:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    new-instance v2, Landroid/content/Intent;

    const-string v5, "mediatek.intent.action.USB_DATA_STATE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2630
    .local v2, intent:Landroid/content/Intent;
    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3}, Landroid/net/LinkProperties;-><init>()V

    .line 2631
    .local v3, linkProperties:Landroid/net/LinkProperties;
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mUsbIface:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 2633
    :try_start_0
    const-string v5, "192.168.0.100"

    invoke-static {v5}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 2634
    .local v1, gwAddr:Ljava/net/InetAddress;
    new-instance v4, Landroid/net/RouteInfo;

    invoke-direct {v4, v1}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    .line 2635
    .local v4, route:Landroid/net/RouteInfo;
    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    .line 2636
    const-string v5, "linkProperties"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2641
    .end local v1           #gwAddr:Ljava/net/InetAddress;
    .end local v4           #route:Landroid/net/RouteInfo;
    :goto_1
    const-string v5, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneConstants$DataState;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2642
    const-string v5, "apn"

    const-string v6, "internet"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2643
    const-string v5, "apnType"

    const-string v6, "usbinternet"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2645
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2637
    :catch_0
    move-exception v0

    .line 2638
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private broadcastReadyforUsbInternetConfig()V
    .locals 3

    .prologue
    .line 2650
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mUsbInternetEnable:Z

    if-nez v1, :cond_0

    .line 2651
    const-string v1, "Tethering"

    const-string v2, "broadcastReadyforUsbInternetConfig ignore"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    :goto_0
    return-void

    .line 2653
    :cond_0
    const-string v1, "Tethering"

    const-string v2, "broadcastReadyforUsbInternetConfig"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.READY_FOR_USBINTERNET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2655
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private clearTetheredNotification()V
    .locals 5

    .prologue
    .line 694
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mNotificationSync:Ljava/lang/Object;

    monitor-enter v2

    .line 695
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 697
    .local v0, notificationManager:Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 698
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 700
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    .line 702
    :cond_0
    monitor-exit v2

    .line 703
    return-void

    .line 702
    .end local v0           #notificationManager:Landroid/app/NotificationManager;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private configureUsbIface(Z)Z
    .locals 12
    .parameter "enabled"

    .prologue
    const/4 v8, 0x0

    .line 818
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "configureUsbIface("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    new-array v5, v8, [Ljava/lang/String;

    .line 823
    .local v5, ifaces:[Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v9}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 828
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v7, :cond_2

    aget-object v4, v1, v3

    .line 829
    .local v4, iface:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 830
    const/4 v6, 0x0

    .line 832
    .local v6, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_1
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v9, v4}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v6

    .line 833
    if-eqz v6, :cond_0

    .line 834
    const-string v9, "192.168.42.129"

    invoke-static {v9}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 835
    .local v0, addr:Ljava/net/InetAddress;
    new-instance v9, Landroid/net/LinkAddress;

    const/16 v10, 0x18

    invoke-direct {v9, v0, v10}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v6, v9}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 836
    if-eqz p1, :cond_1

    .line 837
    invoke-virtual {v6}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 841
    :goto_1
    const-string v9, "running"

    invoke-virtual {v6, v9}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    .line 842
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v9, v4, v6}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 828
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v6           #ifcg:Landroid/net/InterfaceConfiguration;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 824
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #iface:Ljava/lang/String;
    .end local v7           #len$:I
    :catch_0
    move-exception v2

    .line 825
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "Tethering"

    const-string v10, "Error listing Interfaces"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 851
    .end local v2           #e:Ljava/lang/Exception;
    :goto_2
    return v8

    .line 839
    .restart local v0       #addr:Ljava/net/InetAddress;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #ifcg:Landroid/net/InterfaceConfiguration;
    .restart local v7       #len$:I
    :cond_1
    :try_start_2
    invoke-virtual {v6}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 844
    .end local v0           #addr:Ljava/net/InetAddress;
    :catch_1
    move-exception v2

    .line 845
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error configuring interface "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 851
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #ifcg:Landroid/net/InterfaceConfiguration;
    :cond_2
    const/4 v8, 0x1

    goto :goto_2
.end method

.method private hasIpv4Address(I)Z
    .locals 8
    .parameter "networkType"

    .prologue
    const/4 v4, 0x0

    .line 1126
    const/4 v5, -0x1

    if-ne v5, p1, :cond_1

    .line 1144
    :cond_0
    :goto_0
    return v4

    .line 1130
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;

    invoke-interface {v5, p1}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v3

    .line 1131
    .local v3, netProperties:Landroid/net/LinkProperties;
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 1132
    .local v2, l:Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    if-eqz v5, :cond_2

    .line 1133
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This is v4 address:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const/4 v4, 0x1

    goto :goto_0

    .line 1136
    :cond_2
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "address:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1139
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Landroid/net/LinkAddress;
    .end local v3           #netProperties:Landroid/net/LinkProperties;
    :catch_0
    move-exception v0

    .line 1140
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MSM_TetherModeAlive] hasIpv4Address: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private hasIpv6Address(I)Z
    .locals 9
    .parameter "networkType"

    .prologue
    const/4 v5, 0x0

    .line 1103
    const/4 v6, -0x1

    if-ne v6, p1, :cond_0

    .line 1120
    :goto_0
    return v5

    .line 1107
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;

    invoke-interface {v6, p1}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v2

    .line 1108
    .local v2, netProperties:Landroid/net/LinkProperties;
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 1109
    .local v1, iface:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "net.ipv6."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".prefix"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1110
    .local v3, propertyName:Ljava/lang/String;
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1111
    .local v4, value:Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 1112
    :cond_1
    const-string v6, "Tethering"

    const-string v7, "This is No IPv6 prefix!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1118
    .end local v1           #iface:Ljava/lang/String;
    .end local v2           #netProperties:Landroid/net/LinkProperties;
    .end local v3           #propertyName:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1119
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[MSM_TetherModeAlive] hasIpv6Address: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1115
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #iface:Ljava/lang/String;
    .restart local v2       #netProperties:Landroid/net/LinkProperties;
    .restart local v3       #propertyName:Ljava/lang/String;
    .restart local v4       #value:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v6, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This is IPv6 prefix: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1116
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private isIpv6MasterSmOn()Z
    .locals 1

    .prologue
    .line 1080
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mIpv6FeatureEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mUsbInternetEnable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUsb(Ljava/lang/String;)Z
    .locals 6
    .parameter "iface"

    .prologue
    .line 332
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 334
    .local v3, regex:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    monitor-exit v5

    .line 336
    .end local v3           #regex:Ljava/lang/String;
    :goto_1
    return v4

    .line 333
    .restart local v3       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    .end local v3           #regex:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_1

    .line 337
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private readIpv6FeatureEnable()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1084
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tether_ipv6_feature"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1085
    .local v0, value:I
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIpv6FeatureEnable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private sendTetherStateChangedBroadcast()V
    .locals 16

    .prologue
    .line 502
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;

    invoke-interface {v13}, Landroid/net/IConnectivityManager;->isTetheringSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-nez v13, :cond_0

    .line 585
    :goto_0
    return-void

    .line 503
    :catch_0
    move-exception v5

    .line 504
    .local v5, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 506
    .end local v5           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v13, "Tethering"

    const-string v14, "sendTetherStateChangedBroadcast"

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 509
    .local v2, availableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .local v1, activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .local v6, erroredList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 513
    .local v12, wifiTethered:Z
    const/4 v11, 0x0

    .line 514
    .local v11, usbTethered:Z
    const/4 v3, 0x0

    .line 516
    .local v3, bluetoothTethered:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v14

    .line 517
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 518
    .local v9, ifaces:Ljava/util/Set;
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 519
    .local v8, iface:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 520
    .local v10, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v10, :cond_1

    .line 521
    invoke-virtual {v10}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 522
    const-string v13, "Tethering"

    const-string v15, "add err"

    invoke-static {v13, v15}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    check-cast v8, Ljava/lang/String;

    .end local v8           #iface:Ljava/lang/Object;
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 543
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #ifaces:Ljava/util/Set;
    .end local v10           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 524
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #iface:Ljava/lang/Object;
    .restart local v9       #ifaces:Ljava/util/Set;
    .restart local v10       #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_2
    :try_start_2
    invoke-virtual {v10}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 525
    const-string v13, "Tethering"

    const-string v15, "add avai"

    invoke-static {v13, v15}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    check-cast v8, Ljava/lang/String;

    .end local v8           #iface:Ljava/lang/Object;
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 527
    .restart local v8       #iface:Ljava/lang/Object;
    :cond_3
    invoke-virtual {v10}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 528
    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 529
    const-string v13, "Tethering"

    const-string v15, "usb isTethered"

    invoke-static {v13, v15}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/connectivity/Tethering;->mUsbIface:Ljava/lang/String;

    .line 531
    const/4 v11, 0x1

    .line 539
    :cond_4
    :goto_2
    check-cast v8, Ljava/lang/String;

    .end local v8           #iface:Ljava/lang/Object;
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 532
    .restart local v8       #iface:Ljava/lang/Object;
    :cond_5
    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 533
    const-string v13, "Tethering"

    const-string v15, "wifi isTethered"

    invoke-static {v13, v15}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/4 v12, 0x1

    goto :goto_2

    .line 535
    :cond_6
    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 536
    const-string v13, "Tethering"

    const-string v15, "bt isTethered"

    invoke-static {v13, v15}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v3, 0x1

    goto :goto_2

    .line 543
    .end local v8           #iface:Ljava/lang/Object;
    .end local v10           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_7
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 544
    new-instance v4, Landroid/content/Intent;

    const-string v13, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v4, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 545
    .local v4, broadcast:Landroid/content/Intent;
    const/high16 v13, 0x2800

    invoke-virtual {v4, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 547
    const-string v13, "availableArray"

    invoke-virtual {v4, v13, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 549
    const-string v13, "activeArray"

    invoke-virtual {v4, v13, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 550
    const-string v13, "erroredArray"

    invoke-virtual {v4, v13, v6}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 553
    const-string v13, "UnTetherDone"

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/connectivity/Tethering;->mUnTetherDone:Z

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 554
    const-string v13, "TetherDone"

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/connectivity/Tethering;->mTetherDone:Z

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 555
    const-string v13, "TetherFail"

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/connectivity/Tethering;->mTetheredFail:Z

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 557
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v4, v14}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 559
    const-string v13, "Tethering"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sendTetherStateChangedBroadcast "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    if-eqz v11, :cond_a

    .line 565
    if-nez v12, :cond_8

    if-eqz v3, :cond_9

    .line 566
    :cond_8
    const v13, 0x1080560

    const-string v14, "comb"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(ILjava/lang/String;)V

    .line 570
    :goto_3
    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/connectivity/Tethering;->broadcastDataConnectionStateChanged(I)V

    goto/16 :goto_0

    .line 568
    :cond_9
    const v13, 0x1080561

    const-string v14, "usb"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(ILjava/lang/String;)V

    goto :goto_3

    .line 571
    :cond_a
    if-eqz v12, :cond_c

    .line 572
    if-eqz v3, :cond_b

    .line 573
    const v13, 0x1080560

    const-string v14, "comb"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(ILjava/lang/String;)V

    .line 577
    :goto_4
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/connectivity/Tethering;->broadcastDataConnectionStateChanged(I)V

    goto/16 :goto_0

    .line 575
    :cond_b
    const v13, 0x1080562

    const-string v14, "wifi"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(ILjava/lang/String;)V

    goto :goto_4

    .line 578
    :cond_c
    if-eqz v3, :cond_d

    .line 579
    const v13, 0x108055f

    const-string v14, "bt"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(ILjava/lang/String;)V

    .line 580
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/connectivity/Tethering;->broadcastDataConnectionStateChanged(I)V

    goto/16 :goto_0

    .line 582
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    .line 583
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/connectivity/Tethering;->broadcastDataConnectionStateChanged(I)V

    goto/16 :goto_0
.end method

.method private showTetheredNotification(ILjava/lang/String;)V
    .locals 19
    .parameter "icon"
    .parameter "type"

    .prologue
    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mNotificationSync:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 590
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/NotificationManager;

    .line 592
    .local v14, notificationManager:Landroid/app/NotificationManager;
    if-nez v14, :cond_0

    .line 593
    monitor-exit v18

    .line 662
    :goto_0
    return-void

    .line 596
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiManager;

    .line 597
    .local v13, mgr:Landroid/net/wifi/WifiManager;
    if-nez v13, :cond_1

    .line 598
    monitor-exit v18

    goto :goto_0

    .line 661
    .end local v13           #mgr:Landroid/net/wifi/WifiManager;
    .end local v14           #notificationManager:Landroid/app/NotificationManager;
    :catchall_0
    move-exception v1

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 601
    .restart local v13       #mgr:Landroid/net/wifi/WifiManager;
    .restart local v14       #notificationManager:Landroid/app/NotificationManager;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    if-eqz v1, :cond_3

    .line 602
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    move/from16 v0, p1

    if-ne v1, v0, :cond_2

    .line 603
    monitor-exit v18

    goto :goto_0

    .line 605
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v14, v1, v2, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 609
    :cond_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 611
    .local v3, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/connectivity/Tethering;->mUsbInternetEnable:Z

    if-eqz v1, :cond_7

    .line 612
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$WirelessSettingsActivity"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    :goto_1
    const/high16 v1, 0x4000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 621
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v15

    .line 624
    .local v15, pi:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v16

    .line 625
    .local v16, r:Landroid/content/res/Resources;
    const v1, 0x1040495

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    .line 627
    .local v17, title:Ljava/lang/CharSequence;
    const/4 v12, 0x0

    .line 628
    .local v12, message:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/connectivity/Tethering;->mUsbInternetEnable:Z

    if-eqz v1, :cond_4

    .line 629
    const v1, 0x2050072

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    .line 631
    :cond_4
    const-string v1, "wifi"

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "comb"

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 632
    :cond_5
    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getHotspotClients()Ljava/util/List;

    move-result-object v9

    .line 633
    .local v9, clients:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/HotspotClient;>;"
    const/4 v10, 0x0

    .line 634
    .local v10, connected:I
    const/4 v7, 0x0

    .line 635
    .local v7, blocked:I
    if-eqz v9, :cond_a

    .line 636
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/HotspotClient;

    .line 637
    .local v8, client:Landroid/net/wifi/HotspotClient;
    iget-boolean v1, v8, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    if-eqz v1, :cond_6

    .line 638
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 613
    .end local v7           #blocked:I
    .end local v8           #client:Landroid/net/wifi/HotspotClient;
    .end local v9           #clients:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/HotspotClient;>;"
    .end local v10           #connected:I
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #message:Ljava/lang/CharSequence;
    .end local v15           #pi:Landroid/app/PendingIntent;
    .end local v16           #r:Landroid/content/res/Resources;
    .end local v17           #title:Ljava/lang/CharSequence;
    :cond_7
    const-string v1, "wifi"

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 614
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.wifi.hotspot.TetherWifiSettings"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 616
    :cond_8
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.TetherSettings"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 641
    .restart local v7       #blocked:I
    .restart local v9       #clients:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/HotspotClient;>;"
    .restart local v10       #connected:I
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v12       #message:Ljava/lang/CharSequence;
    .restart local v15       #pi:Landroid/app/PendingIntent;
    .restart local v16       #r:Landroid/content/res/Resources;
    .restart local v17       #title:Ljava/lang/CharSequence;
    :cond_9
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    sub-int v10, v1, v7

    .line 643
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_a
    const v1, 0x20500df

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 649
    .end local v7           #blocked:I
    .end local v9           #clients:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/HotspotClient;>;"
    .end local v10           #connected:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    if-nez v1, :cond_b

    .line 650
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    .line 651
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Landroid/app/Notification;->when:J

    .line 653
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    move/from16 v0, p1

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 654
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 655
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    const/4 v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 656
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    move-object/from16 v0, v17

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 657
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0, v12, v15}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 659
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v14, v1, v2, v4, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 661
    monitor-exit v18

    goto/16 :goto_0

    .line 646
    :cond_c
    const v1, 0x1040496

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    goto :goto_3
.end method

.method private tetherUsb(Z)V
    .locals 10
    .parameter "enable"

    .prologue
    .line 788
    const-string v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tetherUsb "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const/4 v7, 0x0

    new-array v4, v7, [Ljava/lang/String;

    .line 793
    .local v4, ifaces:[Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v7}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    move-result-object v4

    .line 794
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v3, v0, v2

    .line 795
    .local v3, iface:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 796
    if-eqz p1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v6

    .line 797
    .local v6, result:I
    :goto_1
    if-nez v6, :cond_1

    .line 814
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #iface:Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #result:I
    :goto_2
    return-void

    .line 796
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #iface:Ljava/lang/String;
    .restart local v5       #len$:I
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_1

    .line 794
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 802
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #iface:Ljava/lang/String;
    .end local v5           #len$:I
    :catch_0
    move-exception v1

    .line 803
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "Tethering"

    const-string v8, "Error listing Interfaces"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 809
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/connectivity/Tethering;->mTetheredFail:Z

    .line 810
    const-wide/16 v7, 0x1f4

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 811
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V

    .line 813
    const-string v7, "Tethering"

    const-string v8, "unable start or stop USB tethering"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateDns()V
    .locals 6

    .prologue
    .line 1052
    const-string v3, "net.dns1"

    const-string v4, "8.8.4.4"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1053
    .local v2, newdns:Ljava/lang/String;
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDns net.dns1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1056
    :try_start_0
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 1057
    .local v0, address:Ljava/net/InetAddress;
    instance-of v3, v0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_1

    .line 1058
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 1075
    .end local v0           #address:Ljava/net/InetAddress;
    :cond_0
    :goto_0
    return-void

    .line 1060
    .restart local v0       #address:Ljava/net/InetAddress;
    :cond_1
    const-string v3, "net.dns2"

    const-string v4, "8.8.4.4"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1061
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "net.dns2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1063
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 1064
    instance-of v3, v0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_2

    .line 1065
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1071
    .end local v0           #address:Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    .line 1072
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1067
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #address:Ljava/net/InetAddress;
    :cond_2
    :try_start_1
    const-string v3, "Tethering"

    const-string v4, "Not support IPv6 address or else!"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private updateTetheredNotification()V
    .locals 15

    .prologue
    .line 666
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering;->mNotificationSync:Ljava/lang/Object;

    monitor-enter v11

    .line 667
    :try_start_0
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v12, "notification"

    invoke-virtual {v10, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 669
    .local v7, notificationManager:Landroid/app/NotificationManager;
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v12, "wifi"

    invoke-virtual {v10, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 670
    .local v6, mgr:Landroid/net/wifi/WifiManager;
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    if-nez v10, :cond_1

    .line 671
    :cond_0
    monitor-exit v11

    .line 690
    :goto_0
    return-void

    .line 673
    :cond_1
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getHotspotClients()Ljava/util/List;

    move-result-object v2

    .line 674
    .local v2, clients:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/HotspotClient;>;"
    const/4 v3, 0x0

    .line 675
    .local v3, connected:I
    const/4 v0, 0x0

    .line 676
    .local v0, blocked:I
    if-eqz v2, :cond_4

    .line 677
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/HotspotClient;

    .line 678
    .local v1, client:Landroid/net/wifi/HotspotClient;
    iget-boolean v10, v1, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    if-eqz v10, :cond_2

    .line 679
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 682
    .end local v1           #client:Landroid/net/wifi/HotspotClient;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    sub-int v3, v10, v0

    .line 684
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    .line 685
    .local v8, r:Landroid/content/res/Resources;
    const v10, 0x1040495

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 686
    .local v9, title:Ljava/lang/CharSequence;
    const v10, 0x20500df

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v8, v10, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 687
    .local v5, message:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget-object v12, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget-object v13, v13, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v10, v12, v9, v5, v13}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 688
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v10, v10, Landroid/app/Notification;->icon:I

    iget-object v12, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    invoke-virtual {v7, v10, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 689
    monitor-exit v11

    goto :goto_0

    .end local v0           #blocked:I
    .end local v2           #clients:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/HotspotClient;>;"
    .end local v3           #connected:I
    .end local v5           #message:Ljava/lang/String;
    .end local v6           #mgr:Landroid/net/wifi/WifiManager;
    .end local v7           #notificationManager:Landroid/app/NotificationManager;
    .end local v8           #r:Landroid/content/res/Resources;
    .end local v9           #title:Ljava/lang/CharSequence;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method


# virtual methods
.method public checkDunRequired()V
    .locals 8

    .prologue
    const/4 v0, 0x5

    const/4 v7, 0x2

    const/4 v2, 0x4

    .line 923
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tether_dun_required"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 925
    .local v1, secureSetting:I
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 927
    :try_start_0
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkDunRequired:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    if-eq v1, v7, :cond_3

    .line 929
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    move v0, v2

    .line 932
    .local v0, requiredApn:I
    :cond_0
    if-ne v0, v2, :cond_4

    .line 933
    :goto_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v4, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 934
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v4, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 959
    .end local v0           #requiredApn:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 936
    .restart local v0       #requiredApn:I
    :cond_1
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v4, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 937
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v4, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 939
    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v4, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 940
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v4, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 954
    .end local v0           #requiredApn:I
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v4, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 955
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    .line 959
    :goto_3
    monitor-exit v3

    .line 960
    return-void

    .line 943
    .restart local v0       #requiredApn:I
    :cond_4
    :goto_4
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v4, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 944
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v4, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 946
    :cond_5
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v4, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 947
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v4, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 949
    :cond_6
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v4, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 950
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v4, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 957
    .end local v0           #requiredApn:I
    :cond_7
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2574
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 2576
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump ConnectivityService.Tether from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2595
    :goto_0
    return-void

    .line 2582
    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 2583
    :try_start_0
    const-string v3, "mUpstreamIfaceTypes: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2584
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2585
    .local v1, netType:Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2593
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #netType:Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2588
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2589
    const-string v3, "Tether state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2590
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 2591
    .local v2, o:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2593
    .end local v2           #o:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2594
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_0
.end method

.method public getErroredIfaces()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 1014
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1015
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    .line 1016
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1017
    .local v3, keys:Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1018
    .local v2, key:Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1019
    .local v6, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1020
    check-cast v2, Ljava/lang/String;

    .end local v2           #key:Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1023
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #keys:Ljava/util/Set;
    .end local v6           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #keys:Ljava/util/Set;
    :cond_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1024
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 1025
    .local v5, retVal:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 1026
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    .line 1025
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1028
    :cond_2
    return-object v5
.end method

.method public getIpv6FeatureEnable()Z
    .locals 1

    .prologue
    .line 1090
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mIpv6FeatureEnable:Z

    return v0
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 6
    .parameter "iface"

    .prologue
    .line 486
    const/4 v1, 0x0

    .line 487
    .local v1, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 488
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v1, v0

    .line 489
    if-nez v1, :cond_0

    .line 490
    const-string v2, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to getLastTetherError on an unknown iface :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v2, 0x1

    monitor-exit v3

    .line 494
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->getLastError()I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 495
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 996
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 997
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    .line 998
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 999
    .local v3, keys:Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1000
    .local v2, key:Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1001
    .local v6, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1002
    check-cast v2, Ljava/lang/String;

    .end local v2           #key:Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1005
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #keys:Ljava/util/Set;
    .end local v6           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #keys:Ljava/util/Set;
    :cond_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1006
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 1007
    .local v5, retVal:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 1008
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    .line 1007
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1010
    :cond_2
    return-object v5
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredIfacePairs()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 982
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 983
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 984
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 985
    .local v2, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 986
    iget-object v3, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    iget-object v3, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 988
    const-string v3, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTetheredIfacePairs:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 991
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 992
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public getTetheredIfacePairsIpv6()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 1148
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1149
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1150
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1151
    .local v2, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1152
    iget-object v3, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceNameIpv6:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1153
    iget-object v3, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1156
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1157
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 964
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 965
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    .line 966
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 967
    .local v3, keys:Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 968
    .local v2, key:Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 969
    .local v6, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 970
    check-cast v2, Ljava/lang/String;

    .end local v2           #key:Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 973
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #keys:Ljava/util/Set;
    .end local v6           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #keys:Ljava/util/Set;
    :cond_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 974
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 975
    .local v5, retVal:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 976
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    .line 975
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 978
    :cond_2
    return-object v5
.end method

.method public getUpstreamIfaceTypes()[I
    .locals 5

    .prologue
    .line 911
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 912
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 913
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 914
    .local v2, values:[I
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 915
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 916
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0

    .line 915
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 918
    :cond_0
    monitor-exit v4

    .line 919
    return-object v2

    .line 918
    .end local v0           #i:I
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2           #values:[I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public handleTetherIfaceChange()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 1036
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 1038
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isIpv6MasterSmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mIpv6TetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 1041
    :cond_0
    return-void
.end method

.method public interfaceAdded(Ljava/lang/String;)V
    .locals 7
    .parameter "iface"

    .prologue
    .line 359
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interfaceAdded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, found:Z
    const/4 v2, 0x0

    .line 362
    .local v2, usb:Z
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 363
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 364
    const/4 v0, 0x1

    .line 366
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 367
    const/4 v0, 0x1

    .line 368
    const/4 v2, 0x1

    .line 370
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 371
    const/4 v0, 0x1

    .line 373
    :cond_2
    if-nez v0, :cond_3

    .line 374
    const-string v3, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a tetherable iface, ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    monitor-exit v4

    .line 413
    :goto_0
    return-void

    .line 378
    :cond_3
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 379
    .local v1, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v1, :cond_4

    .line 380
    const-string v3, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "active iface ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") reported as added, ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    monitor-exit v4

    goto :goto_0

    .line 411
    .end local v1           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 408
    .restart local v1       #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_4
    :try_start_1
    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .end local v1           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, p1, v3, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V

    .line 409
    .restart local v1       #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->start()V

    .line 411
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interfaceAdded :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public interfaceClassDataActivityChanged(Ljava/lang/String;Z)V
    .locals 0
    .parameter "label"
    .parameter "active"

    .prologue
    .line 447
    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 3
    .parameter "iface"
    .parameter "up"

    .prologue
    .line 327
    const-string v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interfaceLinkStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->interfaceStatusChanged(Ljava/lang/String;Z)V

    .line 329
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 8
    .parameter "iface"

    .prologue
    .line 416
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interfaceRemoved "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    .line 418
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 419
    .local v3, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-nez v3, :cond_0

    .line 421
    const-string v4, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attempting to remove unknown iface ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    monitor-exit v5

    .line 443
    :goto_0
    return-void

    .line 425
    :cond_0
    const-string v4, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "interfaceRemoved, iface="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sendMessage:CMD_INTERFACE_DOWN"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 427
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 430
    const-string v4, "network_management"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 431
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 432
    .local v2, service:Landroid/os/INetworkManagementService;
    if-nez v2, :cond_1

    .line 433
    const-string v4, "Tethering"

    const-string v6, "Failed to get the NetworkManagementService!"

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    monitor-exit v5

    goto :goto_0

    .line 442
    .end local v0           #b:Landroid/os/IBinder;
    .end local v2           #service:Landroid/os/INetworkManagementService;
    .end local v3           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 437
    .restart local v0       #b:Landroid/os/IBinder;
    .restart local v2       #service:Landroid/os/INetworkManagementService;
    .restart local v3       #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v2, v4}, Landroid/os/INetworkManagementService;->setStartRequest(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 442
    .end local v0           #b:Landroid/os/IBinder;
    .end local v2           #service:Landroid/os/INetworkManagementService;
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v5

    goto :goto_0

    .line 438
    .restart local v0       #b:Landroid/os/IBinder;
    .restart local v2       #service:Landroid/os/INetworkManagementService;
    :catch_0
    move-exception v1

    .line 439
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "Tethering"

    const-string v6, "setStartRequest failed!"

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 7
    .parameter "iface"
    .parameter "up"

    .prologue
    .line 290
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interfaceStatusChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, found:Z
    const/4 v2, 0x0

    .line 293
    .local v2, usb:Z
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 294
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 295
    const/4 v0, 0x1

    .line 302
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    monitor-exit v4

    .line 324
    :goto_1
    return-void

    .line 296
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 297
    const/4 v0, 0x1

    .line 298
    const/4 v2, 0x1

    goto :goto_0

    .line 299
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 300
    const/4 v0, 0x1

    goto :goto_0

    .line 304
    :cond_3
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 305
    .local v1, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz p2, :cond_5

    .line 306
    if-nez v1, :cond_4

    .line 307
    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .end local v1           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, p1, v3, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V

    .line 308
    .restart local v1       #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->start()V

    .line 323
    :cond_4
    :goto_2
    monitor-exit v4

    goto :goto_1

    .end local v1           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 313
    .restart local v1       #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_5
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 316
    :cond_6
    const-string v3, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ignore interface down for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 317
    :cond_7
    if-eqz v1, :cond_4

    .line 318
    const-string v3, "Tethering"

    const-string v5, "interfaceLinkStatusChanged, sm!=null, sendMessage:CMD_INTERFACE_DOWN"

    invoke-static {v3, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 320
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public isBluetooth(Ljava/lang/String;)Z
    .locals 6
    .parameter "iface"

    .prologue
    .line 350
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 352
    .local v3, regex:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    monitor-exit v5

    .line 354
    .end local v3           #regex:Ljava/lang/String;
    :goto_1
    return v4

    .line 351
    .restart local v3       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    .end local v3           #regex:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_1

    .line 355
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public isTetheringChangeDone()Z
    .locals 1

    .prologue
    .line 1047
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mIsTetheringChangeDone:Z

    return v0
.end method

.method public isWifi(Ljava/lang/String;)Z
    .locals 6
    .parameter "iface"

    .prologue
    .line 341
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 343
    .local v3, regex:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    monitor-exit v5

    .line 345
    .end local v3           #regex:Ljava/lang/String;
    :goto_1
    return v4

    .line 342
    .restart local v3       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    .end local v3           #regex:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_1

    .line 346
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public limitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "limitName"
    .parameter "iface"

    .prologue
    .line 445
    return-void
.end method

.method public setIpv6FeatureEnable(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 1094
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIpv6FeatureEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " old:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/connectivity/Tethering;->mIpv6FeatureEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 1096
    .local v0, value:I
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mIpv6FeatureEnable:Z

    if-eq v1, p1, :cond_0

    .line 1097
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mIpv6FeatureEnable:Z

    .line 1098
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tether_ipv6_feature"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1100
    :cond_0
    return-void

    .line 1095
    .end local v0           #value:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUsbInternetEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 2600
    const-string v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUsbInternetEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mUsbInternetEnable:Z

    .line 2602
    return-void
.end method

.method public setUsbTethering(Z)I
    .locals 8
    .parameter "enable"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 868
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setUsbTethering("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v3, "usb"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 873
    .local v0, usbManager:Landroid/hardware/usb/UsbManager;
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherEnabled:Z

    .line 875
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 877
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/connectivity/Tethering;->mTetheredFail:Z

    .line 878
    if-eqz p1, :cond_2

    .line 879
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherDone:Z

    .line 880
    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    if-eqz v2, :cond_0

    .line 881
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V

    .line 905
    :goto_0
    monitor-exit v3

    .line 906
    return v6

    .line 883
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    .line 887
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "usb_tethering_type"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 888
    .local v1, value:I
    if-ne v1, v7, :cond_1

    .line 892
    :cond_1
    const-string v2, "Tethering"

    const-string v4, "The MTK_TETHERING_RNDIS only"

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const-string v2, "rndis"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0

    .line 905
    .end local v1           #value:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 898
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/connectivity/Tethering;->mUnTetherDone:Z

    .line 899
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V

    .line 900
    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    if-eqz v2, :cond_3

    .line 901
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 903
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public tether(Ljava/lang/String;)I
    .locals 5
    .parameter "iface"

    .prologue
    .line 450
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tethering "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v1, 0x0

    .line 452
    .local v1, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 453
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v1, v0

    .line 454
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    if-nez v1, :cond_0

    .line 456
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Tether an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/4 v2, 0x1

    .line 464
    :goto_0
    return v2

    .line 454
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 459
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v2

    if-nez v2, :cond_1

    .line 460
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Tether an unavailable iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v2, 0x4

    goto :goto_0

    .line 463
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 464
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public untether(Ljava/lang/String;)I
    .locals 5
    .parameter "iface"

    .prologue
    .line 468
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Untethering "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/4 v1, 0x0

    .line 470
    .local v1, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 471
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v1, v0

    .line 472
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    if-nez v1, :cond_0

    .line 474
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Untether an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v2, 0x1

    .line 482
    :goto_0
    return v2

    .line 472
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 477
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 478
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Untethered an errored iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/4 v2, 0x4

    goto :goto_0

    .line 481
    :cond_1
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 482
    const/4 v2, 0x0

    goto :goto_0
.end method

.method updateConfiguration()V
    .locals 12

    .prologue
    .line 257
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070019

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 259
    .local v6, tetherableUsbRegexs:[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x107001a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 261
    .local v7, tetherableWifiRegexs:[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x107001c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, tetherableBluetoothRegexs:[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x107001f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 266
    .local v3, ifaceTypes:[I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v8, upstreamIfaceTypes:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    move-object v0, v3

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v0, v2

    .line 268
    .local v1, i:I
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "upstreamIfaceTypes.add:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 272
    .end local v1           #i:I
    :cond_0
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v10

    .line 273
    :try_start_0
    iput-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    .line 274
    iput-object v7, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    .line 275
    iput-object v5, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    .line 276
    iput-object v8, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    .line 277
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->checkDunRequired()V

    .line 284
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->readIpv6FeatureEnable()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/server/connectivity/Tethering;->mIpv6FeatureEnable:Z

    .line 287
    return-void

    .line 277
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9
.end method
