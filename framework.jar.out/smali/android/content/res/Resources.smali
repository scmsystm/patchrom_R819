.class public Landroid/content/res/Resources;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/Resources$Theme;,
        Landroid/content/res/Resources$NotFoundException;
    }
.end annotation


# static fields
.field private static final DEBUG_ATTRIBUTES_CACHE:Z = false

.field private static final DEBUG_CONFIG:Z = false

.field private static final DEBUG_LOAD:Z = false

.field private static final DEBUG_THEME:Z = false

.field private static final DEFAULT_THEME_PATH:Ljava/lang/String; = "/system/framework/framework-res.apk"

.field private static final ID_OTHER:I = 0x1000004

.field private static final STR_COLOR:Ljava/lang/String; = "color"

.field private static final STR_TYPE_THEME_PREVIEW:Ljava/lang/String; = "previewtheme"

.field static final TAG:Ljava/lang/String; = "Resources"

.field private static final THEME_COLOR_PATH:Ljava/lang/String; = "assets/color/colors.xml"

.field private static final TRACE_FOR_MISS_PRELOAD:Z

.field private static final TRACE_FOR_PRELOAD:Z

.field private static mMtkColorCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSync:Ljava/lang/Object;

.field static mSystem:Landroid/content/res/Resources;

.field private static sPreloaded:Z

.field private static final sPreloadedColorDrawables:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPreloadedColorStateLists:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private static sPreloadedDensity:I

.field private static final sPreloadedDrawables:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAssets:Landroid/content/res/AssetManager;

.field mCachedStyledAttributes:Landroid/content/res/TypedArray;

.field private final mCachedXmlBlockIds:[I

.field private final mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

.field private final mColorDrawableCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mColorStateListCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mDrawableCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastCachedXmlBlockIndex:I

.field mLastRetrievedAttrs:Ljava/lang/RuntimeException;

.field final mMetrics:Landroid/util/DisplayMetrics;

.field private mPluralRule:Llibcore/icu/NativePluralRules;

.field private mPreloading:Z

.field final mTmpConfig:Landroid/content/res/Configuration;

.field final mTmpValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/Resources;->mSync:Ljava/lang/Object;

    .line 88
    const/4 v0, 0x0

    sput-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    .line 93
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/content/res/Resources;->sPreloadedDrawables:Landroid/util/LongSparseArray;

    .line 95
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    .line 97
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    .line 2513
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/res/Resources;->mMtkColorCache:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 2273
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 103
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    .line 106
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    .line 108
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/LongSparseArray;

    .line 110
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    .line 114
    iput-object v2, p0, Landroid/content/res/Resources;->mCachedStyledAttributes:Landroid/content/res/TypedArray;

    .line 115
    iput-object v2, p0, Landroid/content/res/Resources;->mLastRetrievedAttrs:Ljava/lang/RuntimeException;

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    .line 118
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    .line 119
    new-array v0, v1, [Landroid/content/res/XmlBlock;

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 122
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    .line 123
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    .line 2274
    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    .line 2278
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 2279
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/content/res/Configuration;->getSkin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 2280
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 2281
    invoke-virtual {p0, v2, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2282
    iget-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->ensureStringBlocks()V

    .line 2283
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 2284
    return-void

    .line 118
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"
    .parameter "compInfo"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 191
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 103
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    .line 106
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    .line 108
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/LongSparseArray;

    .line 110
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    .line 114
    iput-object v2, p0, Landroid/content/res/Resources;->mCachedStyledAttributes:Landroid/content/res/TypedArray;

    .line 115
    iput-object v2, p0, Landroid/content/res/Resources;->mLastRetrievedAttrs:Ljava/lang/RuntimeException;

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    .line 118
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    .line 119
    new-array v0, v1, [Landroid/content/res/XmlBlock;

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 122
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    .line 123
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    .line 192
    iput-object p1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    .line 193
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 194
    iput-object p4, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 195
    invoke-virtual {p0, p3, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 196
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->ensureStringBlocks()V

    .line 197
    return-void

    .line 118
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/content/res/Resources;->getCachedStyledAttributes(I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method private static attrForQuantityCode(I)I
    .locals 1
    .parameter "quantityCode"

    .prologue
    .line 285
    packed-switch p0, :pswitch_data_0

    .line 291
    const v0, 0x1000004

    :goto_0
    return v0

    .line 286
    :pswitch_0
    const v0, 0x1000005

    goto :goto_0

    .line 287
    :pswitch_1
    const v0, 0x1000006

    goto :goto_0

    .line 288
    :pswitch_2
    const v0, 0x1000007

    goto :goto_0

    .line 289
    :pswitch_3
    const v0, 0x1000008

    goto :goto_0

    .line 290
    :pswitch_4
    const v0, 0x1000009

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private clearDrawableCache(Landroid/util/LongSparseArray;I)V
    .locals 5
    .parameter
    .parameter "configChanges"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 1557
    .local p1, cache:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1562
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1563
    invoke-virtual {p1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1564
    .local v3, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v3, :cond_0

    .line 1565
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 1566
    .local v1, cs:Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_0

    .line 1567
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v4

    invoke-static {p2, v4}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1575
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 1562
    .end local v1           #cs:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1586
    .end local v3           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :cond_1
    return-void
.end method

.method private generateCurrentDensitySuffix()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x140

    const/16 v6, 0xf0

    const/16 v5, 0xa0

    .line 2489
    iget-object v2, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 2490
    .local v0, density:I
    const-string v2, "Resources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ThemeManager density= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    const-string/jumbo v1, "mdpi/"

    .line 2492
    .local v1, densityString:Ljava/lang/String;
    const/16 v2, 0x78

    if-lt v0, v2, :cond_1

    if-ge v0, v5, :cond_1

    .line 2493
    const-string v1, "ldpi/"

    .line 2501
    :cond_0
    :goto_0
    const-string v2, "Resources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ThemeManager densityString= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    return-object v1

    .line 2494
    :cond_1
    if-lt v0, v5, :cond_2

    if-ge v0, v6, :cond_2

    .line 2495
    const-string/jumbo v1, "mdpi/"

    goto :goto_0

    .line 2496
    :cond_2
    if-lt v0, v6, :cond_3

    if-ge v0, v7, :cond_3

    .line 2497
    const-string v1, "hdpi/"

    goto :goto_0

    .line 2498
    :cond_3
    if-lt v0, v7, :cond_0

    .line 2499
    const-string/jumbo v1, "xhdpi/"

    goto :goto_0
.end method

.method private getCachedColorStateList(J)Landroid/content/res/ColorStateList;
    .locals 4
    .parameter "key"

    .prologue
    .line 2158
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v3

    .line 2159
    :try_start_0
    iget-object v2, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2160
    .local v1, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/ColorStateList;>;"
    if-eqz v1, :cond_1

    .line 2161
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    .line 2162
    .local v0, entry:Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    .line 2166
    monitor-exit v3

    .line 2172
    .end local v0           #entry:Landroid/content/res/ColorStateList;
    :goto_0
    return-object v0

    .line 2168
    .restart local v0       #entry:Landroid/content/res/ColorStateList;
    :cond_0
    iget-object v2, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 2171
    .end local v0           #entry:Landroid/content/res/ColorStateList;
    :cond_1
    monitor-exit v3

    .line 2172
    const/4 v0, 0x0

    goto :goto_0

    .line 2171
    .end local v1           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/ColorStateList;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getCachedDrawable(Landroid/util/LongSparseArray;J)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;J)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 2053
    .local p1, drawableCache:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v3

    .line 2054
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2055
    .local v1, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v1, :cond_1

    .line 2056
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 2057
    .local v0, entry:Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_0

    .line 2061
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    monitor-exit v3

    .line 2068
    .end local v0           #entry:Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_0
    return-object v2

    .line 2064
    .restart local v0       #entry:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->delete(J)V

    .line 2067
    .end local v0           #entry:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    monitor-exit v3

    .line 2068
    const/4 v2, 0x0

    goto :goto_0

    .line 2067
    .end local v1           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getCachedStyledAttributes(I)Landroid/content/res/TypedArray;
    .locals 5
    .parameter "len"

    .prologue
    .line 2240
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v3

    .line 2241
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mCachedStyledAttributes:Landroid/content/res/TypedArray;

    .line 2242
    .local v0, attrs:Landroid/content/res/TypedArray;
    if-eqz v0, :cond_1

    .line 2243
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/res/Resources;->mCachedStyledAttributes:Landroid/content/res/TypedArray;

    .line 2249
    iput p1, v0, Landroid/content/res/TypedArray;->mLength:I

    .line 2250
    mul-int/lit8 v1, p1, 0x6

    .line 2251
    .local v1, fullLen:I
    iget-object v2, v0, Landroid/content/res/TypedArray;->mData:[I

    array-length v2, v2

    if-lt v2, v1, :cond_0

    .line 2252
    monitor-exit v3

    .line 2267
    .end local v0           #attrs:Landroid/content/res/TypedArray;
    .end local v1           #fullLen:I
    :goto_0
    return-object v0

    .line 2254
    .restart local v0       #attrs:Landroid/content/res/TypedArray;
    .restart local v1       #fullLen:I
    :cond_0
    new-array v2, v1, [I

    iput-object v2, v0, Landroid/content/res/TypedArray;->mData:[I

    .line 2255
    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [I

    iput-object v2, v0, Landroid/content/res/TypedArray;->mIndices:[I

    .line 2256
    monitor-exit v3

    goto :goto_0

    .line 2270
    .end local v0           #attrs:Landroid/content/res/TypedArray;
    .end local v1           #fullLen:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2267
    .restart local v0       #attrs:Landroid/content/res/TypedArray;
    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/res/TypedArray;

    .end local v0           #attrs:Landroid/content/res/TypedArray;
    mul-int/lit8 v2, p1, 0x6

    new-array v2, v2, [I

    add-int/lit8 v4, p1, 0x1

    new-array v4, v4, [I

    invoke-direct {v0, p0, v2, v4, p1}, Landroid/content/res/TypedArray;-><init>(Landroid/content/res/Resources;[I[II)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private getPluralRule()Llibcore/icu/NativePluralRules;
    .locals 2

    .prologue
    .line 276
    sget-object v1, Landroid/content/res/Resources;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 277
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/NativePluralRules;->forLocale(Ljava/util/Locale;)Llibcore/icu/NativePluralRules;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    .line 280
    :cond_0
    iget-object v0, p0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    monitor-exit v1

    return-object v0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getSystem()Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 206
    sget-object v2, Landroid/content/res/Resources;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 207
    :try_start_0
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    .line 208
    .local v0, ret:Landroid/content/res/Resources;
    if-nez v0, :cond_0

    .line 209
    new-instance v0, Landroid/content/res/Resources;

    .end local v0           #ret:Landroid/content/res/Resources;
    invoke-direct {v0}, Landroid/content/res/Resources;-><init>()V

    .line 210
    .restart local v0       #ret:Landroid/content/res/Resources;
    sput-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    .line 213
    :cond_0
    monitor-exit v2

    return-object v0

    .line 214
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadPreloadedColorResources()V
    .locals 8

    .prologue
    .line 2398
    const/4 v5, 0x0

    :try_start_0
    sput-boolean v5, Landroid/content/res/Resources;->sPreloaded:Z

    .line 2399
    invoke-virtual {p0}, Landroid/content/res/Resources;->startPreloading()V

    .line 2400
    const v5, 0x1070006

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2401
    .local v1, ar:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 2402
    .local v0, N:I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 2403
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 2404
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 2405
    .local v4, id:I
    const-string v5, "Resources"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Preloading resource #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    if-eqz v4, :cond_0

    .line 2407
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 2403
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2410
    .end local v4           #id:I
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->finishPreloading()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2414
    .end local v0           #N:I
    .end local v1           #ar:Landroid/content/res/TypedArray;
    .end local v3           #i:I
    :goto_1
    return-void

    .line 2411
    :catch_0
    move-exception v2

    .line 2412
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v5, "Resources"

    const-string v6, "Failure loading preloaded resources."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private loadPreloadedDrawableResources()V
    .locals 9

    .prologue
    .line 2372
    const/4 v6, 0x0

    :try_start_0
    sput-boolean v6, Landroid/content/res/Resources;->sPreloaded:Z

    .line 2373
    invoke-virtual {p0}, Landroid/content/res/Resources;->startPreloading()V

    .line 2374
    const v6, 0x1070005

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2375
    .local v1, ar:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 2376
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 2377
    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 2378
    .local v5, id:I
    const-string v6, "Resources"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Preloading resource #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    if-eqz v5, :cond_0

    .line 2380
    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2381
    .local v2, dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v6

    const v7, -0x40000001

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    .line 2382
    const-string v6, "Resources"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Preloaded drawable resource #0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") that varies with configuration!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    .end local v2           #dr:Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2387
    .end local v5           #id:I
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->finishPreloading()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2391
    .end local v0           #N:I
    .end local v1           #ar:Landroid/content/res/TypedArray;
    .end local v4           #i:I
    :goto_1
    return-void

    .line 2388
    :catch_0
    move-exception v3

    .line 2389
    .local v3, e:Ljava/lang/RuntimeException;
    const-string v6, "Resources"

    const-string v7, "Failure loading preloaded resources."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static selectDefaultTheme(II)I
    .locals 3
    .parameter "curTheme"
    .parameter "targetSdkVersion"

    .prologue
    .line 130
    const v0, 0x1030005

    const v1, 0x103006b

    const v2, 0x1030128

    invoke-static {p0, p1, v0, v1, v2}, Landroid/content/res/Resources;->selectSystemTheme(IIIII)I

    move-result v0

    return v0
.end method

.method public static selectSystemTheme(IIIII)I
    .locals 1
    .parameter "curTheme"
    .parameter "targetSdkVersion"
    .parameter "orig"
    .parameter "holo"
    .parameter "deviceDefault"

    .prologue
    .line 139
    if-eqz p0, :cond_0

    .line 148
    .end local p0
    :goto_0
    return p0

    .line 142
    .restart local p0
    :cond_0
    const/16 v0, 0xb

    if-ge p1, v0, :cond_1

    move p0, p2

    .line 143
    goto :goto_0

    .line 145
    :cond_1
    const/16 v0, 0xe

    if-ge p1, v0, :cond_2

    move p0, p3

    .line 146
    goto :goto_0

    :cond_2
    move p0, p4

    .line 148
    goto :goto_0
.end method

.method private static stringForQuantityCode(I)Ljava/lang/String;
    .locals 1
    .parameter "quantityCode"

    .prologue
    .line 296
    packed-switch p0, :pswitch_data_0

    .line 302
    const-string/jumbo v0, "other"

    :goto_0
    return-object v0

    .line 297
    :pswitch_0
    const-string/jumbo v0, "zero"

    goto :goto_0

    .line 298
    :pswitch_1
    const-string/jumbo v0, "one"

    goto :goto_0

    .line 299
    :pswitch_2
    const-string/jumbo v0, "two"

    goto :goto_0

    .line 300
    :pswitch_3
    const-string v0, "few"

    goto :goto_0

    .line 301
    :pswitch_4
    const-string/jumbo v0, "many"

    goto :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .locals 1
    .parameter "config"
    .parameter "metrics"

    .prologue
    .line 1607
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1608
    return-void
.end method

.method public static updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .parameter "config"
    .parameter "metrics"
    .parameter "compat"

    .prologue
    .line 1596
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 1597
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1601
    :cond_0
    return-void
.end method

.method private verifyPreloadConfig(Landroid/util/TypedValue;Ljava/lang/String;)Z
    .locals 5
    .parameter "value"
    .parameter "name"

    .prologue
    .line 1913
    iget v2, p1, Landroid/util/TypedValue;->changingConfigurations:I

    const v3, -0x40001001

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 1917
    :try_start_0
    iget v2, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1921
    .local v1, resName:Ljava/lang/String;
    :goto_0
    const-string v2, "Resources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preloaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resource #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") that varies with configuration!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    const/4 v2, 0x0

    .line 1926
    .end local v1           #resName:Ljava/lang/String;
    :goto_1
    return v2

    .line 1918
    :catch_0
    move-exception v0

    .line 1919
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v1, "?"

    .restart local v1       #resName:Ljava/lang/String;
    goto :goto_0

    .line 1926
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v1           #resName:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final finishPreloading()V
    .locals 1

    .prologue
    .line 1906
    iget-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v0, :cond_0

    .line 1907
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    .line 1908
    invoke-virtual {p0}, Landroid/content/res/Resources;->flushLayoutCache()V

    .line 1910
    :cond_0
    return-void
.end method

.method public final flushLayoutCache()V
    .locals 6

    .prologue
    .line 1869
    iget-object v4, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    monitor-enter v4

    .line 1871
    :try_start_0
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    array-length v1, v3

    .line 1872
    .local v1, num:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1873
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    const/4 v5, 0x0

    aput v5, v3, v0

    .line 1874
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aget-object v2, v3, v0

    .line 1875
    .local v2, oldBlock:Landroid/content/res/XmlBlock;
    if-eqz v2, :cond_0

    .line 1876
    invoke-virtual {v2}, Landroid/content/res/XmlBlock;->close()V

    .line 1878
    :cond_0
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    const/4 v5, 0x0

    aput-object v5, v3, v0

    .line 1872
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1880
    .end local v2           #oldBlock:Landroid/content/res/XmlBlock;
    :cond_1
    monitor-exit v4

    .line 1881
    return-void

    .line 1880
    .end local v0           #i:I
    .end local v1           #num:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getAnimation(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 896
    const-string v0, "anim"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public final getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 1860
    iget-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 813
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 814
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 815
    .local v0, value:Landroid/util/TypedValue;
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 816
    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_1

    .line 818
    iget v3, v0, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_0

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 820
    :cond_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 823
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getColor(I)I
    .locals 6
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 755
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v3

    .line 756
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 757
    .local v1, value:Landroid/util/TypedValue;
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 758
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_0

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v2, v4, :cond_0

    .line 760
    iget v2, v1, Landroid/util/TypedValue;->data:I

    monitor-exit v3

    .line 763
    :goto_0
    return v2

    .line 761
    :cond_0
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 762
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    invoke-virtual {p0, v2, p1}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 763
    .local v0, csl:Landroid/content/res/ColorStateList;
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 768
    .end local v0           #csl:Landroid/content/res/ColorStateList;
    .end local v1           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 765
    .restart local v1       #value:Landroid/util/TypedValue;
    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/util/TypedValue;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not valid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 787
    sget-object v1, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-nez v1, :cond_0

    .line 788
    const-string v1, "Resources"

    const-string/jumbo v2, "sPreloadedDrawables size is 0, reload preloaded resources."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-direct {p0}, Landroid/content/res/Resources;->loadPreloadedColorResources()V

    .line 792
    :cond_0
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 793
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 794
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 795
    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 796
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .locals 1

    .prologue
    .line 1640
    iget-object v0, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    goto :goto_0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 1629
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getDimension(I)F
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 527
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 528
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 529
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 530
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 531
    iget v1, v0, Landroid/util/TypedValue;->data:I

    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v1

    monitor-exit v2

    return v1

    .line 533
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 536
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDimensionPixelOffset(I)I
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 559
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 560
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 561
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 562
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 563
    iget v1, v0, Landroid/util/TypedValue;->data:I

    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result v1

    monitor-exit v2

    return v1

    .line 566
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 569
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDimensionPixelSize(I)I
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 593
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 594
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 595
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 596
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 597
    iget v1, v0, Landroid/util/TypedValue;->data:I

    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    monitor-exit v2

    return v1

    .line 600
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 603
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 1619
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 665
    sget-object v1, Landroid/content/res/Resources;->sPreloadedDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-nez v1, :cond_0

    .line 666
    const-string v1, "Resources"

    const-string/jumbo v2, "sPreloadedDrawables size is 0, reload preloaded resources."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-direct {p0}, Landroid/content/res/Resources;->loadPreloadedDrawableResources()V

    .line 670
    :cond_0
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 671
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 672
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 673
    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 674
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "id"
    .parameter "density"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 697
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 698
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 699
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/content/res/Resources;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    .line 708
    iget v1, v0, Landroid/util/TypedValue;->density:I

    if-lez v1, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->density:I

    const v3, 0xffff

    if-eq v1, v3, :cond_0

    .line 709
    iget v1, v0, Landroid/util/TypedValue;->density:I

    if-ne v1, p2, :cond_1

    .line 710
    iget-object v1, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, v0, Landroid/util/TypedValue;->density:I

    .line 716
    :cond_0
    :goto_0
    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 712
    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->density:I

    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v1, v3

    div-int/2addr v1, p2

    iput v1, v0, Landroid/util/TypedValue;->density:I

    goto :goto_0

    .line 717
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFraction(III)F
    .locals 5
    .parameter "id"
    .parameter "base"
    .parameter "pbase"

    .prologue
    .line 624
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 625
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 626
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 627
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_0

    .line 628
    iget v1, v0, Landroid/util/TypedValue;->data:I

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v1

    monitor-exit v2

    return v1

    .line 630
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 633
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "name"
    .parameter "defType"
    .parameter "defPackage"

    .prologue
    .line 1675
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1679
    :goto_0
    return v0

    .line 1676
    :catch_0
    move-exception v0

    .line 1679
    iget-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/AssetManager;->getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getIntArray(I)[I
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 474
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getArrayIntResource(I)[I

    move-result-object v0

    .line 475
    .local v0, res:[I
    if-eqz v0, :cond_0

    .line 476
    return-object v0

    .line 478
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Int array resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInteger(I)I
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 838
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 839
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 840
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 841
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_0

    .line 843
    iget v1, v0, Landroid/util/TypedValue;->data:I

    monitor-exit v2

    return v1

    .line 845
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 848
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLayout(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 872
    const-string v0, "layout"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public getMovie(I)Landroid/graphics/Movie;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 729
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 730
    .local v0, is:Ljava/io/InputStream;
    invoke-static {v0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v1

    .line 732
    .local v1, movie:Landroid/graphics/Movie;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :goto_0
    return-object v1

    .line 734
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getQuantityString(II)Ljava/lang/String;
    .locals 1
    .parameter "id"
    .parameter "quantity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 400
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "id"
    .parameter "quantity"
    .parameter "formatArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 377
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, raw:Ljava/lang/String;
    iget-object v1, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1, v0, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getQuantityText(II)Ljava/lang/CharSequence;
    .locals 6
    .parameter "id"
    .parameter "quantity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-direct {p0}, Landroid/content/res/Resources;->getPluralRule()Llibcore/icu/NativePluralRules;

    move-result-object v2

    .line 261
    .local v2, rule:Llibcore/icu/NativePluralRules;
    iget-object v3, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p2}, Llibcore/icu/NativePluralRules;->quantityForInt(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/Resources;->attrForQuantityCode(I)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 263
    .local v0, res:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 268
    .end local v0           #res:Ljava/lang/CharSequence;
    .local v1, res:Ljava/lang/CharSequence;
    :goto_0
    return-object v1

    .line 266
    .end local v1           #res:Ljava/lang/CharSequence;
    .restart local v0       #res:Ljava/lang/CharSequence;
    :cond_0
    iget-object v3, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    const v4, 0x1000004

    invoke-virtual {v3, p1, v4}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 268
    .end local v0           #res:Ljava/lang/CharSequence;
    .restart local v1       #res:Ljava/lang/CharSequence;
    goto :goto_0

    .line 270
    .end local v1           #res:Ljava/lang/CharSequence;
    .restart local v0       #res:Ljava/lang/CharSequence;
    :cond_1
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Plural resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " quantity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " item="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, p2}, Llibcore/icu/NativePluralRules;->quantityForInt(I)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/Resources;->stringForQuantityCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getResourceEntryName(I)Ljava/lang/String;
    .locals 4
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1754
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 1755
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 1756
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getResourceName(I)Ljava/lang/String;
    .locals 4
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1697
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 1698
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 1699
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getResourcePackageName(I)Ljava/lang/String;
    .locals 4
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1716
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 1717
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 1718
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getResourceTypeName(I)Ljava/lang/String;
    .locals 4
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1735
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 1736
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 1737
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 322
    .local v0, res:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 325
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "id"
    .parameter "formatArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, raw:Ljava/lang/String;
    iget-object v1, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 454
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, res:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 456
    return-object v0

    .line 458
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String array resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 233
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 234
    .local v0, res:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 235
    return-object v0

    .line 237
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "id"
    .parameter "def"

    .prologue
    .line 418
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 419
    .local v0, res:Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_1

    .end local v0           #res:Ljava/lang/CharSequence;
    :goto_1
    return-object v0

    .line 418
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #res:Ljava/lang/CharSequence;
    :cond_1
    move-object v0, p2

    .line 419
    goto :goto_1
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 434
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 435
    .local v0, res:[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 436
    return-object v0

    .line 438
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text array resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getThemeColor(Ljava/lang/String;)I
    .locals 14
    .parameter "colorName"

    .prologue
    const/4 v10, 0x0

    .line 2295
    const/4 v7, 0x0

    .line 2296
    .local v7, raw:Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 2297
    .local v0, am:Landroid/content/res/AssetManager;
    const-string/jumbo v11, "persist.sys.skin"

    const-string v12, "/system/framework/framework-res.apk"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2299
    .local v9, themepath:Ljava/lang/String;
    const-string v11, "/system/framework/framework-res.apk"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2350
    :cond_0
    :goto_0
    return v10

    .line 2303
    :cond_1
    sget-object v11, Landroid/content/res/Resources;->mMtkColorCache:Ljava/util/HashMap;

    invoke-virtual {v11, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 2304
    .local v8, themeColor:Ljava/lang/Integer;
    if-eqz v8, :cond_2

    .line 2305
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_0

    .line 2308
    :cond_2
    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v2

    .line 2309
    .local v2, cookie:I
    if-eqz v2, :cond_0

    .line 2316
    :try_start_0
    const-string v11, "assets/color/colors.xml"

    const/4 v12, 0x2

    invoke-virtual {v0, v2, v11, v12}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v7

    .line 2318
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 2319
    .local v5, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lorg/xmlpull/v1/XmlPullParserFactory;->setValidating(Z)V

    .line 2320
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 2321
    .local v6, myxml:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v6, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2322
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 2323
    .local v4, eventType:I
    :goto_1
    const/4 v11, 0x1

    if-eq v4, v11, :cond_0

    .line 2324
    packed-switch v4, :pswitch_data_0

    .line 2342
    :cond_3
    :pswitch_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_1

    .line 2328
    :pswitch_1
    const-string v11, "color"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2329
    const/4 v11, 0x0

    invoke-interface {v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2330
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 2331
    .local v1, colorStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 2332
    sget-object v11, Landroid/content/res/Resources;->mMtkColorCache:Ljava/util/HashMap;

    invoke-virtual {v11, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2333
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    goto :goto_0

    .line 2344
    .end local v1           #colorStr:Ljava/lang/String;
    .end local v4           #eventType:I
    .end local v5           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6           #myxml:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v3

    .line 2345
    .local v3, e:Ljava/io/IOException;
    const-string v11, "Resources"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException happened when getThemeColor, msg = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2346
    .end local v3           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 2347
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v11, "Resources"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "XmlPullParserException happened when getThemeColor, msg = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2324
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getThemeHighlightColor()I
    .locals 1

    .prologue
    .line 2365
    const-string/jumbo v0, "theme_highlight_color"

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getThemeColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getThemeImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "themePackagePath"
    .parameter "itemType"

    .prologue
    .line 2451
    const/4 v0, 0x0

    .line 2452
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 2454
    .local v1, cookie:I
    if-eqz p1, :cond_1

    const-string v5, "/system/framework/framework-res.apk"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2456
    :cond_0
    const-string v5, "Resources"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The current theme is the default theme, themePackagePath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    const/4 v5, 0x0

    .line 2480
    :goto_0
    return-object v5

    .line 2460
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v1

    .line 2466
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "res/drawable-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2467
    .local v4, themeDrawablePath:Ljava/lang/StringBuilder;
    invoke-direct {p0}, Landroid/content/res/Resources;->generateCurrentDensitySuffix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2468
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2474
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 2475
    .local v3, is:Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v3           #is:Ljava/io/InputStream;
    :goto_1
    move-object v5, v0

    .line 2480
    goto :goto_0

    .line 2476
    :catch_0
    move-exception v2

    .line 2477
    .local v2, e:Ljava/io/IOException;
    const-string v5, "Resources"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException happend when getThemeImage cookie = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getThemeMainColor()I
    .locals 1

    .prologue
    .line 2357
    const-string/jumbo v0, "theme_main_color"

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getThemeColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getThemePreview(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "pkgPath"

    .prologue
    .line 2439
    const-string/jumbo v0, "previewtheme"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getThemeImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 4
    .parameter "id"
    .parameter "outValue"
    .parameter "resolveRefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1029
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 1030
    .local v0, found:Z
    if-eqz v0, :cond_0

    .line 1031
    return-void

    .line 1033
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .locals 4
    .parameter "name"
    .parameter "outValue"
    .parameter "resolveRefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1081
    const-string/jumbo v1, "string"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1082
    .local v0, id:I
    if-eqz v0, :cond_0

    .line 1083
    invoke-virtual {p0, v0, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1084
    return-void

    .line 1086
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String resource name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValueForDensity(IILandroid/util/TypedValue;Z)V
    .locals 4
    .parameter "id"
    .parameter "density"
    .parameter "outValue"
    .parameter "resolveRefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1052
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 1053
    .local v0, found:Z
    if-eqz v0, :cond_0

    .line 1054
    return-void

    .line 1056
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getXml(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 921
    const-string/jumbo v0, "xml"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;
    .locals 12
    .parameter "value"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2081
    iget v8, p1, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v8, v8

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    iget v10, p1, Landroid/util/TypedValue;->data:I

    int-to-long v10, v10

    or-long v4, v8, v10

    .line 2085
    .local v4, key:J
    iget v8, p1, Landroid/util/TypedValue;->type:I

    const/16 v9, 0x1c

    if-lt v8, v9, :cond_2

    iget v8, p1, Landroid/util/TypedValue;->type:I

    const/16 v9, 0x1f

    if-gt v8, v9, :cond_2

    .line 2088
    sget-object v8, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    .line 2089
    .local v0, csl:Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 2154
    .end local v0           #csl:Landroid/content/res/ColorStateList;
    .local v1, csl:Landroid/content/res/ColorStateList;
    :goto_0
    return-object v1

    .line 2093
    .end local v1           #csl:Landroid/content/res/ColorStateList;
    .restart local v0       #csl:Landroid/content/res/ColorStateList;
    :cond_0
    iget v8, p1, Landroid/util/TypedValue;->data:I

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 2094
    iget-boolean v8, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v8, :cond_1

    .line 2095
    const-string v8, "color"

    invoke-direct {p0, p1, v8}, Landroid/content/res/Resources;->verifyPreloadConfig(Landroid/util/TypedValue;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2096
    sget-object v8, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v4, v5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    move-object v1, v0

    .line 2100
    .end local v0           #csl:Landroid/content/res/ColorStateList;
    .restart local v1       #csl:Landroid/content/res/ColorStateList;
    goto :goto_0

    .line 2103
    .end local v1           #csl:Landroid/content/res/ColorStateList;
    :cond_2
    invoke-direct {p0, v4, v5}, Landroid/content/res/Resources;->getCachedColorStateList(J)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 2104
    .restart local v0       #csl:Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_3

    move-object v1, v0

    .line 2105
    .end local v0           #csl:Landroid/content/res/ColorStateList;
    .restart local v1       #csl:Landroid/content/res/ColorStateList;
    goto :goto_0

    .line 2108
    .end local v1           #csl:Landroid/content/res/ColorStateList;
    .restart local v0       #csl:Landroid/content/res/ColorStateList;
    :cond_3
    sget-object v8, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #csl:Landroid/content/res/ColorStateList;
    check-cast v0, Landroid/content/res/ColorStateList;

    .line 2109
    .restart local v0       #csl:Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_4

    move-object v1, v0

    .line 2110
    .end local v0           #csl:Landroid/content/res/ColorStateList;
    .restart local v1       #csl:Landroid/content/res/ColorStateList;
    goto :goto_0

    .line 2113
    .end local v1           #csl:Landroid/content/res/ColorStateList;
    .restart local v0       #csl:Landroid/content/res/ColorStateList;
    :cond_4
    iget-object v8, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v8, :cond_5

    .line 2114
    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Resource is not a ColorStateList (color or path): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2118
    :cond_5
    iget-object v8, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2120
    .local v3, file:Ljava/lang/String;
    const-string v8, ".xml"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2122
    :try_start_0
    iget v8, p1, Landroid/util/TypedValue;->assetCookie:I

    const-string v9, "colorstatelist"

    invoke-virtual {p0, v3, p2, v8, v9}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 2124
    .local v7, rp:Landroid/content/res/XmlResourceParser;
    invoke-static {p0, v7}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 2125
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2139
    if-eqz v0, :cond_6

    .line 2140
    iget-boolean v8, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v8, :cond_8

    .line 2141
    const-string v8, "color"

    invoke-direct {p0, p1, v8}, Landroid/content/res/Resources;->verifyPreloadConfig(Landroid/util/TypedValue;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2142
    sget-object v8, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v4, v5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_6
    :goto_1
    move-object v1, v0

    .line 2154
    .end local v0           #csl:Landroid/content/res/ColorStateList;
    .restart local v1       #csl:Landroid/content/res/ColorStateList;
    goto :goto_0

    .line 2126
    .end local v1           #csl:Landroid/content/res/ColorStateList;
    .end local v7           #rp:Landroid/content/res/XmlResourceParser;
    .restart local v0       #csl:Landroid/content/res/ColorStateList;
    :catch_0
    move-exception v2

    .line 2127
    .local v2, e:Ljava/lang/Exception;
    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from color state list resource ID #0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 2130
    .local v6, rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v6, v2}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2131
    throw v6

    .line 2134
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #rnf:Landroid/content/res/Resources$NotFoundException;
    :cond_7
    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from drawable resource ID #0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": .xml extension required"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2145
    .restart local v7       #rp:Landroid/content/res/XmlResourceParser;
    :cond_8
    iget-object v9, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v9

    .line 2149
    :try_start_1
    iget-object v8, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/LongSparseArray;

    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v4, v5, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2150
    monitor-exit v9

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 17
    .parameter "value"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1940
    const/4 v8, 0x0

    .line 1941
    .local v8, isColorDrawable:Z
    move-object/from16 v0, p1

    iget v13, v0, Landroid/util/TypedValue;->type:I

    const/16 v14, 0x1c

    if-lt v13, v14, :cond_0

    move-object/from16 v0, p1

    iget v13, v0, Landroid/util/TypedValue;->type:I

    const/16 v14, 0x1f

    if-gt v13, v14, :cond_0

    .line 1943
    const/4 v8, 0x1

    .line 1945
    :cond_0
    if-eqz v8, :cond_1

    move-object/from16 v0, p1

    iget v13, v0, Landroid/util/TypedValue;->data:I

    int-to-long v9, v13

    .line 1948
    .local v9, key:J
    :goto_0
    if-eqz v8, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v9, v10}, Landroid/content/res/Resources;->getCachedDrawable(Landroid/util/LongSparseArray;J)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1950
    .local v3, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_3

    move-object v4, v3

    .line 2047
    .end local v3           #dr:Landroid/graphics/drawable/Drawable;
    .local v4, dr:Landroid/graphics/drawable/Drawable;
    :goto_2
    return-object v4

    .line 1945
    .end local v4           #dr:Landroid/graphics/drawable/Drawable;
    .end local v9           #key:J
    :cond_1
    move-object/from16 v0, p1

    iget v13, v0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v13, v13

    const/16 v15, 0x20

    shl-long/2addr v13, v15

    move-object/from16 v0, p1

    iget v15, v0, Landroid/util/TypedValue;->data:I

    int-to-long v15, v15

    or-long v9, v13, v15

    goto :goto_0

    .line 1948
    .restart local v9       #key:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    goto :goto_1

    .line 1954
    .restart local v3       #dr:Landroid/graphics/drawable/Drawable;
    :cond_3
    if-eqz v8, :cond_6

    sget-object v13, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v13, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v2, v13

    .line 1958
    .local v2, cs:Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_3
    if-eqz v2, :cond_8

    .line 1959
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2020
    :cond_4
    :goto_4
    if-eqz v3, :cond_5

    .line 2021
    move-object/from16 v0, p1

    iget v13, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v3, v13}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 2022
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    .line 2023
    if-eqz v2, :cond_5

    .line 2024
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v13, :cond_d

    .line 2025
    const-string v13, "drawable"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Landroid/content/res/Resources;->verifyPreloadConfig(Landroid/util/TypedValue;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2026
    if-eqz v8, :cond_c

    .line 2027
    sget-object v13, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v13, v9, v10, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_5
    :goto_5
    move-object v4, v3

    .line 2047
    .end local v3           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v4       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 1954
    .end local v2           #cs:Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v4           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v3       #dr:Landroid/graphics/drawable/Drawable;
    :cond_6
    sget v13, Landroid/content/res/Resources;->sPreloadedDensity:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v14, v14, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v13, v14, :cond_7

    sget-object v13, Landroid/content/res/Resources;->sPreloadedDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v13, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v2, v13

    goto :goto_3

    :cond_7
    const/4 v13, 0x0

    move-object v2, v13

    goto :goto_3

    .line 1961
    .restart local v2       #cs:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_8
    if-eqz v8, :cond_9

    .line 1962
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .end local v3           #dr:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p1

    iget v13, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {v3, v13}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1965
    .restart local v3       #dr:Landroid/graphics/drawable/Drawable;
    :cond_9
    if-nez v3, :cond_4

    .line 1966
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v13, :cond_a

    .line 1967
    new-instance v13, Landroid/content/res/Resources$NotFoundException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Resource is not a Drawable (color or path): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1971
    :cond_a
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1986
    .local v6, file:Ljava/lang/String;
    const-string v13, ".xml"

    invoke-virtual {v6, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 1988
    :try_start_0
    move-object/from16 v0, p1

    iget v13, v0, Landroid/util/TypedValue;->assetCookie:I

    const-string v14, "drawable"

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v6, v1, v13, v14}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 1990
    .local v12, rp:Landroid/content/res/XmlResourceParser;
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1991
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 1992
    .end local v12           #rp:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v5

    .line 1993
    .local v5, e:Ljava/lang/Exception;
    new-instance v11, Landroid/content/res/Resources$NotFoundException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "File "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " from drawable resource ID #0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 1996
    .local v11, rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v11, v5}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1997
    throw v11

    .line 2002
    .end local v5           #e:Ljava/lang/Exception;
    .end local v11           #rnf:Landroid/content/res/Resources$NotFoundException;
    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/util/TypedValue;->assetCookie:I

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v6, v15}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v7

    .line 2005
    .local v7, is:Ljava/io/InputStream;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v7, v6, v13}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2007
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 2009
    .end local v7           #is:Ljava/io/InputStream;
    :catch_1
    move-exception v5

    .line 2010
    .restart local v5       #e:Ljava/lang/Exception;
    new-instance v11, Landroid/content/res/Resources$NotFoundException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "File "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " from drawable resource ID #0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 2013
    .restart local v11       #rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v11, v5}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2014
    throw v11

    .line 2029
    .end local v5           #e:Ljava/lang/Exception;
    .end local v6           #file:Ljava/lang/String;
    .end local v11           #rnf:Landroid/content/res/Resources$NotFoundException;
    :cond_c
    sget-object v13, Landroid/content/res/Resources;->sPreloadedDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v13, v9, v10, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto/16 :goto_5

    .line 2033
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v14

    .line 2037
    if-eqz v8, :cond_e

    .line 2038
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    new-instance v15, Ljava/lang/ref/WeakReference;

    invoke-direct {v15, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v13, v9, v10, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2042
    :goto_6
    monitor-exit v14

    goto/16 :goto_5

    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v13

    .line 2040
    :cond_e
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    new-instance v15, Ljava/lang/ref/WeakReference;

    invoke-direct {v15, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v13, v9, v10, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6
.end method

.method loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 5
    .parameter "id"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2177
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    .line 2178
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2179
    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2180
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 2181
    iget-object v1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v3, v0, Landroid/util/TypedValue;->assetCookie:I

    invoke-virtual {p0, v1, p1, v3, p2}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 2184
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2187
    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 10
    .parameter "file"
    .parameter "id"
    .parameter "assetCookie"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2192
    if-eqz p2, :cond_5

    .line 2195
    :try_start_0
    iget-object v8, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2197
    :try_start_1
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    array-length v3, v7

    .line 2198
    .local v3, num:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 2199
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    aget v7, v7, v2

    if-ne v7, p2, :cond_0

    .line 2202
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v7

    monitor-exit v8

    .line 2222
    :goto_1
    return-object v7

    .line 2198
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2208
    :cond_1
    iget-object v7, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v7, p3, p1}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    .line 2210
    .local v0, block:Landroid/content/res/XmlBlock;
    if-eqz v0, :cond_4

    .line 2211
    iget v7, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    add-int/lit8 v5, v7, 0x1

    .line 2212
    .local v5, pos:I
    if-lt v5, v3, :cond_2

    const/4 v5, 0x0

    .line 2213
    :cond_2
    iput v5, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    .line 2214
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aget-object v4, v7, v5

    .line 2215
    .local v4, oldBlock:Landroid/content/res/XmlBlock;
    if-eqz v4, :cond_3

    .line 2216
    invoke-virtual {v4}, Landroid/content/res/XmlBlock;->close()V

    .line 2218
    :cond_3
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    aput p2, v7, v5

    .line 2219
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aput-object v0, v7, v5

    .line 2222
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v7

    monitor-exit v8

    goto :goto_1

    .line 2224
    .end local v0           #block:Landroid/content/res/XmlBlock;
    .end local v2           #i:I
    .end local v3           #num:I
    .end local v4           #oldBlock:Landroid/content/res/XmlBlock;
    .end local v5           #pos:I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2225
    :catch_0
    move-exception v1

    .line 2226
    .local v1, e:Ljava/lang/Exception;
    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from xml type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " resource ID #0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 2229
    .local v6, rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v6, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2230
    throw v6

    .line 2224
    .end local v1           #e:Ljava/lang/Exception;
    .end local v6           #rnf:Landroid/content/res/Resources$NotFoundException;
    .restart local v0       #block:Landroid/content/res/XmlBlock;
    .restart local v2       #i:I
    .restart local v3       #num:I
    :cond_4
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2234
    .end local v0           #block:Landroid/content/res/XmlBlock;
    .end local v2           #i:I
    .end local v3           #num:I
    :cond_5
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from xml type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " resource ID #0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public final newTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 1383
    new-instance v0, Landroid/content/res/Resources$Theme;

    invoke-direct {v0, p0}, Landroid/content/res/Resources$Theme;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 7
    .parameter "set"
    .parameter "attrs"

    .prologue
    .line 1399
    array-length v1, p2

    .line 1400
    .local v1, len:I
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->getCachedStyledAttributes(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, array:Landroid/content/res/TypedArray;
    move-object v2, p1

    .line 1406
    check-cast v2, Landroid/content/res/XmlBlock$Parser;

    .line 1407
    .local v2, parser:Landroid/content/res/XmlBlock$Parser;
    iget-object v3, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget v4, v2, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    iget-object v5, v0, Landroid/content/res/TypedArray;->mData:[I

    iget-object v6, v0, Landroid/content/res/TypedArray;->mIndices:[I

    invoke-virtual {v3, v4, p2, v5, v6}, Landroid/content/res/AssetManager;->retrieveAttributes(I[I[I[I)Z

    .line 1410
    iput-object p2, v0, Landroid/content/res/TypedArray;->mRsrcs:[I

    .line 1411
    iput-object v2, v0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 1413
    return-object v0
.end method

.method public obtainTypedArray(I)Landroid/content/res/TypedArray;
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 496
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->getArraySize(I)I

    move-result v1

    .line 497
    .local v1, len:I
    if-gez v1, :cond_0

    .line 498
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 502
    :cond_0
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->getCachedStyledAttributes(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 503
    .local v0, array:Landroid/content/res/TypedArray;
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget-object v3, v0, Landroid/content/res/TypedArray;->mData:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/res/AssetManager;->retrieveArray(I[I)I

    move-result v2

    iput v2, v0, Landroid/content/res/TypedArray;->mLength:I

    .line 504
    iget-object v2, v0, Landroid/content/res/TypedArray;->mIndices:[I

    aput v4, v2, v4

    .line 506
    return-object v0
.end method

.method public openRawResource(I)Ljava/io/InputStream;
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 939
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v1

    .line 940
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 941
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 6
    .parameter "id"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 958
    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 961
    :try_start_0
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget v3, p2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v4, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 963
    :catch_0
    move-exception v0

    .line 964
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from drawable resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 966
    .local v1, rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 967
    throw v1
.end method

.method public openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 993
    iget-object v4, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v4

    .line 994
    :try_start_0
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 995
    .local v2, value:Landroid/util/TypedValue;
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    :try_start_1
    iget-object v3, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget v5, v2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v6, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    :try_start_2
    monitor-exit v4

    return-object v3

    .line 1000
    :catch_0
    move-exception v0

    .line 1001
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " from drawable resource ID #0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 1005
    .local v1, rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1006
    throw v1

    .line 1009
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #rnf:Landroid/content/res/Resources$NotFoundException;
    .end local v2           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 8
    .parameter "tagName"
    .parameter "attrs"
    .parameter "outBundle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1815
    sget-object v6, Lcom/android/internal/R$styleable;->Extra:[I

    invoke-virtual {p0, p2, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1818
    .local v2, sa:Landroid/content/res/TypedArray;
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1820
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1821
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1822
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> requires an android:name attribute at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1827
    :cond_0
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 1829
    .local v3, v:Landroid/util/TypedValue;
    if-eqz v3, :cond_6

    .line 1830
    iget v6, v3, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 1831
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1832
    .local v0, cs:Ljava/lang/CharSequence;
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1853
    .end local v0           #cs:Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1854
    return-void

    .line 1833
    :cond_1
    iget v6, v3, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x12

    if-ne v6, v7, :cond_3

    .line 1834
    iget v6, v3, Landroid/util/TypedValue;->data:I

    if-eqz v6, :cond_2

    :goto_1
    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 1835
    :cond_3
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_4

    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_4

    .line 1837
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1838
    :cond_4
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 1839
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 1841
    :cond_5
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1842
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> only supports string, integer, float, color, and boolean at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1847
    :cond_6
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1848
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> requires an android:value or android:resource attribute at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V
    .locals 5
    .parameter "parser"
    .parameter "outBundle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 1773
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 1776
    .local v1, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    .local v2, type:I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    if-ne v2, v4, :cond_1

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_3

    .line 1777
    :cond_1
    if-eq v2, v4, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 1781
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1782
    .local v0, nodeName:Ljava/lang/String;
    const-string v3, "extra"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1783
    const-string v3, "extra"

    invoke-virtual {p0, v3, p1, p2}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1784
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1787
    :cond_2
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1790
    .end local v0           #nodeName:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public reloadPreloadedResources()V
    .locals 3

    .prologue
    .line 2421
    const-string v0, "Resources"

    const-string v1, "Reload all preloader drawables in Resources.java."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    sget-object v0, Landroid/content/res/Resources;->sPreloadedDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 2423
    sget-object v0, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 2424
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reloadPreloadedResources() mMtkColorCache.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/content/res/Resources;->mMtkColorCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    sget-object v0, Landroid/content/res/Resources;->mMtkColorCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2426
    invoke-direct {p0}, Landroid/content/res/Resources;->loadPreloadedDrawableResources()V

    .line 2427
    invoke-direct {p0}, Landroid/content/res/Resources;->loadPreloadedColorResources()V

    .line 2428
    return-void
.end method

.method public setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V
    .locals 2
    .parameter "ci"

    .prologue
    .line 1649
    iput-object p1, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 1650
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1651
    return-void
.end method

.method public final startPreloading()V
    .locals 3

    .prologue
    .line 1889
    sget-object v1, Landroid/content/res/Resources;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1890
    :try_start_0
    sget-boolean v0, Landroid/content/res/Resources;->sPreloaded:Z

    if-eqz v0, :cond_0

    .line 1891
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Resources already preloaded"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1898
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1893
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Landroid/content/res/Resources;->sPreloaded:Z

    .line 1894
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    .line 1895
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Landroid/content/res/Resources;->sPreloadedDensity:I

    .line 1896
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    sget v2, Landroid/content/res/Resources;->sPreloadedDensity:I

    iput v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1897
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1898
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1899
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .locals 1
    .parameter "config"
    .parameter "metrics"

    .prologue
    .line 1421
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1422
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 24
    .parameter "config"
    .parameter "metrics"
    .parameter "compat"

    .prologue
    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 1436
    if-eqz p3, :cond_0

    .line 1437
    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 1439
    :cond_0
    if-eqz p2, :cond_1

    .line 1440
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 1451
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v2, :cond_2

    .line 1452
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 1454
    :cond_2
    const v20, 0xfffffff

    .line 1457
    .local v20, configChanges:I
    const/16 v22, 0x0

    .line 1458
    .local v22, needClearPreloader:Z
    if-eqz p1, :cond_a

    .line 1459
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1460
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    move/from16 v21, v0

    .line 1461
    .local v21, density:I
    if-nez v21, :cond_3

    .line 1462
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v2, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    move/from16 v21, v0

    .line 1464
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v2, :cond_4

    .line 1465
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    move/from16 v0, v21

    invoke-virtual {v2, v0, v3}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 1467
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v2, :cond_5

    .line 1468
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    iput-object v3, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1469
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 1472
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 1473
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/content/res/Configuration;->getSkin()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 1475
    :cond_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 1476
    invoke-static {}, Landroid/content/res/Configuration;->getSkin()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 1478
    :cond_7
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1479
    :cond_8
    const/16 v22, 0x1

    .line 1481
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v20

    .line 1482
    invoke-static/range {v20 .. v20}, Landroid/content/pm/ActivityInfo;->activityInfoConfigToNative(I)I

    move-result v20

    .line 1484
    .end local v21           #density:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v2, :cond_b

    .line 1485
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    iput-object v3, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1486
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 1488
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_c

    .line 1489
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    iput v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1490
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v3, v3

    const v4, 0x3bcccccd

    mul-float/2addr v3, v4

    iput v3, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1492
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    mul-float/2addr v3, v4

    iput v3, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 1494
    const/4 v5, 0x0

    .line 1495
    .local v5, locale:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_d

    .line 1496
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 1497
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 1498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1502
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v2, v3, :cond_11

    .line 1503
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v12, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1504
    .local v12, width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v13, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1511
    .local v13, height:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v10, v2, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1512
    .local v10, keyboardHidden:I
    const/4 v2, 0x1

    if-ne v10, v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    .line 1515
    const/4 v10, 0x3

    .line 1517
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->mcc:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->mnc:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v7, v7, Landroid/content/res/Configuration;->touchscreen:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->densityDpi:I

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->keyboard:I

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v11, v11, Landroid/content/res/Configuration;->navigation:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v14, v14, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v15, v15, Landroid/content/res/Configuration;->screenWidthDp:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    move/from16 v18, v0

    sget v19, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual/range {v2 .. v19}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    .line 1532
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v1}, Landroid/content/res/Resources;->clearDrawableCache(Landroid/util/LongSparseArray;I)V

    .line 1533
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v1}, Landroid/content/res/Resources;->clearDrawableCache(Landroid/util/LongSparseArray;I)V

    .line 1534
    if-eqz v22, :cond_f

    .line 1535
    const-string v2, "Resources"

    const-string/jumbo v3, "updateConfiguration from skin change, clear preloaded drawables."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    sget-object v2, Landroid/content/res/Resources;->sPreloadedDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1537
    sget-object v2, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1538
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1539
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1540
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateConfiguration() mMtkColorCache.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/content/res/Resources;->mMtkColorCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    sget-object v2, Landroid/content/res/Resources;->mMtkColorCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1543
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1545
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->flushLayoutCache()V

    .line 1546
    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1547
    sget-object v3, Landroid/content/res/Resources;->mSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1548
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    if-eqz v2, :cond_10

    .line 1549
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Llibcore/icu/NativePluralRules;->forLocale(Ljava/util/Locale;)Llibcore/icu/NativePluralRules;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    .line 1551
    :cond_10
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1552
    return-void

    .line 1507
    .end local v10           #keyboardHidden:I
    .end local v12           #width:I
    .end local v13           #height:I
    :cond_11
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v12, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1509
    .restart local v12       #width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v13, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .restart local v13       #height:I
    goto/16 :goto_0

    .line 1546
    .end local v5           #locale:Ljava/lang/String;
    .end local v12           #width:I
    .end local v13           #height:I
    .end local v20           #configChanges:I
    .end local v22           #needClearPreloader:Z
    :catchall_0
    move-exception v2

    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1551
    .restart local v5       #locale:Ljava/lang/String;
    .restart local v10       #keyboardHidden:I
    .restart local v12       #width:I
    .restart local v13       #height:I
    .restart local v20       #configChanges:I
    .restart local v22       #needClearPreloader:Z
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method
