.class public Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
.source "CameraWidgetFrame.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final RECOVERY_DELAY:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = null

.field private static final WIDGET_ANIMATION_DURATION:I = 0xfa

.field private static final WIDGET_WAIT_DURATION:I = 0x28a


# instance fields
.field private mActive:Z

.field private final mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

.field private final mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

.field private mDown:Z

.field private final mHandler:Landroid/os/Handler;

.field private mLaunchCameraStart:J

.field private final mRecoverEndAction:Ljava/lang/Runnable;

.field private final mRecoverRunnable:Ljava/lang/Runnable;

.field private mRecovering:Z

.field private final mRenderRunnable:Ljava/lang/Runnable;

.field private final mRenderedSize:Landroid/graphics/Point;

.field private final mScreenLocation:[I

.field private final mSecureCameraActivityStartedRunnable:Ljava/lang/Runnable;

.field private final mTransitionToCameraEndAction:Ljava/lang/Runnable;

.field private final mTransitionToCameraRunnable:Ljava/lang/Runnable;

.field private mTransitioning:Z

.field private mWidgetView:Landroid/view/View;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;)V
    .locals 3
    .parameter "context"
    .parameter "callbacks"
    .parameter "activityLauncher"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mScreenLocation:[I

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$1;-><init>(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$2;-><init>(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitionToCameraEndAction:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$3;-><init>(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$4;-><init>(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRecoverEndAction:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$5;-><init>(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRenderRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$6;-><init>(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mSecureCameraActivityStartedRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$7;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$7;-><init>(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new CameraWidgetFrame instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->instanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->transitionToCamera()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitioning:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->reset()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->onSecureCameraActivityStarted()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->onKeyguardVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->inflateGenericWidgetView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    return-wide p1
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mSecureCameraActivityStartedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->recover()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRecovering:Z

    return v0
.end method

.method private cancelTransitionToCamera()V
    .locals 4

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelTransitionToCamera at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;)Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;
    .locals 6
    .parameter "context"
    .parameter "callbacks"
    .parameter "launcher"

    .prologue
    const/4 v5, -0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;->getCameraWidgetInfo()Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    move-result-object v2

    .local v2, widgetInfo:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;
    if-eqz v2, :cond_0

    iget v4, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->layoutId:I

    if-lez v4, :cond_2

    invoke-static {p0, v2}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->inflateWidgetView(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;

    move-result-object v3

    .local v3, widgetView:Landroid/view/View;
    :goto_1
    if-eqz v3, :cond_0

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .local v1, preview:Landroid/widget/ImageView;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040325

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;)V

    .local v0, cameraWidgetFrame:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->addView(Landroid/view/View;)V

    iput-object v3, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .end local v0           #cameraWidgetFrame:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;
    .end local v1           #preview:Landroid/widget/ImageView;
    .end local v3           #widgetView:Landroid/view/View;
    :cond_2
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->inflateGenericWidgetView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    goto :goto_1
.end method

.method private enableWindowExitAnimation(Z)V
    .locals 8
    .parameter "isEnabled"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getRootView()Landroid/view/View;

    move-result-object v2

    .local v2, root:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, v0

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    .local v3, wlp:Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_3

    const v1, 0x10301e2

    .local v1, newWindowAnimations:I
    :goto_1
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v1, v4, :cond_0

    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting windowAnimations to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .end local v1           #newWindowAnimations:I
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static inflateGenericWidgetView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v2, "inflateGenericWidgetView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .local v0, iv:Landroid/widget/ImageView;
    const v1, 0x10802df

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v1, 0x7f

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-object v0
.end method

.method private static inflateWidgetView(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;
    .locals 8
    .parameter "context"
    .parameter "widgetInfo"

    .prologue
    sget-boolean v5, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inflateWidgetView: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->contextPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v4, 0x0

    .local v4, widgetView:Landroid/view/View;
    const/4 v3, 0x0

    .local v3, exception:Ljava/lang/Exception;
    :try_start_0
    iget-object v5, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->contextPackage:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .local v0, cameraContext:Landroid/content/Context;
    const-string v5, "layout_inflater"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .local v1, cameraInflater:Landroid/view/LayoutInflater;
    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v5, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->layoutId:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .end local v0           #cameraContext:Landroid/content/Context;
    .end local v1           #cameraInflater:Landroid/view/LayoutInflater;
    :goto_0
    if-eqz v3, :cond_1

    sget-object v5, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v6, "Error creating camera widget view"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v4

    :catch_0
    move-exception v2

    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v3, v2

    goto :goto_0

    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .local v2, e:Ljava/lang/RuntimeException;
    move-object v3, v2

    goto :goto_0
.end method

.method private instanceId()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onCameraLaunched()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;->onCameraLaunchedSuccessfully()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->reset()V

    return-void
.end method

.method private onKeyguardVisibilityChanged(Z)V
    .locals 9
    .parameter "showing"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyguardVisibilityChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitioning:Z

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRecovering:Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    cmp-long v2, v2, v7

    if-lez v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    sub-long v0, v2, v4

    .local v0, launchTime:J
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v3, "Camera took %sms to launch"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-wide v7, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->onCameraLaunched()V

    .end local v0           #launchTime:J
    :cond_2
    return-void
.end method

.method private onSecureCameraActivityStarted()V
    .locals 4

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSecureCameraActivityStarted at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private recover()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recovering at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRecovering:Z

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRecoverEndAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private rescheduleTransitionToCamera()V
    .locals 4

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rescheduleTransitionToCamera at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28a

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private reset()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitioning:Z

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRecovering:Z

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mDown:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->setScaleX(F)V

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->setScaleY(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->setTranslationY(F)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->enableWindowExitAnimation(Z)V

    return-void
.end method

.method private transitionToCamera()V
    .locals 18

    .prologue
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mDown:Z

    if-eqz v13, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitioning:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, child:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getRootView()Landroid/view/View;

    move-result-object v6

    .local v6, root:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v12

    .local v12, startWidth:I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v11

    .local v11, startHeight:I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v4

    .local v4, finishWidth:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .local v3, finishHeight:I
    int-to-float v13, v4

    int-to-float v14, v12

    div-float v8, v13, v14

    .local v8, scaleX:F
    int-to-float v13, v3

    int-to-float v14, v11

    div-float v9, v13, v14

    .local v9, scaleY:F
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v13

    const/high16 v14, 0x42c8

    mul-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x42c8

    div-float v7, v13, v14

    .local v7, scale:F
    const/4 v13, 0x2

    new-array v5, v13, [I

    .local v5, loc:[I
    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v13, 0x1

    aget v13, v5, v13

    div-int/lit8 v14, v3, 0x2

    add-int v2, v13, v14

    .local v2, finishCenter:I
    invoke-virtual {v1, v5}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v13, 0x1

    aget v13, v5, v13

    div-int/lit8 v14, v11, 0x2

    add-int v10, v13, v14

    .local v10, startCenter:I
    sget-boolean v13, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v13, :cond_2

    sget-object v13, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v14, "Transitioning to camera. (start=%sx%s, finish=%sx%s, scale=%s,%s, startCenter=%s, finishCenter=%s)"

    const/16 v15, 0x8

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x5

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->enableWindowExitAnimation(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    sub-int v14, v2, v10

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    const-wide/16 v14, 0xfa

    invoke-virtual {v13, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitionToCameraEndAction:Ljava/lang/Runnable;

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewPropertyAnimator;->start()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

    invoke-interface {v13}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;->onLaunchingCamera()V

    goto/16 :goto_0
.end method


# virtual methods
.method public onActive(Z)V
    .locals 1
    .parameter "isActive"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mActive:Z

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mActive:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->rescheduleTransitionToCamera()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->reset()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v1, "clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mActive:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->transitionToCamera()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindow: instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->instanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

    return-void
.end method

.method protected onFocusLost()V
    .locals 4

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusLost at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->onFocusLost()V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->reset()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v2, "onSizeChanged new=%sx%s old=%sx%s at %s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getWorkerHandler()Landroid/os/Handler;

    move-result-object v0

    .local v0, worker:Landroid/os/Handler;
    if-eqz v0, :cond_1

    .end local v0           #worker:Landroid/os/Handler;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRenderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->onSizeChanged(IIII)V

    return-void

    .restart local v0       #worker:Landroid/os/Handler;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public onUserInteraction(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-eqz v4, :cond_1

    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v4, "onUserInteraction eaten: mTransitioning"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mScreenLocation:[I

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getLocationOnScreen([I)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mScreenLocation:[I

    aget v4, v4, v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getHeight()I

    move-result v5

    add-int v1, v4, v5

    .local v1, rawBottom:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    int-to-float v5, v1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v4, "onUserInteraction eaten: below widget"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, action:I
    if-eqz v0, :cond_3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_6

    :cond_3
    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mDown:Z

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mActive:Z

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->rescheduleTransitionToCamera()V

    :cond_4
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v4, "onUserInteraction observed, not eaten"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v2, v3

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_1
.end method

.method public render()V
    .locals 17

    .prologue
    const/4 v11, 0x1

    new-array v9, v11, [Ljava/lang/Throwable;

    .local v9, thrown:[Ljava/lang/Throwable;
    const/4 v11, 0x1

    new-array v5, v11, [Landroid/graphics/Bitmap;

    .local v5, offscreen:[Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getWidth()I

    move-result v10

    .local v10, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->getHeight()I

    move-result v4

    .local v4, height:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    if-ne v11, v10, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    if-ne v11, v4, :cond_1

    sget-boolean v11, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v11, :cond_0

    sget-object v11, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v12, "Already rendered at size=%sx%s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4           #height:I
    .end local v10           #width:I
    :cond_0
    :goto_0
    return-void

    .restart local v4       #height:I
    .restart local v10       #width:I
    :cond_1
    if-eqz v10, :cond_0

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .local v6, start:J
    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v4, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    aput-object v12, v5, v11

    new-instance v1, Landroid/graphics/Canvas;

    const/4 v11, 0x0

    aget-object v11, v5, v11

    invoke-direct {v1, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v1, c:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mWidgetView:Landroid/view/View;

    const/high16 v12, 0x4000

    invoke-static {v10, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    const/high16 v13, 0x4000

    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mWidgetView:Landroid/view/View;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v10, v4}, Landroid/view/View;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v11, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .local v2, end:J
    sget-boolean v11, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v11, :cond_2

    sget-object v11, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v12, "Rendered camera widget in %sms size=%sx%s instance=%s at %s"

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    sub-long v15, v2, v6

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->instanceId()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    invoke-virtual {v11, v10, v4}, Landroid/graphics/Point;->set(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v2           #end:J
    .end local v4           #height:I
    .end local v6           #start:J
    .end local v10           #width:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$8;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v9, v5}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$8;-><init>(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;[Ljava/lang/Throwable;[Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v8

    .local v8, t:Ljava/lang/Throwable;
    const/4 v11, 0x0

    aput-object v8, v9, v11

    goto :goto_1
.end method
