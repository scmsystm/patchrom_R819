.class Landroid/media/MediaPlayer$WfdBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfdBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method private constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 593
    iput-object p1, p0, Landroid/media/MediaPlayer$WfdBroadcastReceiver;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 593
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$WfdBroadcastReceiver;-><init>(Landroid/media/MediaPlayer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 596
    const-string v2, "connected"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 597
    .local v0, connected:Z
    :goto_0
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WfdBroadcastReceiver() connected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v1, p0, Landroid/media/MediaPlayer$WfdBroadcastReceiver;->this$0:Landroid/media/MediaPlayer;

    #setter for: Landroid/media/MediaPlayer;->mWfdConnected:Z
    invoke-static {v1, v0}, Landroid/media/MediaPlayer;->access$002(Landroid/media/MediaPlayer;Z)Z

    .line 600
    if-eqz v0, :cond_0

    .line 601
    iget-object v1, p0, Landroid/media/MediaPlayer$WfdBroadcastReceiver;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mPrompt:Lcom/mediatek/common/drm/ISecureWarningPrompt;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Lcom/mediatek/common/drm/ISecureWarningPrompt;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/common/drm/ISecureWarningPrompt;->show()V

    .line 603
    :cond_0
    return-void

    .end local v0           #connected:Z
    :cond_1
    move v0, v1

    .line 596
    goto :goto_0
.end method
