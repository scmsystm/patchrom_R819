.class Lcom/android/internal/telephony/gemini/c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gemini/GeminiPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/internal/telephony/gemini/GeminiPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 719
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 721
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const-string v1, "[BroadcastReceiver][onReceiver]+"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    .line 722
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 724
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BroadcastReceiver][onReceiver][action] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    .line 725
    const-string v1, "ACTION_ON_SIM_DETECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 726
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BroadcastReceiver][onReceiver] mAllowShowNewSimForSIM1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAllowShowNewSimForSIM2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const-string/jumbo v1, "simCount"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;I)I

    .line 728
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const-string/jumbo v1, "newSIMStatus"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;I)I

    .line 729
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const-string/jumbo v1, "simDetectStatus"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Ljava/lang/String;

    .line 731
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 732
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BroadcastReceiver][onReceiver] detectType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    .line 733
    const-string v0, "NEW"

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 734
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j(Lcom/android/internal/telephony/gemini/GeminiPhone;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k(Lcom/android/internal/telephony/gemini/GeminiPhone;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->broadCastNewSIMDetected(II)V

    .line 773
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const-string v1, "[BroadcastReceiver][onReceiver]-"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    .line 774
    return-void

    .line 735
    :cond_1
    const-string v0, "REMOVE"

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 736
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j(Lcom/android/internal/telephony/gemini/GeminiPhone;)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultSIMSettings;->broadCastDefaultSIMRemoved(I)V

    goto :goto_0

    .line 737
    :cond_2
    const-string v0, "SWAP"

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j(Lcom/android/internal/telephony/gemini/GeminiPhone;)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultSIMSettings;->broadCastSIMSwapped(I)V

    goto :goto_0

    .line 740
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z

    goto :goto_0

    .line 742
    :cond_4
    const-string v1, "android.intent.action.ACTION_SHOW_NEW_SIM_DETECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 743
    const-string/jumbo v0, "simslot"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 744
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BroadcastReceiver][onReceiver] slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    .line 745
    if-nez v0, :cond_6

    .line 746
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z

    .line 750
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    goto :goto_0

    .line 747
    :cond_6
    if-ne v0, v5, :cond_5

    .line 748
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z

    goto :goto_1

    .line 751
    :cond_7
    const-string v1, "action_pin_dismiss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 752
    const-string/jumbo v0, "simslot"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 753
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BroadcastReceiver][onReceiver] slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    .line 754
    if-nez v0, :cond_9

    .line 755
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z

    .line 759
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    goto/16 :goto_0

    .line 756
    :cond_9
    if-ne v0, v5, :cond_8

    .line 757
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z

    goto :goto_2

    .line 760
    :cond_a
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    const-string/jumbo v0, "ss"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 762
    const-string/jumbo v1, "simId"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 763
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BroadcastReceiver][onReceiver] slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " simStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    .line 764
    const-string v2, "READY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 765
    if-nez v1, :cond_c

    .line 766
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z

    .line 771
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    goto/16 :goto_0

    .line 767
    :cond_c
    if-ne v1, v5, :cond_b

    .line 768
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/c;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z

    goto :goto_3
.end method
