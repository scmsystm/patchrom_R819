.class Landroid/bluetooth/BluetoothPbap$1;
.super Ljava/lang/Object;
.source "BluetoothPbap.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothPbap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothPbap;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothPbap;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Landroid/bluetooth/BluetoothPbap$1;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 283
    const-string v0, "Proxy object connected"

    #calls: Landroid/bluetooth/BluetoothPbap;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$000(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$1;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothPbap$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPbap;

    move-result-object v1

    #setter for: Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothPbap;->access$102(Landroid/bluetooth/BluetoothPbap;Landroid/bluetooth/IBluetoothPbap;)Landroid/bluetooth/IBluetoothPbap;

    .line 285
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$1;->this$0:Landroid/bluetooth/BluetoothPbap;

    #getter for: Landroid/bluetooth/BluetoothPbap;->mServiceListener:Landroid/bluetooth/BluetoothPbap$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$200(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$1;->this$0:Landroid/bluetooth/BluetoothPbap;

    #getter for: Landroid/bluetooth/BluetoothPbap;->mServiceListener:Landroid/bluetooth/BluetoothPbap$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$200(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap$ServiceListener;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap$1;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothPbap$ServiceListener;->onServiceConnected(Landroid/bluetooth/BluetoothPbap;)V

    .line 288
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 290
    const-string v0, "Proxy object disconnected"

    #calls: Landroid/bluetooth/BluetoothPbap;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$000(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$1;->this$0:Landroid/bluetooth/BluetoothPbap;

    const/4 v1, 0x0

    #setter for: Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothPbap;->access$102(Landroid/bluetooth/BluetoothPbap;Landroid/bluetooth/IBluetoothPbap;)Landroid/bluetooth/IBluetoothPbap;

    .line 292
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$1;->this$0:Landroid/bluetooth/BluetoothPbap;

    #getter for: Landroid/bluetooth/BluetoothPbap;->mServiceListener:Landroid/bluetooth/BluetoothPbap$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$200(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$1;->this$0:Landroid/bluetooth/BluetoothPbap;

    #getter for: Landroid/bluetooth/BluetoothPbap;->mServiceListener:Landroid/bluetooth/BluetoothPbap$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->access$200(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap$ServiceListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/bluetooth/BluetoothPbap$ServiceListener;->onServiceDisconnected()V

    .line 295
    :cond_0
    return-void
.end method
