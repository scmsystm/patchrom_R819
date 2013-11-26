.class Landroid/server/BluetoothSocketService$ServiceRecordClient;
.super Ljava/lang/Object;
.source "BluetoothSocketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothSocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceRecordClient"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field death:Landroid/os/IBinder$DeathRecipient;

.field pid:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/server/BluetoothSocketService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/server/BluetoothSocketService$ServiceRecordClient;-><init>()V

    return-void
.end method
