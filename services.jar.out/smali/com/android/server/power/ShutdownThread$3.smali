.class final Lcom/android/server/power/ShutdownThread$3;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 291
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 293
    const-string v0, "ShutdownThread"

    const-string v1, "setBacklightBrightness: Off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$400()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    #getter for: Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$500(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$400()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    #getter for: Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$500(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$400()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    #getter for: Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$500(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 296
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$400()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    const/4 v1, 0x0

    #setter for: Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->access$502(Lcom/android/server/power/ShutdownThread;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 298
    :cond_0
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$400()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    #getter for: Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$600(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setBacklightBrightnessOff(Z)V

    .line 299
    return-void
.end method
