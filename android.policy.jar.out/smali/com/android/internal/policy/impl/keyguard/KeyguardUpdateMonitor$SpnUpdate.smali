.class Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpnUpdate"
.end annotation


# instance fields
.field simId:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 2500
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2501
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;->simId:I

    .line 2502
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 2504
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2505
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;->simId:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;->simId:I

    .line 2506
    return-void
.end method
