.class final Lcom/android/server/wm/WindowState;
.super Ljava/lang/Object;
.source "WindowState.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$WindowState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowState$1;,
        Lcom/android/server/wm/WindowState$DeathRecipient;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final DEBUG_VISIBILITY:Z = false

#the value of this static final field might be set in the static constructor
.field static final SHOW_LIGHT_TRANSACTIONS:Z = false

#the value of this static final field might be set in the static constructor
.field static final SHOW_SURFACE_ALLOC:Z = false

#the value of this static final field might be set in the static constructor
.field static final SHOW_TRANSACTIONS:Z = false

.field static final TAG:Ljava/lang/String; = "WindowState"


# instance fields
.field mAppFreezing:Z

.field mAppToken:Lcom/android/server/wm/AppWindowToken;

.field mAttachedHidden:Z

.field final mAttachedWindow:Lcom/android/server/wm/WindowState;

.field final mAttrs:Landroid/view/WindowManager$LayoutParams;

.field final mBaseLayer:I

.field final mChildWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mClient:Landroid/view/IWindow;

.field final mCompatFrame:Landroid/graphics/Rect;

.field mConfiguration:Landroid/content/res/Configuration;

.field final mContainingFrame:Landroid/graphics/Rect;

.field mContentChanged:Z

.field final mContentFrame:Landroid/graphics/Rect;

.field final mContentInsets:Landroid/graphics/Rect;

.field mContentInsetsChanged:Z

.field final mContext:Landroid/content/Context;

.field final mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

.field mDestroying:Z

.field mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field final mDisplayFrame:Landroid/graphics/Rect;

.field mEnforceSizeCompat:Z

.field mExiting:Z

.field final mFrame:Landroid/graphics/Rect;

.field final mGivenContentInsets:Landroid/graphics/Rect;

.field mGivenInsetsPending:Z

.field final mGivenTouchableRegion:Landroid/graphics/Region;

.field final mGivenVisibleInsets:Landroid/graphics/Rect;

.field mGlobalScale:F

.field mHScale:F

.field mHasSurface:Z

.field mHaveFrame:Z

.field mInputChannel:Landroid/view/InputChannel;

.field final mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field mInvGlobalScale:F

.field final mIsFloatingLayer:Z

.field final mIsImWindow:Z

.field final mIsWallpaper:Z

.field final mLastContentInsets:Landroid/graphics/Rect;

.field final mLastFrame:Landroid/graphics/Rect;

.field mLastHScale:F

.field mLastRequestedHeight:I

.field mLastRequestedWidth:I

.field final mLastSystemDecorRect:Landroid/graphics/Rect;

.field mLastTitle:Ljava/lang/CharSequence;

.field mLastVScale:F

.field final mLastVisibleInsets:Landroid/graphics/Rect;

.field mLayer:I

.field final mLayoutAttached:Z

.field mLayoutNeeded:Z

.field mLayoutSeq:I

.field mObscured:Z

.field mOrientationChanging:Z

.field mOwnerUid:I

.field final mParentFrame:Landroid/graphics/Rect;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPolicyVisibility:Z

.field mPolicyVisibilityAfterAnim:Z

.field mRebuilding:Z

.field mRelayoutCalled:Z

.field mRemoveOnExit:Z

.field mRemoved:Z

.field mRequestedHeight:I

.field mRequestedWidth:I

.field mRootToken:Lcom/android/server/wm/WindowToken;

.field mSeq:I

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSession:Lcom/android/server/wm/Session;

.field private mShowToOwnerOnly:Z

.field final mShownFrame:Landroid/graphics/RectF;

.field mStringNameCache:Ljava/lang/String;

.field final mSubLayer:I

.field final mSystemDecorRect:Landroid/graphics/Rect;

.field mSystemUiVisibility:I

.field mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field mToken:Lcom/android/server/wm/WindowToken;

.field mTouchableInsets:I

.field mTurnOnScreen:Z

.field mVScale:F

.field mViewVisibility:I

.field final mVisibleFrame:Landroid/graphics/Rect;

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mVisibleInsetsChanged:Z

.field mWallpaperCmd:Ljava/lang/String;

.field mWallpaperVisible:Z

.field mWallpaperX:F

.field mWallpaperXStep:F

.field mWallpaperY:F

.field mWallpaperYStep:F

.field mWasExiting:Z

.field final mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field mXOffset:I

.field mYOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    sput-boolean v0, Lcom/android/server/wm/WindowState;->DEBUG_VISIBILITY:Z

    .line 62
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    sput-boolean v0, Lcom/android/server/wm/WindowState;->SHOW_TRANSACTIONS:Z

    .line 63
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    sput-boolean v0, Lcom/android/server/wm/WindowState;->SHOW_LIGHT_TRANSACTIONS:Z

    .line 64
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_SURFACE_ALLOC:Z

    sput-boolean v0, Lcom/android/server/wm/WindowState;->SHOW_SURFACE_ALLOC:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;ILandroid/view/WindowManager$LayoutParams;ILcom/android/server/wm/DisplayContent;)V
    .locals 9
    .parameter "service"
    .parameter "s"
    .parameter "c"
    .parameter "token"
    .parameter "attachedWindow"
    .parameter "seq"
    .parameter "a"
    .parameter "viewVisibility"
    .parameter "displayContent"

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v6}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 81
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    .line 92
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 93
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 114
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 116
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    .line 123
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    .line 129
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    .line 130
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    .line 138
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    .line 139
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    .line 152
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    .line 158
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    .line 163
    new-instance v6, Landroid/graphics/Region;

    invoke-direct {v6}, Landroid/graphics/Region;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    .line 171
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 177
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    .line 178
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mLastSystemDecorRect:Landroid/graphics/Rect;

    .line 181
    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 182
    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 183
    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 184
    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    .line 185
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 188
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 189
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    .line 192
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    .line 194
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    .line 195
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 196
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    .line 197
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    .line 198
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    .line 204
    const/high16 v6, -0x4080

    iput v6, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 205
    const/high16 v6, -0x4080

    iput v6, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 209
    const/high16 v6, -0x4080

    iput v6, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 210
    const/high16 v6, -0x4080

    iput v6, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 259
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 272
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 273
    iput-object p2, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 274
    iput-object p3, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 275
    iput-object p4, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 276
    iget v6, p2, Lcom/android/server/wm/Session;->mUid:I

    iput v6, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 277
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 278
    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 279
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 280
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 281
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mContext:Landroid/content/Context;

    .line 282
    new-instance v3, Lcom/android/server/wm/WindowState$DeathRecipient;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v6}, Lcom/android/server/wm/WindowState$DeathRecipient;-><init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$1;)V

    .line 283
    .local v3, deathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;
    iput p6, p0, Lcom/android/server/wm/WindowState;->mSeq:I

    .line 284
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x2000

    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    .line 285
    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v6, :cond_0

    const-string v6, "WindowState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Window "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " client="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v8, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " params="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    :try_start_0
    invoke-interface {p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v3, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    .line 305
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_9

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7cf

    if-gt v6, v7, :cond_9

    .line 309
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v7, p5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v6

    mul-int/lit16 v6, v6, 0x2710

    add-int/lit16 v6, v6, 0x3e8

    iput v6, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 312
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p7

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy;->subWindowTypeToLayerLw(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 313
    iput-object p5, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 314
    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->DEBUG_ADD_REMOVE:Z

    if-eqz v6, :cond_1

    const-string v6, "WindowState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3eb

    if-eq v6, v7, :cond_5

    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 318
    iget-object v6, p5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7db

    if-eq v6, v7, :cond_2

    iget-object v6, p5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7dc

    if-ne v6, v7, :cond_6

    :cond_2
    const/4 v6, 0x1

    :goto_2
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 320
    iget-object v6, p5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7dd

    if-ne v6, v7, :cond_7

    const/4 v6, 0x1

    :goto_3
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 321
    iget-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v6, :cond_8

    :cond_3
    const/4 v6, 0x1

    :goto_4
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    .line 337
    :goto_5
    move-object v2, p0

    .line 338
    .local v2, appWin:Lcom/android/server/wm/WindowState;
    :goto_6
    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_f

    .line 339
    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_6

    .line 284
    .end local v2           #appWin:Lcom/android/server/wm/WindowState;
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 290
    :catch_0
    move-exception v4

    .line 291
    .local v4, e:Landroid/os/RemoteException;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    .line 292
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 293
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 294
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 295
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 296
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    .line 297
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 298
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 299
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 300
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 365
    .end local v4           #e:Landroid/os/RemoteException;
    :goto_7
    return-void

    .line 316
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 318
    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    .line 320
    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    .line 321
    :cond_8
    const/4 v6, 0x0

    goto :goto_4

    .line 325
    :cond_9
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p7

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v6

    mul-int/lit16 v6, v6, 0x2710

    add-int/lit16 v6, v6, 0x3e8

    iput v6, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 328
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 329
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 330
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 331
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7db

    if-eq v6, v7, :cond_a

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7dc

    if-ne v6, v7, :cond_c

    :cond_a
    const/4 v6, 0x1

    :goto_8
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 333
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7dd

    if-ne v6, v7, :cond_d

    const/4 v6, 0x1

    :goto_9
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 334
    iget-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v6, :cond_b

    iget-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v6, :cond_e

    :cond_b
    const/4 v6, 0x1

    :goto_a
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    goto :goto_5

    .line 331
    :cond_c
    const/4 v6, 0x0

    goto :goto_8

    .line 333
    :cond_d
    const/4 v6, 0x0

    goto :goto_9

    .line 334
    :cond_e
    const/4 v6, 0x0

    goto :goto_a

    .line 341
    .restart local v2       #appWin:Lcom/android/server/wm/WindowState;
    :cond_f
    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 342
    .local v1, appToken:Lcom/android/server/wm/WindowToken;
    :goto_b
    iget-object v6, v1, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v6, :cond_10

    .line 343
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    iget-object v7, v1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowToken;

    .line 344
    .local v5, parent:Lcom/android/server/wm/WindowToken;
    if-eqz v5, :cond_10

    if-ne v1, v5, :cond_11

    .line 349
    .end local v5           #parent:Lcom/android/server/wm/WindowToken;
    :cond_10
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    .line 350
    iget-object v6, v1, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 352
    new-instance v6, Lcom/android/server/wm/WindowStateAnimator;

    invoke-direct {v6, p0}, Lcom/android/server/wm/WindowStateAnimator;-><init>(Lcom/android/server/wm/WindowState;)V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 353
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v0, p7

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v7, v6, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 355
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 356
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 357
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    .line 358
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    .line 359
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 360
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 361
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 362
    new-instance v7, Lcom/android/server/input/InputWindowHandle;

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v6, v6, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    :goto_c
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v8

    invoke-direct {v7, v6, p0, v8}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;I)V

    iput-object v7, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    goto/16 :goto_7

    .line 347
    .restart local v5       #parent:Lcom/android/server/wm/WindowToken;
    :cond_11
    move-object v1, v5

    .line 348
    goto :goto_b

    .line 362
    .end local v5           #parent:Lcom/android/server/wm/WindowToken;
    :cond_12
    const/4 v6, 0x0

    goto :goto_c
.end method

.method private static applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .parameter "outRegion"
    .parameter "frame"
    .parameter "inset"

    .prologue
    .line 1077
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Region;->set(IIII)Z

    .line 1080
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    if-nez v0, :cond_0

    .line 1272
    const/4 v0, 0x0

    .line 1274
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method attach()V
    .locals 3

    .prologue
    .line 368
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attaching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", list="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v2, v2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v0}, Lcom/android/server/wm/Session;->windowAddedLocked()V

    .line 372
    return-void
.end method

.method public final canReceiveKeys()Z
    .locals 1

    .prologue
    .line 943
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 22
    .parameter "pf"
    .parameter "df"
    .parameter "cf"
    .parameter "vf"

    .prologue
    .line 376
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    .line 378
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    .line 379
    .local v5, container:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 382
    .local v11, display:Landroid/graphics/Rect;
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 384
    iget v2, v5, Landroid/graphics/Rect;->right:I

    iget v6, v5, Landroid/graphics/Rect;->left:I

    sub-int v16, v2, v6

    .line 385
    .local v16, pw:I
    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, v5, Landroid/graphics/Rect;->top:I

    sub-int v15, v2, v6

    .line 388
    .local v15, ph:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_13

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-gez v2, :cond_f

    .line 390
    move/from16 v3, v16

    .line 396
    .local v3, w:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-gez v2, :cond_11

    .line 397
    move v4, v15

    .line 420
    .local v4, h:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 424
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 426
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    if-ne v2, v6, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    if-eq v2, v6, :cond_2

    .line 427
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    .line 428
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    .line 429
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 432
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    .line 433
    .local v9, content:Landroid/graphics/Rect;
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    .line 436
    .local v17, visible:Landroid/graphics/Rect;
    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 439
    .local v8, frame:Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v14

    .line 440
    .local v14, fw:I
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v13

    .line 446
    .local v13, fh:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v2, :cond_18

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float v19, v2, v6

    .line 448
    .local v19, x:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float v20, v2, v6

    .line 454
    .local v20, y:F
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    move/from16 v0, v16

    int-to-float v7, v0

    mul-float/2addr v6, v7

    add-float v6, v6, v19

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    int-to-float v0, v15

    move/from16 v21, v0

    mul-float v7, v7, v21

    add-float v7, v7, v20

    float-to-int v7, v7

    invoke-static/range {v2 .. v8}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p2

    invoke-static {v2, v0, v8}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 465
    iget v2, v9, Landroid/graphics/Rect;->left:I

    iget v6, v8, Landroid/graphics/Rect;->left:I

    if-ge v2, v6, :cond_3

    iget v2, v8, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 466
    :cond_3
    iget v2, v9, Landroid/graphics/Rect;->top:I

    iget v6, v8, Landroid/graphics/Rect;->top:I

    if-ge v2, v6, :cond_4

    iget v2, v8, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 467
    :cond_4
    iget v2, v9, Landroid/graphics/Rect;->right:I

    iget v6, v8, Landroid/graphics/Rect;->right:I

    if-le v2, v6, :cond_5

    iget v2, v8, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 468
    :cond_5
    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    iget v6, v8, Landroid/graphics/Rect;->bottom:I

    if-le v2, v6, :cond_6

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    .line 469
    :cond_6
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v6, v8, Landroid/graphics/Rect;->left:I

    if-ge v2, v6, :cond_7

    iget v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 470
    :cond_7
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v6, v8, Landroid/graphics/Rect;->top:I

    if-ge v2, v6, :cond_8

    iget v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 471
    :cond_8
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v6, v8, Landroid/graphics/Rect;->right:I

    if-le v2, v6, :cond_9

    iget v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 472
    :cond_9
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v6, v8, Landroid/graphics/Rect;->bottom:I

    if-le v2, v6, :cond_a

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 474
    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    .line 475
    .local v10, contentInsets:Landroid/graphics/Rect;
    iget v2, v9, Landroid/graphics/Rect;->left:I

    iget v6, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v6

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 476
    iget v2, v9, Landroid/graphics/Rect;->top:I

    iget v6, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v6

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 477
    iget v2, v8, Landroid/graphics/Rect;->right:I

    iget v6, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v6

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 478
    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    iget v6, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v6

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    .line 481
    .local v18, visibleInsets:Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v6, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v6

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 482
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v6, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v6

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 483
    iget v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v6

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 484
    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v6

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 487
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v2, :cond_b

    .line 491
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->scale(F)V

    .line 492
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->scale(F)V

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->scale(F)V

    .line 499
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v2, :cond_d

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v14, v2, :cond_c

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v13, v2, :cond_d

    .line 500
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v12

    .line 501
    .local v12, displayInfo:Landroid/view/DisplayInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v12, Landroid/view/DisplayInfo;->appWidth:I

    iget v7, v12, Landroid/view/DisplayInfo;->appHeight:I

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v2, v0, v6, v7, v1}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 505
    .end local v12           #displayInfo:Landroid/view/DisplayInfo;
    :cond_d
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v2, :cond_e

    .line 508
    const-string v2, "WindowState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resolving (mRequestedWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mRequestedheight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") to"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (pw="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ph="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): frame="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ci="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " vi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_e
    return-void

    .line 391
    .end local v3           #w:I
    .end local v4           #h:I
    .end local v8           #frame:Landroid/graphics/Rect;
    .end local v9           #content:Landroid/graphics/Rect;
    .end local v10           #contentInsets:Landroid/graphics/Rect;
    .end local v13           #fh:I
    .end local v14           #fw:I
    .end local v17           #visible:Landroid/graphics/Rect;
    .end local v18           #visibleInsets:Landroid/graphics/Rect;
    .end local v19           #x:F
    .end local v20           #y:F
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v2, :cond_10

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v2, v6

    const/high16 v6, 0x3f00

    add-float/2addr v2, v6

    float-to-int v3, v2

    .restart local v3       #w:I
    goto/16 :goto_0

    .line 394
    .end local v3           #w:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .restart local v3       #w:I
    goto/16 :goto_0

    .line 398
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v2, :cond_12

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v2, v6

    const/high16 v6, 0x3f00

    add-float/2addr v2, v6

    float-to-int v4, v2

    .restart local v4       #h:I
    goto/16 :goto_1

    .line 401
    .end local v4           #h:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .restart local v4       #h:I
    goto/16 :goto_1

    .line 404
    .end local v3           #w:I
    .end local v4           #h:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_14

    .line 405
    move/from16 v3, v16

    .line 411
    .restart local v3       #w:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_16

    .line 412
    move v4, v15

    .restart local v4       #h:I
    goto/16 :goto_1

    .line 406
    .end local v3           #w:I
    .end local v4           #h:I
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v2, :cond_15

    .line 407
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v2, v6

    const/high16 v6, 0x3f00

    add-float/2addr v2, v6

    float-to-int v3, v2

    .restart local v3       #w:I
    goto :goto_3

    .line 409
    .end local v3           #w:I
    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .restart local v3       #w:I
    goto :goto_3

    .line 413
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v2, :cond_17

    .line 414
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v2, v6

    const/high16 v6, 0x3f00

    add-float/2addr v2, v6

    float-to-int v4, v2

    .restart local v4       #h:I
    goto/16 :goto_1

    .line 416
    .end local v4           #h:I
    :cond_17
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .restart local v4       #h:I
    goto/16 :goto_1

    .line 450
    .restart local v8       #frame:Landroid/graphics/Rect;
    .restart local v9       #content:Landroid/graphics/Rect;
    .restart local v13       #fh:I
    .restart local v14       #fw:I
    .restart local v17       #visible:Landroid/graphics/Rect;
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v2

    move/from16 v19, v0

    .line 451
    .restart local v19       #x:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v2

    move/from16 v20, v0

    .restart local v20       #y:F
    goto/16 :goto_2
.end method

.method disposeInputChannel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 912
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 915
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 916
    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-object v2, v0, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 920
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 6
    .parameter "pw"
    .parameter "prefix"
    .parameter "dumpAll"

    .prologue
    const/high16 v5, 0x3f80

    const/high16 v4, -0x4080

    .line 1109
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mDisplayId="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1110
    const-string v1, " mSession="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1111
    const-string v1, " mClient="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1112
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mOwnerUid="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1113
    const-string v1, " mShowToOwnerOnly="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1114
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mAttrs="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1115
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Requested w="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1116
    const-string v1, " h="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1117
    const-string v1, " mLayoutSeq="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1118
    iget v1, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    if-eq v1, v2, :cond_1

    .line 1119
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "LastRequested w="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1120
    const-string v1, " h="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1122
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v1, :cond_3

    .line 1123
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mAttachedWindow="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1124
    const-string v1, " mLayoutAttached="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1126
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    if-eqz v1, :cond_5

    .line 1127
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mIsImWindow="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1128
    const-string v1, " mIsWallpaper="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1129
    const-string v1, " mIsFloatingLayer="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1130
    const-string v1, " mWallpaperVisible="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1131
    const-string v1, " mWallpaperCmd="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperCmd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1133
    :cond_5
    if-eqz p3, :cond_6

    .line 1134
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mBaseLayer="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1135
    const-string v1, " mSubLayer="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1136
    const-string v1, " mAnimLayer="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "+"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1137
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1140
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1141
    const-string v1, " mLastLayer="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1143
    :cond_6
    if-eqz p3, :cond_9

    .line 1144
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mToken="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1145
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mRootToken="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1146
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_7

    .line 1147
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mAppToken="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1149
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_8

    .line 1150
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTargetAppToken="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1152
    :cond_8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mViewVisibility=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1153
    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1154
    const-string v1, " mHaveFrame="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1155
    const-string v1, " mObscured="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mObscured:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1156
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mSeq="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mSeq:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1157
    const-string v1, " mSystemUiVisibility=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1158
    iget v1, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1160
    :cond_9
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-eqz v1, :cond_b

    .line 1161
    :cond_a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mPolicyVisibility="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1162
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1163
    const-string v1, " mPolicyVisibilityAfterAnim="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1164
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1165
    const-string v1, " mAttachedHidden="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1167
    :cond_b
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v1, :cond_d

    .line 1168
    :cond_c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mRelayoutCalled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1169
    const-string v1, " mLayoutNeeded="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1171
    :cond_d
    iget v1, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    if-nez v1, :cond_e

    iget v1, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    if-eqz v1, :cond_f

    .line 1172
    :cond_e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Offsets x="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1173
    const-string v1, " y="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1175
    :cond_f
    if-eqz p3, :cond_12

    .line 1176
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mGivenContentInsets="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1177
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1178
    const-string v1, " mGivenVisibleInsets="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1179
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1180
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1181
    iget v1, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-eqz v1, :cond_11

    .line 1182
    :cond_10
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTouchableInsets="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1183
    const-string v1, " mGivenInsetsPending="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1184
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 1185
    .local v0, region:Landroid/graphics/Region;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 1186
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "touchable region="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1188
    .end local v0           #region:Landroid/graphics/Region;
    :cond_11
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mConfiguration="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1190
    :cond_12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mHasSurface="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1191
    const-string v1, " mShownFrame="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->printShortString(Ljava/io/PrintWriter;)V

    .line 1192
    const-string v1, " isReadyForDisplay()="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1193
    if-eqz p3, :cond_13

    .line 1194
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mFrame="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1195
    const-string v1, " last="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1196
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1197
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mSystemDecorRect="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1198
    const-string v1, " last="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1199
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1201
    :cond_13
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v1, :cond_14

    .line 1202
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCompatFrame="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1203
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1205
    :cond_14
    if-eqz p3, :cond_15

    .line 1206
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Frames: containing="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1207
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1208
    const-string v1, " parent="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1209
    const-string v1, " display="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1210
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1211
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    content="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1212
    const-string v1, " visible="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1213
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1214
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Cur insets: content="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1215
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1216
    const-string v1, " visible="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1217
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1218
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Lst insets: content="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1219
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1220
    const-string v1, " visible="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1221
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1223
    :cond_15
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1224
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p3}, Lcom/android/server/wm/WindowStateAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1225
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v1, :cond_17

    .line 1226
    :cond_16
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mExiting="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1227
    const-string v1, " mRemoveOnExit="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1228
    const-string v1, " mDestroying="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1229
    const-string v1, " mRemoved="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1231
    :cond_17
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-nez v1, :cond_18

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v1, :cond_18

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v1, :cond_19

    .line 1232
    :cond_18
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mOrientationChanging="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1233
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1234
    const-string v1, " mAppFreezing="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1235
    const-string v1, " mTurnOnScreen="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1237
    :cond_19
    iget v1, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_1a

    iget v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_1b

    .line 1238
    :cond_1a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mHScale="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 1239
    const-string v1, " mVScale="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(F)V

    .line 1241
    :cond_1b
    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1c

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_1d

    .line 1242
    :cond_1c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mWallpaperX="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 1243
    const-string v1, " mWallpaperY="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(F)V

    .line 1245
    :cond_1d
    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1e

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_1f

    .line 1246
    :cond_1e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mWallpaperXStep="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 1247
    const-string v1, " mWallpaperYStep="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(F)V

    .line 1249
    :cond_1f
    return-void

    .line 1137
    :cond_20
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    goto/16 :goto_0

    :cond_21
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public getAppToken()Landroid/view/IApplicationToken;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttrs()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getContentFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDisplayFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDisplayId()I
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    return v0
.end method

.method public getFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGivenContentInsetsLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGivenInsetsPendingLw()Z
    .locals 1

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    return v0
.end method

.method public getGivenVisibleInsetsLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getInputDispatchingTimeoutNanos()J
    .locals 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-wide v0, v0, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x1dcd65000L

    goto :goto_0
.end method

.method public getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 6
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 580
    const/4 v0, -0x1

    .line 581
    .local v0, index:I
    move-object v2, p0

    .line 583
    .local v2, ws:Lcom/android/server/wm/WindowState;
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7d4

    if-ne v4, v5, :cond_1

    .line 610
    :cond_0
    :goto_0
    return v3

    .line 587
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v1

    .line 591
    .local v1, windows:Lcom/android/server/wm/WindowList;
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_2

    .line 595
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x800

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 599
    :cond_2
    if-eq v2, p1, :cond_0

    .line 605
    if-gez v0, :cond_3

    .line 606
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 608
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 609
    if-ltz v0, :cond_0

    .line 612
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #ws:Lcom/android/server/wm/WindowState;
    check-cast v2, Lcom/android/server/wm/WindowState;

    .restart local v2       #ws:Lcom/android/server/wm/WindowState;
    goto :goto_1
.end method

.method public getShownFrameLw()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getSurfaceLayer()I
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    return v0
.end method

.method public getSystemUiVisibility()I
    .locals 1

    .prologue
    .line 618
    iget v0, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    return v0
.end method

.method public getTouchableRegion(Landroid/graphics/Region;)V
    .locals 4
    .parameter "outRegion"

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 1084
    .local v0, frame:Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    packed-switch v2, :pswitch_data_0

    .line 1087
    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 1102
    :goto_0
    return-void

    .line 1090
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-static {p1, v0, v2}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1093
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-static {p1, v0, v2}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1096
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    .line 1097
    .local v1, givenTouchableRegion:Landroid/graphics/Region;
    invoke-virtual {p1, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1098
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Region;->translate(II)V

    goto :goto_0

    .line 1084
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getVisibleFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getWindowList()Lcom/android/server/wm/WindowList;
    .locals 1

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v0

    return-object v0
.end method

.method getWindowMagnificationSpecLocked()Lcom/android/server/wm/MagnificationSpec;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 519
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Lcom/android/server/wm/MagnificationSpec;

    .line 520
    .local v0, spec:Lcom/android/server/wm/MagnificationSpec;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/MagnificationSpec;->isNop()Z

    move-result v2

    if-nez v2, :cond_0

    .line 521
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_1

    .line 522
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->canMagnifyWindowLw(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 530
    .end local v0           #spec:Lcom/android/server/wm/MagnificationSpec;
    :cond_0
    :goto_0
    return-object v0

    .line 526
    .restart local v0       #spec:Lcom/android/server/wm/MagnificationSpec;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->canMagnifyWindowLw(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 527
    goto :goto_0
.end method

.method public hasAppShownWindows()Z
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDrawnLw()Z
    .locals 2

    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideLw(Z)Z
    .locals 1
    .parameter "doAnimation"

    .prologue
    .line 994
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v0

    return v0
.end method

.method hideLw(ZZ)Z
    .locals 6
    .parameter "doAnimation"
    .parameter "requestAnim"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 998
    if-eqz p1, :cond_0

    .line 999
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1000
    const/4 p1, 0x0

    .line 1003
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 1005
    .local v0, current:Z
    :goto_0
    if-nez v0, :cond_2

    .line 1032
    :goto_1
    return v1

    .line 1003
    .end local v0           #current:Z
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    goto :goto_0

    .line 1009
    .restart local v0       #current:Z
    :cond_2
    if-eqz p1, :cond_3

    .line 1010
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/16 v4, 0x2002

    invoke-virtual {v3, v4, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 1011
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v3, :cond_3

    .line 1012
    const/4 p1, 0x0

    .line 1015
    :cond_3
    if-eqz p1, :cond_6

    .line 1016
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 1029
    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    .line 1030
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->updateLayoutToAnimationLocked()V

    :cond_5
    move v1, v2

    .line 1032
    goto :goto_1

    .line 1018
    :cond_6
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v3, :cond_7

    const-string v3, "WindowState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Policy visibility false: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :cond_7
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 1020
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 1024
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 1025
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v1, p0, :cond_4

    .line 1026
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    goto :goto_2
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public isAnimatingLw()Z
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isClosing()Z
    .locals 2

    .prologue
    .line 1041
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isConfigChanged()Z
    .locals 2

    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isConfigDiff(I)Z
    .locals 2
    .parameter "mask"

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultDisplay()Z
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    return v0
.end method

.method public isDisplayedLw()Z
    .locals 2

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 805
    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDrawnLw()Z
    .locals 2

    .prologue
    .line 839
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFullscreen(II)Z
    .locals 1
    .parameter "screenWidth"
    .parameter "screenHeight"

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGoneForLayoutLw()Z
    .locals 3

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 824
    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v1, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isHiddenFromUserLocked()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1055
    move-object v1, p0

    .line 1056
    .local v1, win:Lcom/android/server/wm/WindowState;
    :goto_0
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_0

    .line 1057
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 1059
    :cond_0
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d0

    if-ge v3, v4, :cond_2

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->showWhenLocked:Z

    if-eqz v3, :cond_2

    .line 1063
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1064
    .local v0, displayInfo:Landroid/view/DisplayInfo;
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gtz v3, :cond_2

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gtz v3, :cond_2

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/view/DisplayInfo;->appWidth:I

    if-lt v3, v4, :cond_2

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/view/DisplayInfo;->appHeight:I

    if-lt v3, v4, :cond_2

    .line 1072
    .end local v0           #displayInfo:Landroid/view/DisplayInfo;
    :cond_1
    :goto_1
    return v2

    :cond_2
    iget-boolean v3, v1, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    if-eqz v3, :cond_1

    iget v3, v1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-eq v3, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1
.end method

.method isIdentityMatrix(FFFF)Z
    .locals 6
    .parameter "dsdx"
    .parameter "dtdx"
    .parameter "dsdy"
    .parameter "dtdy"

    .prologue
    const v5, 0x3f800054

    const v4, 0x3f7fff58

    const v3, 0x358637bd

    const v2, -0x4a79c843

    const/4 v0, 0x0

    .line 646
    cmpg-float v1, p1, v4

    if-ltz v1, :cond_0

    cmpl-float v1, p1, v5

    if-lez v1, :cond_1

    .line 650
    :cond_0
    :goto_0
    return v0

    .line 647
    :cond_1
    cmpg-float v1, p4, v4

    if-ltz v1, :cond_0

    cmpl-float v1, p4, v5

    if-gtz v1, :cond_0

    .line 648
    cmpg-float v1, p2, v2

    if-ltz v1, :cond_0

    cmpl-float v1, p2, v3

    if-gtz v1, :cond_0

    .line 649
    cmpg-float v1, p3, v2

    if-ltz v1, :cond_0

    cmpl-float v1, p3, v3

    if-gtz v1, :cond_0

    .line 650
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isOnScreen()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 748
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v3, :cond_1

    .line 756
    :cond_0
    :goto_0
    return v1

    .line 751
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 752
    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_4

    .line 753
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v3, :cond_2

    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 756
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method isOpaqueDrawn()Z
    .locals 2

    .prologue
    .line 849
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPotentialDragTarget()Z
    .locals 1

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isReadyForDisplay()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 764
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 768
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isReadyForDisplayIgnoringKeyguard()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 780
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 790
    :cond_0
    :goto_0
    return v1

    .line 784
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 785
    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_2

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v2, :cond_0

    .line 790
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_4

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->isDummyAnimation()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isVisibleLw()Z
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 670
    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isVisibleNow()Z
    .locals 1

    .prologue
    .line 716
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVisibleOrAdding()Z
    .locals 2

    .prologue
    .line 735
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 736
    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v1, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVisibleOrBehindKeyguardLw()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 685
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 692
    :goto_0
    return v3

    .line 689
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 690
    .local v1, atoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_5

    iget-object v4, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_4

    move v0, v2

    .line 692
    .local v0, animating:Z
    :goto_1
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v4, :cond_7

    if-nez v1, :cond_6

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v4, :cond_7

    :cond_1
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v4, :cond_3

    if-eqz v0, :cond_7

    :cond_3
    :goto_2
    move v3, v2

    goto :goto_0

    .end local v0           #animating:Z
    :cond_4
    move v0, v3

    .line 690
    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_1

    .line 692
    .restart local v0       #animating:Z
    :cond_6
    iget-boolean v4, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v4, :cond_1

    :cond_7
    move v2, v3

    goto :goto_2
.end method

.method public isWinVisibleLw()Z
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 706
    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method makeInputChannelName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method prelayout()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 654
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    iput v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 656
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float v0, v1, v0

    iput v0, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 660
    :goto_0
    return-void

    .line 658
    :cond_0
    iput v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    iput v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    goto :goto_0
.end method

.method removeLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 885
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    .line 887
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    .line 888
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowStateAnimator;->destroyDeferredSurfaceLocked(Z)V

    .line 892
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked(Z)V

    .line 893
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v0}, Lcom/android/server/wm/Session;->windowRemovedLocked()V

    .line 895
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    :goto_0
    return-void

    .line 896
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method setInputChannel(Landroid/view/InputChannel;)V
    .locals 2
    .parameter "inputChannel"

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    .line 904
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Window already has an input channel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 907
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 908
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-object p1, v0, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 909
    return-void
.end method

.method public setShowToOwnerOnlyLocked(Z)V
    .locals 0
    .parameter "showToOwnerOnly"

    .prologue
    .line 1050
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    .line 1051
    return-void
.end method

.method shouldAnimateMove()Z
    .locals 2

    .prologue
    .line 861
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->shouldAnimateMove()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showLw(Z)Z
    .locals 1
    .parameter "doAnimation"

    .prologue
    .line 955
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v0

    return v0
.end method

.method showLw(ZZ)Z
    .locals 4
    .parameter "doAnimation"
    .parameter "requestAnim"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 959
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 960
    const-string v1, "WindowState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current user violation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " trying to display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", belonging to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_0
    :goto_0
    return v0

    .line 964
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-nez v2, :cond_0

    .line 968
    :cond_2
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_3

    const-string v0, "WindowState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Policy visibility true: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_3
    if-eqz p1, :cond_5

    .line 970
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_4

    const-string v0, "WindowState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAnimation: mPolicyVisibility="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mAnimation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v0

    if-nez v0, :cond_8

    .line 973
    const/4 p1, 0x0

    .line 981
    :cond_5
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 982
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 983
    if-eqz p1, :cond_6

    .line 984
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/16 v2, 0x1001

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 986
    :cond_6
    if-eqz p2, :cond_7

    .line 987
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->updateLayoutToAnimationLocked()V

    :cond_7
    move v0, v1

    .line 989
    goto :goto_0

    .line 974
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_5

    .line 978
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eq v0, v1, :cond_1

    .line 1260
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    .line 1261
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    .line 1262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Window{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eqz v0, :cond_2

    const-string v0, " EXITING}"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    .line 1266
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    return-object v0

    .line 1262
    :cond_2
    const-string v0, "}"

    goto :goto_0
.end method
