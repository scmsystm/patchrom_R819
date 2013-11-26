.class final Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;
    }
.end annotation


# static fields
.field static final CS_DISABLED:I = 0x3ec

.field static final CS_EMERGENCY_ENABLED:I = 0x3ee

.field static final CS_ENABLED:I = 0x3eb

.field static final CS_NORMAL_ENABLED:I = 0x3ed

.field static final CS_NOTIFICATION:I = 0x3e7

.field static final CS_NOTIFICATION_2:I = 0x2708

.field static final DBG:Z = true

.field static final DEFAULT_GPRS_CHECK_PERIOD_MILLIS:I = 0xea60

.field protected static final EVENT_SET_AUTO_SELECT_NETWORK_DONE:I = 0x32

.field protected static final EVENT_SET_GPRS_CONN_RETRY:I = 0x34

.field protected static final EVENT_SET_GPRS_CONN_TYPE_DONE:I = 0x33

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final PS_DISABLED:I = 0x3ea

.field static final PS_ENABLED:I = 0x3e9

.field static final PS_NOTIFICATION:I = 0x378

.field static final PS_NOTIFICATION_2:I = 0x22b2

.field static final REJECT_NOTIFICATION:I = 0x37a

.field static final REJECT_NOTIFICATION_2:I = 0x22c6

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "ServiceStateTracker"


# instance fields
.field private DEFAULT_GPRS_RETRY_PERIOD_MILLIS:I

.field cellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private cr:Landroid/content/ContentResolver;

.field private curPlmn:Ljava/lang/String;

.field private curShowPlmn:Z

.field private curShowSpn:Z

.field private curSpn:Ljava/lang/String;

.field private customEhplmn:[[Ljava/lang/String;

.field dontUpdateNetworkStateFlag:Z

.field private explict_update_spn:I

.field private gprsConnType:I

.field private gprsState:I

.field private mAutoGprsAttach:I

.field private mAutoTimeObserver:Landroid/database/ContentObserver;

.field private mAutoTimeZoneObserver:Landroid/database/ContentObserver;

.field private mDataConnectionSimSettingObserver:Landroid/database/ContentObserver;

.field private mDataRoaming:Z

.field private mEmergencyOnly:Z

.field private mEverIVSR:Z

.field private mFirstRadioChange:Z

.field private mGotCountryCode:Z

.field private mGsmRoaming:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIs3GTo2G:Z

.field private mIsImeiLock:Z

.field private mLastPSRegisteredPLMN:Ljava/lang/String;

.field private mLastRegisteredPLMN:Ljava/lang/String;

.field private mMaxDataCalls:I

.field private mNeedFixZoneAfterNitz:Z

.field private mNewMaxDataCalls:I

.field private mNewReasonDataDenied:I

.field private mNitzUpdatedTime:Z

.field private mNotification:Landroid/app/Notification;

.field mPreferredNetworkType:I

.field private mReasonDataDenied:I

.field private mReportedGprsNoReg:Z

.field mSavedAtTime:J

.field mSavedTime:J

.field mSavedTimeZone:Ljava/lang/String;

.field private mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

.field private mSimId:I

.field private mStartedGprsRegCheck:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mZoneDst:Z

.field private mZoneOffset:I

.field private mZoneTime:J

.field newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private newGPRSState:I

.field private newps_networkType:I

.field phone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private ps_networkType:I

.field private ratCsChangedRegistrants:Landroid/os/RegistrantList;

.field private ratPsChangedRegistrants:Landroid/os/RegistrantList;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 14
    .parameter "phone"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 354
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v7, Landroid/telephony/CellInfoGsm;

    invoke-direct {v7}, Landroid/telephony/CellInfoGsm;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v8

    invoke-direct {p0, p1, v4, v7, v8}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Landroid/telephony/CellInfo;I)V

    .line 113
    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    .line 114
    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    .line 115
    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    .line 116
    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 117
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    .line 118
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 123
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsConnType:I

    .line 128
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 134
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 139
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 146
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 150
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 154
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 168
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 171
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    .line 183
    iput-object v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    .line 184
    iput-object v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    .line 188
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curShowPlmn:Z

    .line 189
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curShowSpn:Z

    .line 196
    const/16 v4, 0x11

    new-array v4, v4, [[Ljava/lang/String;

    new-array v7, v13, [Ljava/lang/String;

    const-string v8, "46000"

    aput-object v8, v7, v6

    const-string v8, "46002"

    aput-object v8, v7, v5

    const-string v8, "46007"

    aput-object v8, v7, v11

    aput-object v7, v4, v6

    new-array v7, v13, [Ljava/lang/String;

    const-string v8, "45400"

    aput-object v8, v7, v6

    const-string v8, "45402"

    aput-object v8, v7, v5

    const-string v8, "45418"

    aput-object v8, v7, v11

    aput-object v7, v4, v5

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "45403"

    aput-object v8, v7, v6

    const-string v8, "45404"

    aput-object v8, v7, v5

    aput-object v7, v4, v11

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "45416"

    aput-object v8, v7, v6

    const-string v8, "45419"

    aput-object v8, v7, v5

    aput-object v7, v4, v13

    const/4 v7, 0x4

    new-array v8, v11, [Ljava/lang/String;

    const-string v9, "45501"

    aput-object v9, v8, v6

    const-string v9, "45504"

    aput-object v9, v8, v5

    aput-object v8, v4, v7

    const/4 v7, 0x5

    new-array v8, v11, [Ljava/lang/String;

    const-string v9, "45503"

    aput-object v9, v8, v6

    const-string v9, "45505"

    aput-object v9, v8, v5

    aput-object v8, v4, v7

    const/4 v7, 0x6

    new-array v8, v11, [Ljava/lang/String;

    const-string v9, "45002"

    aput-object v9, v8, v6

    const-string v9, "45008"

    aput-object v9, v8, v5

    aput-object v8, v4, v7

    const/4 v7, 0x7

    new-array v8, v11, [Ljava/lang/String;

    const-string v9, "52501"

    aput-object v9, v8, v6

    const-string v9, "52502"

    aput-object v9, v8, v5

    aput-object v8, v4, v7

    const/16 v7, 0x8

    new-array v8, v11, [Ljava/lang/String;

    const-string v9, "43602"

    aput-object v9, v8, v6

    const-string v9, "43612"

    aput-object v9, v8, v5

    aput-object v8, v4, v7

    const/16 v7, 0x9

    new-array v8, v11, [Ljava/lang/String;

    const-string v9, "52010"

    aput-object v9, v8, v6

    const-string v9, "52099"

    aput-object v9, v8, v5

    aput-object v8, v4, v7

    const/16 v7, 0xa

    new-array v8, v11, [Ljava/lang/String;

    const-string v9, "26207"

    aput-object v9, v8, v6

    const-string v9, "26208"

    aput-object v9, v8, v5

    aput-object v8, v4, v7

    const/16 v7, 0xb

    new-array v8, v13, [Ljava/lang/String;

    const-string v9, "23430"

    aput-object v9, v8, v6

    const-string v9, "23431"

    aput-object v9, v8, v5

    const-string v9, "23432"

    aput-object v9, v8, v11

    aput-object v8, v4, v7

    const/16 v7, 0xc

    new-array v8, v13, [Ljava/lang/String;

    const-string v9, "72402"

    aput-object v9, v8, v6

    const-string v9, "72403"

    aput-object v9, v8, v5

    const-string v9, "72404"

    aput-object v9, v8, v11

    aput-object v8, v4, v7

    const/16 v7, 0xd

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const-string v9, "72406"

    aput-object v9, v8, v6

    const-string v9, "72410"

    aput-object v9, v8, v5

    const-string v9, "72411"

    aput-object v9, v8, v11

    const-string v9, "72423"

    aput-object v9, v8, v13

    aput-object v8, v4, v7

    const/16 v7, 0xe

    new-array v8, v13, [Ljava/lang/String;

    const-string v9, "72432"

    aput-object v9, v8, v6

    const-string v9, "72433"

    aput-object v9, v8, v5

    const-string v9, "72434"

    aput-object v9, v8, v11

    aput-object v8, v4, v7

    const/16 v7, 0xf

    const/16 v8, 0xc

    new-array v8, v8, [Ljava/lang/String;

    const-string v9, "31026"

    aput-object v9, v8, v6

    const-string v9, "31031"

    aput-object v9, v8, v5

    const-string v9, "310160"

    aput-object v9, v8, v11

    const-string v9, "310200"

    aput-object v9, v8, v13

    const/4 v9, 0x4

    const-string v10, "310210"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const-string v10, "310220"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string v10, "310230"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const-string v10, "310240"

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string v10, "310250"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    const-string v10, "310260"

    aput-object v10, v8, v9

    const/16 v9, 0xa

    const-string v10, "310270"

    aput-object v10, v8, v9

    const/16 v9, 0xb

    const-string v10, "310660"

    aput-object v10, v8, v9

    aput-object v8, v4, v7

    const/16 v7, 0x10

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const-string v9, "310150"

    aput-object v9, v8, v6

    const-string v9, "310170"

    aput-object v9, v8, v5

    const-string v9, "310380"

    aput-object v9, v8, v11

    const-string v9, "310410"

    aput-object v9, v8, v13

    aput-object v8, v4, v7

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->customEhplmn:[[Ljava/lang/String;

    .line 229
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontUpdateNetworkStateFlag:Z

    .line 234
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFirstRadioChange:Z

    .line 235
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIs3GTo2G:Z

    .line 238
    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoGprsAttach:I

    .line 243
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ps_networkType:I

    .line 244
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newps_networkType:I

    .line 245
    const/16 v4, 0x7530

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DEFAULT_GPRS_RETRY_PERIOD_MILLIS:I

    .line 246
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->explict_update_spn:I

    .line 249
    iput-object v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    .line 250
    iput-object v12, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    .line 252
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEverIVSR:Z

    .line 254
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ratPsChangedRegistrants:Landroid/os/RegistrantList;

    .line 255
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ratCsChangedRegistrants:Landroid/os/RegistrantList;

    .line 263
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsImeiLock:Z

    .line 265
    new-instance v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 321
    new-instance v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    .line 329
    new-instance v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    .line 338
    new-instance v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataConnectionSimSettingObserver:Landroid/database/ContentObserver;

    .line 356
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 357
    new-instance v4, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v4}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 358
    new-instance v4, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v4}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 361
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I

    .line 364
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 373
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v7, "power"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 375
    .local v3, powerManager:Landroid/os/PowerManager;
    const-string v4, "ServiceStateTracker"

    invoke-virtual {v3, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 378
    :try_start_0
    const-class v4, Lcom/mediatek/common/telephony/IServiceStateExt;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/common/telephony/IServiceStateExt;

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0xd

    invoke-interface {v4, p0, v7, v12}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 384
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0, v5, v12}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 386
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0, v11, v12}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 387
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0x66

    invoke-interface {v4, p0, v7, v12}, Lcom/android/internal/telephony/CommandsInterface;->registerForPsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 388
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0xb

    invoke-interface {v4, p0, v7, v12}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 394
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0x17

    invoke-interface {v4, p0, v7, v12}, Lcom/android/internal/telephony/CommandsInterface;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 395
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0x11

    invoke-interface {v4, p0, v7, v12}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 396
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0x64

    invoke-interface {v4, p0, v7, v12}, Lcom/android/internal/telephony/CommandsInterface;->setGprsDetach(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 397
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0x65

    invoke-interface {v4, p0, v7, v12}, Lcom/android/internal/telephony/CommandsInterface;->setInvalidSimInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 398
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v4}, Lcom/mediatek/common/telephony/IServiceStateExt;->isImeiLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 399
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0x68

    invoke-interface {v4, p0, v7, v12}, Lcom/android/internal/telephony/CommandsInterface;->registerForIMEILock(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 402
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "airplane_mode_on"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 414
    .local v0, airplaneMode:I
    if-gtz v0, :cond_2

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    .line 416
    const-string v4, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Final mDesiredPowerState for single sim. ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] airplaneMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    .line 419
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v7, "auto_time"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v7, v5, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 422
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v7, "auto_time_zone"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v7, v5, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 426
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 432
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 433
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 434
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 435
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 436
    const-string v4, "com.mtk.TEST_TRM"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 440
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoGprsAttach:I

    .line 443
    invoke-virtual {p1, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyOtaspChanged(I)V

    .line 445
    const-string v4, "gsm.roaming.indicator.needed"

    const-string v6, "false"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v4, "gsm.roaming.indicator.needed.2"

    const-string v6, "false"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v6, "gprs_connection_sim_setting"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataConnectionSimSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 452
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v4}, Lcom/mediatek/common/telephony/IServiceStateExt;->needEMMRRS()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 453
    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getDataConnectionSimId()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 454
    const/16 v4, 0x6a

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getEINFO(I)V

    .line 460
    :cond_1
    :goto_2
    return-void

    .line 379
    .end local v0           #airplaneMode:I
    .end local v2           #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    .line 380
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #airplaneMode:I
    :cond_2
    move v4, v6

    .line 414
    goto/16 :goto_1

    .line 456
    .restart local v2       #filter:Landroid/content/IntentFilter;
    :cond_3
    const/16 v4, 0x69

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getEINFO(I)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->explict_update_spn:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/mediatek/common/telephony/IServiceStateExt;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getDataConnectionSimId()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getEINFO(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->revertToNitzTime()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->revertToNitzTimeZone()V

    return-void
.end method

.method private static displayNameFor(I)Ljava/lang/String;
    .locals 6
    .parameter "off"

    .prologue
    const/4 v5, 0x3

    .line 2251
    div-int/lit16 v3, p0, 0x3e8

    div-int/lit8 p0, v3, 0x3c

    .line 2253
    const/16 v3, 0x9

    new-array v0, v3, [C

    .line 2254
    .local v0, buf:[C
    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v0, v3

    .line 2255
    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v0, v3

    .line 2256
    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v0, v3

    .line 2258
    if-gez p0, :cond_0

    .line 2259
    const/16 v3, 0x2d

    aput-char v3, v0, v5

    .line 2260
    neg-int p0, p0

    .line 2265
    :goto_0
    div-int/lit8 v1, p0, 0x3c

    .line 2266
    .local v1, hours:I
    rem-int/lit8 v2, p0, 0x3c

    .line 2268
    .local v2, minutes:I
    const/4 v3, 0x4

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 2269
    const/4 v3, 0x5

    rem-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 2271
    const/4 v3, 0x6

    const/16 v4, 0x3a

    aput-char v4, v0, v3

    .line 2273
    const/4 v3, 0x7

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 2274
    const/16 v3, 0x8

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 2276
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3

    .line 2262
    .end local v1           #hours:I
    .end local v2           #minutes:I
    :cond_0
    const/16 v3, 0x2b

    aput-char v3, v0, v5

    goto :goto_0
.end method

.method private findTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 11
    .parameter "offset"
    .parameter "dst"
    .parameter "when"

    .prologue
    .line 1774
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[NITZ],findTimeZone,offset:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",dst:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",when:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1775
    move v5, p1

    .line 1776
    .local v5, rawOffset:I
    if-eqz p2, :cond_0

    .line 1777
    const v9, 0x36ee80

    sub-int/2addr v5, v9

    .line 1779
    :cond_0
    invoke-static {v5}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v8

    .line 1780
    .local v8, zones:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1781
    .local v2, guess:Ljava/util/TimeZone;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 1782
    .local v1, d:Ljava/util/Date;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .line 1783
    .local v7, zone:Ljava/lang/String;
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 1784
    .local v6, tz:Ljava/util/TimeZone;
    invoke-virtual {v6, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    if-ne v9, p1, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v9

    if-ne v9, p2, :cond_2

    .line 1786
    move-object v2, v6

    .line 1787
    const-string v9, "[NITZ],find time zone."

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1792
    .end local v6           #tz:Ljava/util/TimeZone;
    .end local v7           #zone:Ljava/lang/String;
    :cond_1
    return-object v2

    .line 1782
    .restart local v6       #tz:Ljava/util/TimeZone;
    .restart local v7       #zone:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getAutoTime()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2455
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 2458
    :goto_0
    return v1

    .line 2455
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2457
    :catch_0
    move-exception v0

    .line 2458
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getAutoTimeZone()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2464
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time_zone"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 2467
    :goto_0
    return v1

    .line 2464
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2466
    :catch_0
    move-exception v0

    .line 2467
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getDataConnectionSimId()I
    .locals 7

    .prologue
    const-wide/16 v5, -0x5

    .line 3289
    const/4 v2, -0x1

    .line 3291
    .local v2, currentDataConnectionSimId:I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gprs_connection_sim_setting"

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 3292
    .local v0, currentDataConnectionMultiSimId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    cmp-long v3, v0, v5

    if-eqz v3, :cond_0

    .line 3293
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v2

    .line 3298
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default Data Setting value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3299
    return v2
.end method

.method private getEINFO(I)V
    .locals 4
    .parameter "eventId"

    .prologue
    .line 3276
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "AT+EINFO?"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "+EINFO"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 3277
    const-string v0, "getEINFO for EMMRRS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3278
    return-void
.end method

.method private getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 3
    .parameter "offset"
    .parameter "dst"
    .parameter "when"

    .prologue
    .line 1764
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 1765
    .local v0, guess:Ljava/util/TimeZone;
    if-nez v0, :cond_0

    .line 1767
    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 1769
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNitzTimeZone returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_2

    move-object v1, v0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1770
    return-object v0

    .line 1767
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1769
    :cond_2
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private isGprsConsistent(II)Z
    .locals 1
    .parameter "gprsState"
    .parameter "serviceState"

    .prologue
    .line 1756
    if-nez p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .locals 12
    .parameter "gsmRoaming"
    .parameter "s"

    .prologue
    .line 2182
    const-string v9, "gsm.sim.operator.alpha"

    const-string v10, "empty"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2184
    .local v8, spn:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    .line 2185
    .local v4, onsl:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v5

    .line 2187
    .local v5, onss:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    .line 2189
    .local v6, operatorNumeric:Ljava/lang/String;
    iget v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I

    if-nez v9, :cond_1

    .line 2190
    const-string v9, "gsm.sim.operator.alpha"

    const-string v10, "empty"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2191
    const-string v9, "gsm.sim.operator.numeric"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2197
    .local v7, simNumeric:Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_2

    const-string v9, ""

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v2, 0x1

    .line 2198
    .local v2, equalsOnsl:Z
    :goto_1
    if-eqz v5, :cond_3

    const-string v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v3, 0x1

    .line 2200
    .local v3, equalsOnss:Z
    :goto_2
    const/4 v1, 0x1

    .line 2202
    .local v1, equalsMcc:Z
    const/4 v9, 0x0

    const/4 v10, 0x3

    :try_start_0
    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2209
    :goto_3
    if-eqz p1, :cond_4

    if-eqz v1, :cond_0

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    :cond_0
    const/4 v9, 0x1

    :goto_4
    return v9

    .line 2193
    .end local v1           #equalsMcc:Z
    .end local v2           #equalsOnsl:Z
    .end local v3           #equalsOnss:Z
    .end local v7           #simNumeric:Ljava/lang/String;
    :cond_1
    const-string v9, "gsm.sim.operator.alpha.2"

    const-string v10, "empty"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2194
    const-string v9, "gsm.sim.operator.numeric.2"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #simNumeric:Ljava/lang/String;
    goto :goto_0

    .line 2197
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 2198
    .restart local v2       #equalsOnsl:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 2204
    .restart local v1       #equalsMcc:Z
    .restart local v3       #equalsOnss:Z
    :catch_0
    move-exception v0

    .line 2205
    .local v0, e:Ljava/lang/Exception;
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "simNumeric parsing error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 2209
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    const/4 v9, 0x0

    goto :goto_4
.end method

.method private static networkTypeToString(I)Ljava/lang/String;
    .locals 4
    .parameter "type"

    .prologue
    .line 1344
    const-string/jumbo v0, "unknown"

    .line 1346
    .local v0, ret:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 1368
    :goto_0
    :pswitch_0
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "networkTypeToString: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    return-object v0

    .line 1348
    :pswitch_1
    const-string v0, "GPRS"

    .line 1349
    goto :goto_0

    .line 1351
    :pswitch_2
    const-string v0, "EDGE"

    .line 1352
    goto :goto_0

    .line 1354
    :pswitch_3
    const-string v0, "UMTS"

    .line 1355
    goto :goto_0

    .line 1357
    :pswitch_4
    const-string v0, "HSDPA"

    .line 1358
    goto :goto_0

    .line 1360
    :pswitch_5
    const-string v0, "HSUPA"

    .line 1361
    goto :goto_0

    .line 1363
    :pswitch_6
    const-string v0, "HSPA"

    .line 1364
    goto :goto_0

    .line 1346
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private onGsmSignalStrengthResult(Landroid/os/AsyncResult;)Landroid/os/AsyncResult;
    .locals 22
    .parameter "ar"

    .prologue
    .line 1898
    new-instance v20, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1899
    .local v20, ret:Landroid/os/AsyncResult;
    const/16 v3, 0x63

    .line 1900
    .local v3, rssi:I
    const/16 v19, -0x1

    .line 1901
    .local v19, mGsmBitErrorRate:I
    const/16 v16, 0x0

    .line 1902
    .local v16, mGsmRssiQdbm:I
    const/16 v17, 0x0

    .line 1903
    .local v17, mGsmRscpQdbm:I
    const/16 v18, 0x0

    .line 1905
    .local v18, mGsmEcn0Qdbm:I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 1908
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1956
    :cond_0
    :goto_0
    return-object v20

    .line 1911
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/telephony/SignalStrength;

    .line 1912
    .local v21, s:Landroid/telephony/SignalStrength;
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v3

    .line 1913
    const/16 v2, 0x63

    if-eq v3, v2, :cond_0

    .line 1915
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v16

    .line 1916
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v17

    .line 1917
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v18

    .line 1918
    new-instance v1, Landroid/telephony/SignalStrength;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/16 v10, 0x63

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    const v13, 0x7fffffff

    const v14, 0x7fffffff

    const/4 v15, 0x1

    invoke-direct/range {v1 .. v18}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIZIII)V

    .line 1927
    .local v1, mNewSignalStrength:Landroid/telephony/SignalStrength;
    new-instance v20, Landroid/os/AsyncResult;

    .end local v20           #ret:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .restart local v20       #ret:Landroid/os/AsyncResult;
    goto :goto_0
.end method

.method private onInvalidSimInfoReceived(Landroid/os/AsyncResult;)V
    .locals 12
    .parameter "ar"

    .prologue
    .line 3199
    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/String;

    move-object v0, v8

    check-cast v0, [Ljava/lang/String;

    .line 3200
    .local v0, InvalidSimInfo:[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v5, v0, v8

    .line 3201
    .local v5, plmn:Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3202
    .local v2, cs_invalid:I
    const/4 v8, 0x2

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 3203
    .local v6, ps_invalid:I
    const/4 v8, 0x3

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3204
    .local v1, cause:I
    const/4 v7, -0x1

    .line 3205
    .local v7, testMode:I
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "ivsr_setting"

    const-wide/16 v10, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 3208
    .local v3, ivsr_setting:J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "InvalidSimInfo received during ivsr_setting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3211
    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-nez v8, :cond_1

    .line 3268
    :cond_0
    :goto_0
    return-void

    .line 3217
    :cond_1
    const-string v8, "gsm.gcf.testmode"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 3219
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onInvalidSimInfoReceived testMode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cause:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cs_invalid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ps_invalid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " plmn:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "mEverIVSR"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEverIVSR:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3222
    if-eqz v7, :cond_2

    .line 3223
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "InvalidSimInfo received during test mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3228
    :cond_2
    const/4 v8, 0x1

    if-ne v2, v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3230
    const-string v8, "InvalidSimInfo set TRM due to CS invalid"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3231
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setEverIVSR(Z)V

    .line 3232
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    .line 3233
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    .line 3234
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTRM(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 3239
    :cond_3
    const/4 v8, 0x1

    if-ne v6, v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3241
    const-string v8, "InvalidSimInfo set TRM due to PS invalid "

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3242
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setEverIVSR(Z)V

    .line 3243
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    .line 3244
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    .line 3245
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTRM(ILandroid/os/Message;)V

    goto/16 :goto_0
.end method

.method private onNetworkStateChangeResult(Landroid/os/AsyncResult;)V
    .locals 13
    .parameter "ar"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1816
    const/4 v5, -0x1

    .line 1817
    .local v5, state:I
    const/4 v4, -0x1

    .line 1818
    .local v4, lac:I
    const/4 v2, -0x1

    .line 1819
    .local v2, cid:I
    const/4 v0, -0x1

    .line 1820
    .local v0, Act:I
    const/4 v1, -0x1

    .line 1824
    .local v1, cause:I
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_0

    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v6, :cond_2

    .line 1825
    :cond_0
    const-string/jumbo v6, "onNetworkStateChangeResult exception"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1889
    :cond_1
    :goto_0
    return-void

    .line 1827
    :cond_2
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    move-object v3, v6

    check-cast v3, [Ljava/lang/String;

    .line 1829
    .local v3, info:[Ljava/lang/String;
    array-length v6, v3

    if-lez v6, :cond_a

    .line 1831
    aget-object v6, v3, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1833
    aget-object v6, v3, v8

    if-eqz v6, :cond_3

    aget-object v6, v3, v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 1834
    aget-object v6, v3, v8

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 1837
    :cond_3
    aget-object v6, v3, v10

    if-eqz v6, :cond_4

    aget-object v6, v3, v10

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 1838
    aget-object v6, v3, v10

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 1841
    :cond_4
    aget-object v6, v3, v11

    if-eqz v6, :cond_5

    aget-object v6, v3, v11

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 1842
    aget-object v6, v3, v11

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1845
    :cond_5
    aget-object v6, v3, v12

    if-eqz v6, :cond_6

    aget-object v6, v3, v12

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 1846
    aget-object v6, v3, v12

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1849
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onNetworkStateChangeResult state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "lac:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "cid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Act:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "cause:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1852
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    invoke-interface {v6, v7, v5, v1}, Lcom/mediatek/common/telephony/IServiceStateExt;->needIgnoredState(III)Z

    move-result v6

    if-ne v6, v8, :cond_7

    .line 1854
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontUpdateNetworkStateFlag:Z

    goto/16 :goto_0

    .line 1859
    :cond_7
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontUpdateNetworkStateFlag:Z

    .line 1863
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v6, v1}, Lcom/mediatek/common/telephony/IServiceStateExt;->needRejectCauseNotification(I)Z

    move-result v6

    if-ne v6, v8, :cond_8

    .line 1865
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setRejectCauseNotification(I)V

    .line 1870
    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v6, v5, v2}, Lcom/mediatek/common/telephony/IServiceStateExt;->setEmergencyCallsOnly(II)I

    move-result v6

    if-ne v6, v8, :cond_9

    .line 1872
    const-string/jumbo v6, "onNetworkStateChangeResult set mEmergencyOnly"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1873
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    goto/16 :goto_0

    .line 1875
    :cond_9
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v6, v5, v2}, Lcom/mediatek/common/telephony/IServiceStateExt;->setEmergencyCallsOnly(II)I

    move-result v6

    if-nez v6, :cond_1

    .line 1877
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-ne v6, v8, :cond_1

    .line 1879
    const-string/jumbo v6, "onNetworkStateChangeResult reset mEmergencyOnly"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1880
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    goto/16 :goto_0

    .line 1885
    :cond_a
    const-string/jumbo v6, "onNetworkStateChangeResult length zero"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onRestrictedStateChanged(Landroid/os/AsyncResult;)V
    .locals 10
    .parameter "ar"

    .prologue
    const/16 v9, 0x3ed

    const/16 v8, 0x3ec

    const/16 v7, 0x3eb

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1967
    new-instance v1, Lcom/android/internal/telephony/RestrictedState;

    invoke-direct {v1}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    .line 1969
    .local v1, newRs:Lcom/android/internal/telephony/RestrictedState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onRestrictedStateChanged: E rs "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1971
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_5

    .line 1972
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    .line 1973
    .local v0, ints:[I
    aget v2, v0, v4

    .line 1975
    .local v2, state:I
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_0

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_6

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->setCsEmergencyRestricted(Z)V

    .line 1979
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    move-result-object v3

    sget-object v6, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    if-ne v3, v6, :cond_9

    .line 1980
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_1

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_7

    :cond_1
    move v3, v5

    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->setCsNormalRestricted(Z)V

    .line 1983
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_8

    :goto_2
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/RestrictedState;->setPsRestricted(Z)V

    .line 1998
    :cond_2
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DSAC DEB] new rs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2000
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2001
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2002
    const/16 v3, 0x3e9

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 2013
    :cond_3
    :goto_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2014
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-nez v3, :cond_c

    .line 2016
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 2061
    :cond_4
    :goto_5
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 2063
    .end local v0           #ints:[I
    .end local v2           #state:I
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRestrictedStateChanged: X rs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2064
    return-void

    .restart local v0       #ints:[I
    .restart local v2       #state:I
    :cond_6
    move v3, v4

    .line 1975
    goto :goto_0

    :cond_7
    move v3, v4

    .line 1980
    goto :goto_1

    :cond_8
    move v5, v4

    .line 1983
    goto :goto_2

    .line 1986
    :cond_9
    const-string v3, "[DSAC DEB] IccCard state Not ready "

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1987
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_a

    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_a

    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_a

    .line 1990
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/RestrictedState;->setCsNormalRestricted(Z)V

    .line 1993
    :cond_a
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    and-int/lit8 v3, v2, 0x10

    if-nez v3, :cond_2

    .line 1994
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/RestrictedState;->setPsRestricted(Z)V

    goto/16 :goto_3

    .line 2003
    :cond_b
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2004
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2005
    const/16 v3, 0x3ea

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 2017
    :cond_c
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-nez v3, :cond_d

    .line 2019
    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_5

    .line 2020
    :cond_d
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2022
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_5

    .line 2024
    :cond_e
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-nez v3, :cond_11

    .line 2026
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-nez v3, :cond_f

    .line 2028
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 2029
    :cond_f
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2031
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 2032
    :cond_10
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2034
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 2036
    :cond_11
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2038
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-nez v3, :cond_12

    .line 2040
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 2041
    :cond_12
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2043
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 2044
    :cond_13
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2046
    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 2049
    :cond_14
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2051
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 2052
    :cond_15
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2054
    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5

    .line 2055
    :cond_16
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2057
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_5
.end method

.method private pollState()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1223
    new-array v6, v8, [I

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    .line 1224
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    aput v9, v6, v9

    .line 1225
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cm.getRadioState() is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1228
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontUpdateNetworkStateFlag:Z

    if-ne v6, v8, :cond_0

    .line 1230
    const-string/jumbo v6, "pollState is ignored!!"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1340
    :goto_0
    return-void

    .line 1233
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    .line 1234
    .local v5, radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    sget-object v6, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v5, v6, :cond_4

    .line 1238
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1241
    .local v0, airplaneMode:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1246
    .local v1, dualSimModeSetting:I
    const/4 v4, 0x0

    .line 1247
    .local v4, isPowerOff:I
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1249
    const-string/jumbo v6, "ril.ipo.radiooff"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1252
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Now airplaneMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",dualSimModeSetting="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",isPowerOff="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1254
    if-eq v0, v8, :cond_2

    if-ne v4, v8, :cond_5

    .line 1255
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 1270
    :cond_3
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pollState is locked or absent, transfer to ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1273
    .end local v0           #airplaneMode:I
    .end local v1           #dualSimModeSetting:I
    .end local v4           #isPowerOff:I
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1319
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    aget v7, v6, v9

    add-int/lit8 v7, v7, 0x1

    aput v7, v6, v9

    .line 1320
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x6

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 1324
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    aget v7, v6, v9

    add-int/lit8 v7, v7, 0x1

    aput v7, v6, v9

    .line 1325
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x5

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    .line 1329
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    aget v7, v6, v9

    add-int/lit8 v7, v7, 0x1

    aput v7, v6, v9

    .line 1330
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    .line 1334
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    aget v7, v6, v9

    add-int/lit8 v7, v7, 0x1

    aput v7, v6, v9

    .line 1335
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0xe

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1257
    .restart local v0       #airplaneMode:I
    .restart local v1       #dualSimModeSetting:I
    .restart local v4       #isPowerOff:I
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPeerPhone()Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->isSimInsert()Z

    move-result v2

    .line 1258
    .local v2, hasPeerSIMInserted:Z
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->isSimInsert()Z

    move-result v3

    .line 1261
    .local v3, hasSIMInserted:Z
    if-nez v2, :cond_6

    if-eqz v3, :cond_7

    .line 1262
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v6

    shl-int v6, v8, v6

    and-int/2addr v6, v1

    if-nez v6, :cond_3

    .line 1263
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    goto/16 :goto_1

    .line 1264
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v6

    if-eqz v6, :cond_3

    .line 1267
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    goto/16 :goto_1

    .line 1276
    .end local v0           #airplaneMode:I
    .end local v1           #dualSimModeSetting:I
    .end local v2           #hasPeerSIMInserted:Z
    .end local v3           #hasSIMInserted:Z
    .end local v4           #isPowerOff:I
    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 1277
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 1278
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1279
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1280
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 1281
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIs3GTo2G:Z

    .line 1282
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 1283
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 1284
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 1285
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newps_networkType:I

    .line 1286
    iput v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    .line 1287
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 1288
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    .line 1290
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 1293
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontPollSignalStrength:Z

    .line 1294
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setLastSignalStrengthDefaultValues(Z)V

    .line 1297
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto/16 :goto_0

    .line 1305
    :pswitch_1
    const-string v6, "Radio Technology Change ongoing, setting SS to off"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1306
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 1307
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 1308
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1309
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    goto/16 :goto_0

    .line 1273
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private pollStateDone()V
    .locals 42

    .prologue
    .line 1376
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    move/from16 v37, v0

    if-lez v37, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    move/from16 v37, v0

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-gt v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRadioTechnology:I

    move/from16 v37, v0

    const/16 v38, 0x3

    move/from16 v0, v37

    move/from16 v1, v38

    if-lt v0, v1, :cond_0

    .line 1379
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIs3GTo2G:Z

    .line 1380
    const-string/jumbo v37, "pollStateDone(): mIs3GTo2G = true"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1382
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIs3GTo2G:Z

    move/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_15

    .line 1383
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newps_networkType:I

    .line 1391
    :cond_1
    :goto_0
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Poll ServiceState done:  oldSS=["

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "] newSS=["

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "] oldGprs="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " newData="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " oldMaxDataCalls="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " mNewMaxDataCalls="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " oldReasonDataDenied="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " mNewReasonDataDenied="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " oldType="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRadioTechnology:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " newType="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " oldGprsType="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ps_networkType:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " newGprsType="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newps_networkType:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/ServiceState;->getState()I

    move-result v37

    if-eqz v37, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/ServiceState;->getState()I

    move-result v37

    if-nez v37, :cond_16

    const/16 v20, 0x1

    .line 1408
    .local v20, hasRegistered:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/ServiceState;->getState()I

    move-result v37

    if-nez v37, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/ServiceState;->getState()I

    move-result v37

    if-eqz v37, :cond_17

    const/4 v13, 0x1

    .line 1412
    .local v13, hasDeregistered:Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v37, v0

    if-eqz v37, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v37, v0

    if-nez v37, :cond_18

    const/4 v14, 0x1

    .line 1416
    .local v14, hasGprsAttached:Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ps_networkType:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newps_networkType:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_19

    const/16 v17, 0x1

    .line 1418
    .local v17, hasPSNetworkTypeChanged:Z
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRadioTechnology:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_1a

    const/16 v18, 0x1

    .line 1420
    .local v18, hasRadioTechnologyChanged:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_1b

    const/4 v12, 0x1

    .line 1422
    .local v12, hasChanged:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v37

    if-nez v37, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v37

    if-eqz v37, :cond_1c

    const/16 v22, 0x1

    .line 1424
    .local v22, hasRoamingOn:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v37

    if-eqz v37, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v37

    if-nez v37, :cond_1d

    const/16 v21, 0x1

    .line 1426
    .local v21, hasRoamingOff:Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Landroid/telephony/gsm/GsmCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_1e

    const/16 v16, 0x1

    .line 1428
    .local v16, hasLocationChanged:Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_1f

    const/16 v19, 0x1

    .line 1430
    .local v19, hasRegStateChanged:Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_20

    const/4 v15, 0x1

    .line 1432
    .local v15, hasLacChanged:Z
    :goto_b
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "pollStateDone,hasRegistered:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ",hasDeregistered:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ",hasGprsAttached:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ",hasPSNetworkTypeChanged:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ",hasRadioTechnologyChanged:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ",hasChanged:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ",hasRoamingOn:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ",hasRoamingOff:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ",hasLocationChanged:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ",hasRegStateChanged:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ",hasLacChanged:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/ServiceState;->getState()I

    move-result v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/telephony/ServiceState;->getState()I

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_3

    .line 1439
    :cond_2
    const v37, 0xc3c2

    const/16 v38, 0x4

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getState()I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    const/16 v39, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v40, v0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    const/16 v39, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getState()I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    const/16 v39, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v40, v0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1443
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v41, v0

    invoke-interface/range {v37 .. v41}, Lcom/mediatek/common/telephony/IServiceStateExt;->onPollStateDone(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;II)V

    .line 1446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    .line 1447
    .local v31, tss:Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    .line 1448
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    .line 1453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v29, v0

    .line 1454
    .local v29, tcl:Landroid/telephony/gsm/GsmCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 1455
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 1457
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    .line 1459
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newps_networkType:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ps_networkType:I

    .line 1461
    if-eqz v17, :cond_4

    .line 1462
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I

    move/from16 v37, v0

    if-nez v37, :cond_21

    .line 1463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v37, v0

    const-string v38, "gsm.network.type"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ps_networkType:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ratPsChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ps_networkType:I

    move/from16 v40, v0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    const/16 v41, 0x0

    invoke-direct/range {v38 .. v41}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1473
    :cond_4
    if-eqz v18, :cond_6

    .line 1474
    const/4 v8, -0x1

    .line 1475
    .local v8, cid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v24

    check-cast v24, Landroid/telephony/gsm/GsmCellLocation;

    .line 1476
    .local v24, loc:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v24, :cond_5

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v8

    .line 1477
    :cond_5
    const v37, 0xc3c0

    const/16 v38, 0x3

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    const/16 v39, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRadioTechnology:I

    move/from16 v40, v0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    const/16 v39, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    move/from16 v40, v0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1480
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "RAT switched "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRadioTechnology:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " -> "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " at cell "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1484
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I

    move/from16 v37, v0

    if-nez v37, :cond_22

    .line 1485
    const-string v37, "gsm.cs.network.type"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    :goto_d
    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay(Z)V

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ratCsChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/AsyncResult;

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    move/from16 v40, v0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    const/16 v41, 0x0

    invoke-direct/range {v38 .. v41}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v37 .. v38}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1493
    .end local v8           #cid:I
    .end local v24           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    .line 1494
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    .line 1495
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    .line 1496
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRadioTechnology:I

    .line 1498
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    .line 1502
    if-eqz v20, :cond_7

    .line 1503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    .line 1505
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "mLastRegisteredPLMN= "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1508
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "pollStateDone: registering current mNitzUpdatedTime="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " changing to false"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1511
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 1514
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->explict_update_spn:I

    move/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_9

    .line 1518
    if-nez v12, :cond_8

    .line 1520
    const-string v37, "explict_update_spn trigger to refresh SPN"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1521
    const/16 v37, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay(Z)V

    .line 1523
    :cond_8
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->explict_update_spn:I

    .line 1526
    :cond_9
    if-eqz v12, :cond_33

    .line 1527
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 1528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v26

    .line 1531
    .local v26, operatorNumeric:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I

    move/from16 v37, v0

    if-nez v37, :cond_24

    .line 1532
    const-string v37, "gsm.operator.numeric"

    const-string v38, ""

    invoke-static/range {v37 .. v38}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1533
    .local v27, prevOperatorNumeric:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v37, v0

    const-string v38, "gsm.operator.alpha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v37, v0

    const-string v38, "gsm.operator.numeric"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v38, v0

    const-string v39, "gsm.operator.isroaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v37

    if-eqz v37, :cond_23

    const-string/jumbo v37, "true"

    :goto_e
    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    :goto_f
    if-nez v26, :cond_27

    .line 1544
    const-string/jumbo v37, "operatorNumeric is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1545
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I

    move/from16 v37, v0

    if-nez v37, :cond_26

    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v37, v0

    const-string v38, "gsm.operator.iso-country"

    const-string v39, ""

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    :goto_10
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1551
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 1666
    :cond_a
    :goto_11
    if-eqz v19, :cond_c

    .line 1667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v37

    const/16 v38, 0x4

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_b

    const/16 v37, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string v39, "airplane_mode_on"

    const/16 v40, -0x1

    invoke-static/range {v38 .. v40}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_b

    .line 1669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/ServiceState;->getState()I

    move-result v28

    .line 1670
    .local v28, serviceState:I
    const/16 v37, 0x3

    move/from16 v0, v28

    move/from16 v1, v37

    if-eq v0, v1, :cond_b

    .line 1671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 1674
    .end local v28           #serviceState:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateSimIndicateState()V

    .line 1676
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 1678
    if-eqz v20, :cond_d

    .line 1680
    const-string v37, "force update signal strength after notifyServiceStateChanged"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySignalStrength()V

    .line 1694
    .end local v26           #operatorNumeric:Ljava/lang/String;
    .end local v27           #prevOperatorNumeric:Ljava/lang/String;
    :cond_d
    :goto_12
    if-eqz v14, :cond_e

    .line 1695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    .line 1697
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "mLastPSRegisteredPLMN= "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1700
    :cond_e
    if-nez v18, :cond_f

    if-eqz v17, :cond_10

    .line 1701
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v37, v0

    const-string/jumbo v38, "nwTypeChanged"

    invoke-virtual/range {v37 .. v38}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 1704
    :cond_10
    if-eqz v16, :cond_11

    .line 1705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .line 1708
    :cond_11
    if-eqz v22, :cond_12

    .line 1709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v37

    const-string/jumbo v38, "roaming_indication_needed"

    const/16 v39, 0x1

    invoke-static/range {v37 .. v39}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1712
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I

    move/from16 v37, v0

    if-nez v37, :cond_34

    .line 1713
    const-string v37, "gsm.roaming.indicator.needed"

    const-string/jumbo v38, "true"

    invoke-static/range {v37 .. v38}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1720
    :cond_12
    if-eqz v21, :cond_13

    .line 1721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v37

    const-string/jumbo v38, "roaming_indication_needed"

    const/16 v39, 0x0

    invoke-static/range {v37 .. v39}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1724
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I

    move/from16 v37, v0

    if-nez v37, :cond_35

    .line 1725
    const-string v37, "gsm.roaming.indicator.needed"

    const-string v38, "false"

    invoke-static/range {v37 .. v38}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1732
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/telephony/ServiceState;->getState()I

    move-result v38

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v37

    if-nez v37, :cond_36

    .line 1733
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    move/from16 v37, v0

    if-nez v37, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    move/from16 v37, v0

    if-nez v37, :cond_14

    .line 1734
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 1736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v37

    const-string v38, "gprs_register_check_period_ms"

    const v39, 0xea60

    invoke-static/range {v37 .. v39}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1740
    .local v7, check_period:I
    const/16 v37, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v37

    int-to-long v0, v7

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-wide/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1746
    .end local v7           #check_period:I
    :cond_14
    :goto_15
    return-void

    .line 1384
    .end local v12           #hasChanged:Z
    .end local v13           #hasDeregistered:Z
    .end local v14           #hasGprsAttached:Z
    .end local v15           #hasLacChanged:Z
    .end local v16           #hasLocationChanged:Z
    .end local v17           #hasPSNetworkTypeChanged:Z
    .end local v18           #hasRadioTechnologyChanged:Z
    .end local v19           #hasRegStateChanged:Z
    .end local v20           #hasRegistered:Z
    .end local v21           #hasRoamingOff:Z
    .end local v22           #hasRoamingOn:Z
    .end local v29           #tcl:Landroid/telephony/gsm/GsmCellLocation;
    .end local v31           #tss:Landroid/telephony/ServiceState;
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newps_networkType:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_1

    .line 1385
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newps_networkType:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newps_networkType:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Landroid/telephony/ServiceState;->setRadioTechnology(I)V

    goto/16 :goto_0

    .line 1404
    :cond_16
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 1408
    .restart local v20       #hasRegistered:Z
    :cond_17
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1412
    .restart local v13       #hasDeregistered:Z
    :cond_18
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 1416
    .restart local v14       #hasGprsAttached:Z
    :cond_19
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 1418
    .restart local v17       #hasPSNetworkTypeChanged:Z
    :cond_1a
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 1420
    .restart local v18       #hasRadioTechnologyChanged:Z
    :cond_1b
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 1422
    .restart local v12       #hasChanged:Z
    :cond_1c
    const/16 v22, 0x0

    goto/16 :goto_7

    .line 1424
    .restart local v22       #hasRoamingOn:Z
    :cond_1d
    const/16 v21, 0x0

    goto/16 :goto_8

    .line 1426
    .restart local v21       #hasRoamingOff:Z
    :cond_1e
    const/16 v16, 0x0

    goto/16 :goto_9

    .line 1428
    .restart local v16       #hasLocationChanged:Z
    :cond_1f
    const/16 v19, 0x0

    goto/16 :goto_a

    .line 1430
    .restart local v19       #hasRegStateChanged:Z
    :cond_20
    const/4 v15, 0x0

    goto/16 :goto_b

    .line 1465
    .restart local v15       #hasLacChanged:Z
    .restart local v29       #tcl:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v31       #tss:Landroid/telephony/ServiceState;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v37, v0

    const-string v38, "gsm.network.type.2"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ps_networkType:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1487
    .restart local v8       #cid:I
    .restart local v24       #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_22
    const-string v37, "gsm.cs.network.type.2"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1535
    .end local v8           #cid:I
    .end local v24           #loc:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v26       #operatorNumeric:Ljava/lang/String;
    .restart local v27       #prevOperatorNumeric:Ljava/lang/String;
    :cond_23
    const-string v37, "false"

    goto/16 :goto_e

    .line 1537
    .end local v27           #prevOperatorNumeric:Ljava/lang/String;
    :cond_24
    const-string v37, "gsm.operator.numeric.2"

    const-string v38, ""

    invoke-static/range {v37 .. v38}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1538
    .restart local v27       #prevOperatorNumeric:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v37, v0

    const-string v38, "gsm.operator.alpha.2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v37, v0

    const-string v38, "gsm.operator.numeric.2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v38, v0

    const-string v39, "gsm.operator.isroaming.2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v37

    if-eqz v37, :cond_25

    const-string/jumbo v37, "true"

    :goto_16
    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_25
    const-string v37, "false"

    goto :goto_16

    .line 1548
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v37, v0

    const-string v38, "gsm.operator.iso-country.2"

    const-string v39, ""

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1553
    :cond_27
    const-string v23, ""

    .line 1554
    .local v23, iso:Ljava/lang/String;
    const/16 v37, 0x0

    const/16 v38, 0x3

    move-object/from16 v0, v26

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 1556
    .local v25, mcc:Ljava/lang/String;
    const/16 v37, 0x0

    const/16 v38, 0x3

    :try_start_0
    move-object/from16 v0, v26

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    invoke-static/range {v37 .. v37}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v23

    .line 1563
    :goto_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I

    move/from16 v37, v0

    if-nez v37, :cond_2b

    .line 1564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v37, v0

    const-string v38, "gsm.operator.iso-country"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    :goto_18
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1570
    const/16 v35, 0x0

    .line 1572
    .local v35, zone:Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    move/from16 v37, v0

    if-nez v37, :cond_29

    const-string v37, "000"

    move-object/from16 v0, v25

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_29

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-nez v37, :cond_29

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v37

    if-eqz v37, :cond_29

    .line 1576
    const-string/jumbo v37, "telephony.test.ignore.nitz"

    const/16 v38, 0x0

    invoke-static/range {v37 .. v38}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v37

    if-eqz v37, :cond_2c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v37

    const-wide/16 v39, 0x1

    and-long v37, v37, v39

    const-wide/16 v39, 0x0

    cmp-long v37, v37, v39

    if-nez v37, :cond_2c

    const/16 v30, 0x1

    .line 1580
    .local v30, testOneUniqueOffsetPath:Z
    :goto_19
    invoke-static/range {v23 .. v23}, Landroid/util/TimeUtils;->getTimeZonesWithUniqueOffsets(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v34

    .line 1581
    .local v34, uniqueZones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_28

    if-eqz v30, :cond_2d

    .line 1582
    :cond_28
    const/16 v37, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    .end local v35           #zone:Ljava/util/TimeZone;
    check-cast v35, Ljava/util/TimeZone;

    .line 1584
    .restart local v35       #zone:Ljava/util/TimeZone;
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "pollStateDone: no nitz but one TZ for iso-cc="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " with zone.getID="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v35 .. v35}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " testOneUniqueOffsetPath="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1588
    invoke-virtual/range {v35 .. v35}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 1599
    .end local v30           #testOneUniqueOffsetPath:Z
    .end local v34           #uniqueZones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_29
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    move/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v37

    if-eqz v37, :cond_a

    .line 1604
    const-string/jumbo v37, "persist.sys.timezone"

    invoke-static/range {v37 .. v37}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1606
    .local v36, zoneName:Ljava/lang/String;
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "pollStateDone: fix time zone zoneName=\'"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "\' mZoneOffset="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " mZoneDst="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " iso-cc=\'"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "\' iso-cc-idx="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    sget-object v38, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1612
    const-string v37, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_2e

    .line 1615
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v39, v0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    move-wide/from16 v3, v39

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v35

    .line 1616
    const-string/jumbo v37, "pollStateDone: using NITZ TimeZone"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1652
    :goto_1b
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 1654
    if-eqz v35, :cond_32

    .line 1655
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "pollStateDone: zone != null zone.getID="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v35 .. v35}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1656
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v37

    if-eqz v37, :cond_2a

    .line 1657
    invoke-virtual/range {v35 .. v35}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 1659
    :cond_2a
    invoke-virtual/range {v35 .. v35}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1558
    .end local v35           #zone:Ljava/util/TimeZone;
    .end local v36           #zoneName:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 1559
    .local v11, ex:Ljava/lang/NumberFormatException;
    const-string v37, "GSM"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "countryCodeForMcc error"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 1560
    .end local v11           #ex:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v11

    .line 1561
    .local v11, ex:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v37, "GSM"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "countryCodeForMcc error"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 1566
    .end local v11           #ex:Ljava/lang/StringIndexOutOfBoundsException;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v37, v0

    const-string v38, "gsm.operator.iso-country.2"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    .line 1576
    .restart local v35       #zone:Ljava/util/TimeZone;
    :cond_2c
    const/16 v30, 0x0

    goto/16 :goto_19

    .line 1591
    .restart local v30       #testOneUniqueOffsetPath:Z
    .restart local v34       #uniqueZones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_2d
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "pollStateDone: there are "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " unique offsets for iso-cc=\'"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " testOneUniqueOffsetPath="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "\', do nothing"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 1617
    .end local v30           #testOneUniqueOffsetPath:Z
    .end local v34           #uniqueZones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .restart local v36       #zoneName:Ljava/lang/String;
    :cond_2e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v37, v0

    if-nez v37, :cond_31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v37, v0

    if-nez v37, :cond_31

    if-eqz v36, :cond_31

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v37

    if-lez v37, :cond_31

    sget-object v37, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v37

    if-gez v37, :cond_31

    .line 1626
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v35

    .line 1627
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    move/from16 v37, v0

    if-eqz v37, :cond_2f

    .line 1630
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1631
    .local v9, ctm:J
    move-object/from16 v0, v35

    invoke-virtual {v0, v9, v10}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v37

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v32, v0

    .line 1633
    .local v32, tzOffset:J
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "pollStateDone: tzOffset="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " ltod="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static {v9, v10}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1636
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v37

    if-eqz v37, :cond_30

    .line 1637
    sub-long v5, v9, v32

    .line 1638
    .local v5, adj:J
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "pollStateDone: adj ltod="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static {v5, v6}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1640
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 1646
    .end local v5           #adj:J
    .end local v9           #ctm:J
    .end local v32           #tzOffset:J
    :cond_2f
    :goto_1c
    const-string/jumbo v37, "pollStateDone: using default TimeZone"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 1643
    .restart local v9       #ctm:J
    .restart local v32       #tzOffset:J
    :cond_30
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    move-wide/from16 v37, v0

    sub-long v37, v37, v32

    move-wide/from16 v0, v37

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    goto :goto_1c

    .line 1648
    .end local v9           #ctm:J
    .end local v32           #tzOffset:J
    :cond_31
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v39, v0

    move/from16 v0, v37

    move/from16 v1, v38

    move-wide/from16 v2, v39

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v35

    .line 1649
    const-string/jumbo v37, "pollStateDone: using getTimeZone(off, dst, time, iso)"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 1661
    :cond_32
    const-string/jumbo v37, "pollStateDone: zone == null"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1686
    .end local v23           #iso:Ljava/lang/String;
    .end local v25           #mcc:Ljava/lang/String;
    .end local v26           #operatorNumeric:Ljava/lang/String;
    .end local v27           #prevOperatorNumeric:Ljava/lang/String;
    .end local v35           #zone:Ljava/util/TimeZone;
    .end local v36           #zoneName:Ljava/lang/String;
    :cond_33
    const/16 v37, 0x1

    move/from16 v0, v37

    if-ne v15, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/ServiceState;->getState()I

    move-result v37

    if-nez v37, :cond_d

    .line 1689
    const-string v37, "force updateSpnDisplay due to LAC changed"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1690
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_12

    .line 1715
    :cond_34
    const-string v37, "gsm.roaming.indicator.needed.2"

    const-string/jumbo v38, "true"

    invoke-static/range {v37 .. v38}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1727
    :cond_35
    const-string v37, "gsm.roaming.indicator.needed.2"

    const-string v38, "false"

    invoke-static/range {v37 .. v38}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 1744
    :cond_36
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    goto/16 :goto_15
.end method

.method private queueNextSignalStrengthPoll()V
    .locals 3

    .prologue
    .line 1796
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontPollSignalStrength:Z

    if-eqz v1, :cond_0

    .line 1811
    :goto_0
    return-void

    .line 1804
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1805
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1810
    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private regCodeIsRoaming(I)Z
    .locals 14
    .parameter "code"

    .prologue
    .line 2098
    const/4 v2, 0x0

    .line 2100
    .local v2, isRoaming:Z
    const/4 v8, 0x0

    .line 2101
    .local v8, simRecords:Lcom/android/internal/telephony/gsm/SIMRecords;
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/IccRecords;

    .line 2102
    .local v7, r:Lcom/android/internal/telephony/IccRecords;
    if-eqz v7, :cond_0

    move-object v8, v7

    .line 2103
    check-cast v8, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 2107
    :cond_0
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    .line 2108
    .local v9, strHomePlmn:Ljava/lang/String;
    :goto_0
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v10

    .line 2109
    .local v10, strServingPlmn:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2110
    .local v3, isServingPlmnInGroup:Z
    const/4 v1, 0x0

    .line 2112
    .local v1, isHomePlmnInGroup:Z
    const/4 v11, 0x5

    if-ne v11, p1, :cond_1

    .line 2113
    const/4 v2, 0x1

    .line 2118
    :cond_1
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v11}, Lcom/mediatek/common/telephony/IServiceStateExt;->ignoreDomesticRoaming()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    const/4 v11, 0x1

    if-ne v2, v11, :cond_2

    if-eqz v10, :cond_2

    if-eqz v9, :cond_2

    .line 2120
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ServingPlmn = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "HomePlmn"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2122
    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2124
    const-string v11, "Same MCC,don\'t set as roaming"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2125
    const/4 v2, 0x0

    .line 2129
    :cond_2
    const/4 v5, 0x0

    .line 2130
    .local v5, mccmnc:I
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v11

    if-nez v11, :cond_6

    .line 2131
    const-string v11, "gsm.sim.operator.numeric"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 2135
    :goto_1
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    .line 2136
    .local v6, numeric:Ljava/lang/String;
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "numeric:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "mccmnc:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v11, v2, v5, v6}, Lcom/mediatek/common/telephony/IServiceStateExt;->isRegCodeRoaming(ZILjava/lang/String;)Z

    move-result v2

    .line 2141
    const/4 v11, 0x1

    if-ne v2, v11, :cond_8

    if-eqz v10, :cond_8

    if-eqz v9, :cond_8

    .line 2142
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "strServingPlmn = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "strHomePlmn"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2144
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->customEhplmn:[[Ljava/lang/String;

    array-length v11, v11

    if-ge v0, v11, :cond_8

    .line 2146
    const/4 v3, 0x0

    .line 2147
    const/4 v1, 0x0

    .line 2150
    const/4 v4, 0x0

    .local v4, j:I
    :goto_3
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->customEhplmn:[[Ljava/lang/String;

    aget-object v11, v11, v0

    array-length v11, v11

    if-ge v4, v11, :cond_7

    .line 2151
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->customEhplmn:[[Ljava/lang/String;

    aget-object v11, v11, v0

    aget-object v11, v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2152
    const/4 v3, 0x1

    .line 2154
    :cond_3
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->customEhplmn:[[Ljava/lang/String;

    aget-object v11, v11, v0

    aget-object v11, v11, v4

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2155
    const/4 v1, 0x1

    .line 2150
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2107
    .end local v0           #i:I
    .end local v1           #isHomePlmnInGroup:Z
    .end local v3           #isServingPlmnInGroup:Z
    .end local v4           #j:I
    .end local v5           #mccmnc:I
    .end local v6           #numeric:Ljava/lang/String;
    .end local v9           #strHomePlmn:Ljava/lang/String;
    .end local v10           #strServingPlmn:Ljava/lang/String;
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2133
    .restart local v1       #isHomePlmnInGroup:Z
    .restart local v3       #isServingPlmnInGroup:Z
    .restart local v5       #mccmnc:I
    .restart local v9       #strHomePlmn:Ljava/lang/String;
    .restart local v10       #strServingPlmn:Ljava/lang/String;
    :cond_6
    const-string v11, "gsm.sim.operator.numeric.2"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    goto/16 :goto_1

    .line 2160
    .restart local v0       #i:I
    .restart local v4       #j:I
    .restart local v6       #numeric:Ljava/lang/String;
    :cond_7
    const/4 v11, 0x1

    if-ne v3, v11, :cond_9

    const/4 v11, 0x1

    if-ne v1, v11, :cond_9

    .line 2161
    const/4 v2, 0x0

    .line 2162
    const-string v11, "Ignore roaming"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2168
    .end local v0           #i:I
    .end local v4           #j:I
    :cond_8
    return v2

    .line 2144
    .restart local v0       #i:I
    .restart local v4       #j:I
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private regCodeToServiceState(I)I
    .locals 3
    .parameter "code"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2068
    packed-switch p1, :pswitch_data_0

    .line 2087
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "regCodeToServiceState: unexpected service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2088
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v1

    .line 2080
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 2084
    goto :goto_0

    .line 2068
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private revertToNitzTime()V
    .locals 6

    .prologue
    const-wide/16 v3, 0x0

    .line 2517
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 2519
    const-string v0, "[NITZ]:revertToNitz,AUTO_TIME is 0"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2530
    :cond_0
    :goto_0
    return-void

    .line 2522
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[NITZ]:Reverting to NITZ: tz=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSavedAtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2525
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 2526
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 2527
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    goto :goto_0
.end method

.method private revertToNitzTimeZone()V
    .locals 3

    .prologue
    .line 2533
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time_zone"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 2541
    :cond_0
    :goto_0
    return-void

    .line 2537
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reverting to NITZ TimeZone: tz=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2538
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2539
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveNitzTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 2476
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    .line 2477
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    .line 2478
    return-void
.end method

.method private saveNitzTimeZone(Ljava/lang/String;)V
    .locals 0
    .parameter "zoneId"

    .prologue
    .line 2472
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    .line 2473
    return-void
.end method

.method private setAndBroadcastNetworkSetTime(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 2508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAndBroadcastNetworkSetTime: time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2509
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 2510
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2511
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2512
    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2513
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2514
    return-void
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .locals 4
    .parameter "zoneId"

    .prologue
    .line 2487
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAndBroadcastNetworkSetTimeZone: setTimeZone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2488
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2490
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 2491
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2492
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2493
    const-string/jumbo v2, "time-zone"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2494
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAndBroadcastNetworkSetTimeZone: call alarm.setTimeZone and broadcast zoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2499
    return-void
.end method

.method private setEINFO(ILandroid/os/Message;)V
    .locals 4
    .parameter "value"
    .parameter "onComplete"

    .prologue
    const/4 v3, 0x0

    .line 3281
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 3282
    .local v0, Cmd:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+EINFO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 3283
    const/4 v1, 0x1

    const-string v2, "+EINFO"

    aput-object v2, v0, v1

    .line 3284
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1, v0, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 3285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEINFO for EMMRRS, ATCmd[0]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3286
    return-void
.end method

.method private setNotification(I)V
    .locals 0
    .parameter "notifyType"

    .prologue
    .line 2764
    return-void
.end method

.method private setRejectCauseNotification(I)V
    .locals 10
    .parameter "cause"

    .prologue
    .line 2551
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setRejectCauseNotification: create notification "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2581
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2583
    .local v0, context:Landroid/content/Context;
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    .line 2584
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Landroid/app/Notification;->when:J

    .line 2585
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/16 v8, 0x10

    iput v8, v7, Landroid/app/Notification;->flags:I

    .line 2586
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const v8, 0x108008a

    iput v8, v7, Landroid/app/Notification;->icon:I

    .line 2587
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2588
    .local v2, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/4 v8, 0x0

    const/high16 v9, 0x800

    invoke-static {v0, v8, v2, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    iput-object v8, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2591
    const-string v1, ""

    .line 2592
    .local v1, details:Ljava/lang/CharSequence;
    const v7, 0x2050067

    invoke-virtual {v0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 2593
    .local v6, title:Ljava/lang/CharSequence;
    const/16 v3, 0x37a

    .line 2596
    .local v3, notificationId:I
    const-string/jumbo v7, "show name log"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2598
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I

    invoke-static {v7, v8}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v5

    .line 2599
    .local v5, siminfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v5, :cond_0

    .line 2600
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-wide v8, v5, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    iput-wide v8, v7, Landroid/app/Notification;->simId:J

    .line 2601
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/4 v8, 0x3

    iput v8, v7, Landroid/app/Notification;->simInfoType:I

    .line 2602
    iget v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I

    if-eqz v7, :cond_0

    .line 2603
    const/16 v3, 0x22c6

    .line 2617
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2634
    :goto_0
    :pswitch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setRejectCauseNotification: put notification "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2635
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iput-object v6, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2636
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v8, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7, v0, v6, v1, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2639
    const-string/jumbo v7, "notification"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 2642
    .local v4, notificationManager:Landroid/app/NotificationManager;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v4, v3, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2643
    return-void

    .line 2619
    .end local v4           #notificationManager:Landroid/app/NotificationManager;
    :pswitch_1
    const v7, 0x2050068

    invoke-virtual {v0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2620
    goto :goto_0

    .line 2622
    :pswitch_2
    const v7, 0x2050069

    invoke-virtual {v0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2623
    goto :goto_0

    .line 2625
    :pswitch_3
    const v7, 0x2050070

    invoke-virtual {v0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2626
    goto :goto_0

    .line 2628
    :pswitch_4
    const v7, 0x2050071

    invoke-virtual {v0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2629
    goto :goto_0

    .line 2617
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setSignalStrengthDefaultValues()V
    .locals 19

    .prologue
    .line 1206
    new-instance v1, Landroid/telephony/SignalStrength;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I

    const/16 v3, 0x63

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/16 v10, 0x63

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    const v13, 0x7fffffff

    const v14, 0x7fffffff

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v1 .. v18}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIZIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1212
    return-void
.end method

.method private setTimeFromNITZString(Ljava/lang/String;J)V
    .locals 32
    .parameter "nitz"
    .parameter "nitzReceiveTime"

    .prologue
    .line 2286
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    .line 2287
    .local v21, start:J
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "NITZ: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " start="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " delay="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sub-long v28, v21, p2

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2294
    :try_start_0
    const-string v27, "GMT"

    invoke-static/range {v27 .. v27}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    .line 2296
    .local v5, c:Ljava/util/Calendar;
    invoke-virtual {v5}, Ljava/util/Calendar;->clear()V

    .line 2297
    const/16 v27, 0x10

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 2299
    const-string v27, "[/:,+-]"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 2301
    .local v18, nitzSubs:[Ljava/lang/String;
    const/16 v27, 0x0

    aget-object v27, v18, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v25, v0

    .line 2302
    .local v25, year:I
    const/16 v27, 0x1

    move/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 2305
    const/16 v27, 0x1

    aget-object v27, v18, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    add-int/lit8 v17, v27, -0x1

    .line 2306
    .local v17, month:I
    const/16 v27, 0x2

    move/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 2308
    const/16 v27, 0x2

    aget-object v27, v18, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2309
    .local v6, date:I
    const/16 v27, 0x5

    move/from16 v0, v27

    invoke-virtual {v5, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 2311
    const/16 v27, 0x3

    aget-object v27, v18, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 2312
    .local v11, hour:I
    const/16 v27, 0xa

    move/from16 v0, v27

    invoke-virtual {v5, v0, v11}, Ljava/util/Calendar;->set(II)V

    .line 2314
    const/16 v27, 0x4

    aget-object v27, v18, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 2315
    .local v16, minute:I
    const/16 v27, 0xc

    move/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 2317
    const/16 v27, 0x5

    aget-object v27, v18, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 2318
    .local v19, second:I
    const/16 v27, 0xd

    move/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 2320
    const/16 v27, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    const/16 v20, 0x1

    .line 2322
    .local v20, sign:Z
    :goto_0
    const/16 v27, 0x6

    aget-object v27, v18, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 2324
    .local v23, tzOffset:I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_7

    const/16 v27, 0x7

    aget-object v27, v18, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2334
    .local v7, dst:I
    :goto_1
    if-eqz v20, :cond_8

    const/16 v27, 0x1

    :goto_2
    mul-int v27, v27, v23

    mul-int/lit8 v27, v27, 0xf

    mul-int/lit8 v27, v27, 0x3c

    move/from16 v0, v27

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v23, v0

    .line 2336
    const/16 v26, 0x0

    .line 2342
    .local v26, zone:Ljava/util/TimeZone;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x9

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_0

    .line 2343
    const/16 v27, 0x8

    aget-object v27, v18, v27

    const/16 v28, 0x21

    const/16 v29, 0x2f

    invoke-virtual/range {v27 .. v29}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v24

    .line 2344
    .local v24, tzname:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v26

    .line 2345
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[NITZ] setTimeFromNITZString,tzname:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "zone:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2349
    .end local v24           #tzname:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I

    move/from16 v27, v0

    if-nez v27, :cond_9

    .line 2350
    const-string v27, "gsm.operator.iso-country"

    invoke-static/range {v27 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2354
    .local v13, iso:Ljava/lang/String;
    :goto_3
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[NITZ] setTimeFromNITZString,mGotCountryCode:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2356
    if-nez v26, :cond_1

    .line 2358
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1

    .line 2359
    if-eqz v13, :cond_b

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_b

    .line 2360
    if-eqz v7, :cond_a

    const/16 v27, 0x1

    :goto_4
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    move/from16 v0, v23

    move/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3, v13}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v26

    .line 2373
    :cond_1
    :goto_5
    if-eqz v26, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v28, v0

    if-eqz v7, :cond_d

    const/16 v27, 0x1

    :goto_6
    move/from16 v0, v28

    move/from16 v1, v27

    if-eq v0, v1, :cond_3

    .line 2378
    :cond_2
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 2379
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    .line 2380
    if-eqz v7, :cond_e

    const/16 v27, 0x1

    :goto_7
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    .line 2381
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    .line 2384
    :cond_3
    if-eqz v26, :cond_5

    .line 2385
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v27

    if-eqz v27, :cond_4

    .line 2386
    invoke-virtual/range {v26 .. v26}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 2388
    :cond_4
    invoke-virtual/range {v26 .. v26}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    .line 2391
    :cond_5
    const-string v27, "gsm.ignore-nitz"

    invoke-static/range {v27 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2392
    .local v12, ignore:Ljava/lang/String;
    if-eqz v12, :cond_f

    const-string/jumbo v27, "yes"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_f

    .line 2393
    const-string v27, "NITZ: Not setting clock because gsm.ignore-nitz is set"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2451
    .end local v5           #c:Ljava/util/Calendar;
    .end local v6           #date:I
    .end local v7           #dst:I
    .end local v11           #hour:I
    .end local v12           #ignore:Ljava/lang/String;
    .end local v13           #iso:Ljava/lang/String;
    .end local v16           #minute:I
    .end local v17           #month:I
    .end local v18           #nitzSubs:[Ljava/lang/String;
    .end local v19           #second:I
    .end local v20           #sign:Z
    .end local v23           #tzOffset:I
    .end local v25           #year:I
    .end local v26           #zone:Ljava/util/TimeZone;
    :goto_8
    return-void

    .line 2320
    .restart local v5       #c:Ljava/util/Calendar;
    .restart local v6       #date:I
    .restart local v11       #hour:I
    .restart local v16       #minute:I
    .restart local v17       #month:I
    .restart local v18       #nitzSubs:[Ljava/lang/String;
    .restart local v19       #second:I
    .restart local v25       #year:I
    :cond_6
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 2324
    .restart local v20       #sign:Z
    .restart local v23       #tzOffset:I
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 2334
    .restart local v7       #dst:I
    :cond_8
    const/16 v27, -0x1

    goto/16 :goto_2

    .line 2352
    .restart local v26       #zone:Ljava/util/TimeZone;
    :cond_9
    const-string v27, "gsm.operator.iso-country.2"

    invoke-static/range {v27 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #iso:Ljava/lang/String;
    goto/16 :goto_3

    .line 2360
    :cond_a
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 2368
    :cond_b
    if-eqz v7, :cond_c

    const/16 v27, 0x1

    :goto_9
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v27

    move-wide/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v26

    goto/16 :goto_5

    :cond_c
    const/16 v27, 0x0

    goto :goto_9

    .line 2373
    :cond_d
    const/16 v27, 0x0

    goto/16 :goto_6

    .line 2380
    :cond_e
    const/16 v27, 0x0

    goto/16 :goto_7

    .line 2398
    .restart local v12       #ignore:Ljava/lang/String;
    :cond_f
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2400
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v27

    if-eqz v27, :cond_12

    .line 2401
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v27

    sub-long v14, v27, p2

    .line 2404
    .local v14, millisSinceNitzReceived:J
    const-wide/16 v27, 0x0

    cmp-long v27, v14, v27

    if-gez v27, :cond_10

    .line 2407
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "NITZ: not setting time, clock has rolled backwards since NITZ time was received, "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2446
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_8

    .line 2448
    .end local v5           #c:Ljava/util/Calendar;
    .end local v6           #date:I
    .end local v7           #dst:I
    .end local v11           #hour:I
    .end local v12           #ignore:Ljava/lang/String;
    .end local v13           #iso:Ljava/lang/String;
    .end local v14           #millisSinceNitzReceived:J
    .end local v16           #minute:I
    .end local v17           #month:I
    .end local v18           #nitzSubs:[Ljava/lang/String;
    .end local v19           #second:I
    .end local v20           #sign:Z
    .end local v23           #tzOffset:I
    .end local v25           #year:I
    .end local v26           #zone:Ljava/util/TimeZone;
    :catch_0
    move-exception v10

    .line 2449
    .local v10, ex:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "NITZ: Parsing NITZ time "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " ex="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2414
    .end local v10           #ex:Ljava/lang/RuntimeException;
    .restart local v5       #c:Ljava/util/Calendar;
    .restart local v6       #date:I
    .restart local v7       #dst:I
    .restart local v11       #hour:I
    .restart local v12       #ignore:Ljava/lang/String;
    .restart local v13       #iso:Ljava/lang/String;
    .restart local v14       #millisSinceNitzReceived:J
    .restart local v16       #minute:I
    .restart local v17       #month:I
    .restart local v18       #nitzSubs:[Ljava/lang/String;
    .restart local v19       #second:I
    .restart local v20       #sign:Z
    .restart local v23       #tzOffset:I
    .restart local v25       #year:I
    .restart local v26       #zone:Ljava/util/TimeZone;
    :cond_10
    const-wide/32 v27, 0x7fffffff

    cmp-long v27, v14, v27

    if-lez v27, :cond_11

    .line 2417
    :try_start_3
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "NITZ: not setting time, processing has taken "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-wide/32 v28, 0x5265c00

    div-long v28, v14, v28

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " days"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2446
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_8

    .line 2425
    :cond_11
    const/16 v27, 0xe

    long-to-int v0, v14

    move/from16 v28, v0

    :try_start_5
    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 2428
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "NITZ: Setting time of day to "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " NITZ receive delay(ms): "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " gained(ms): "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    sub-long v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " from "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2435
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v27

    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 2436
    const-string v27, "GSM"

    const-string v28, "NITZ: after Setting time of day"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    .end local v14           #millisSinceNitzReceived:J
    :cond_12
    const-string v27, "gsm.nitz.time"

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v27

    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTime(J)V

    .line 2441
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 2442
    .local v8, end:J
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "NITZ: end="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " dur="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sub-long v28, v8, v21

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2444
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2446
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_8

    .end local v8           #end:J
    :catchall_0
    move-exception v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v27
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
.end method

.method private static sloge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2820
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSST]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    return-void
.end method

.method private static twoDigitsAt(Ljava/lang/String;I)I
    .locals 4
    .parameter "s"
    .parameter "offset"

    .prologue
    const/16 v3, 0xa

    .line 2215
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 2216
    .local v0, a:I
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 2218
    .local v1, b:I
    if-ltz v0, :cond_0

    if-gez v1, :cond_1

    .line 2220
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "invalid format"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2223
    :cond_1
    mul-int/lit8 v2, v0, 0xa

    add-int/2addr v2, v1

    return v2
.end method

.method private updateAllOpertorInfo(Ljava/lang/String;)I
    .locals 3
    .parameter "plmn"

    .prologue
    .line 2947
    if-eqz p1, :cond_0

    .line 2948
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v0, p1}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 2949
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I

    if-nez v0, :cond_1

    .line 2950
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOperatorAlphaLong and update PROPERTY_OPERATOR_ALPHA to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v1, "gsm.operator.alpha"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2957
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 2953
    :cond_1
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOperatorAlphaLong and update PROPERTY_OPERATOR_ALPHA_2 to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v1, "gsm.operator.alpha.2"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->checkCorrectThread()V

    .line 466
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 467
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 468
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVoiceNetworkStateChanged(Landroid/os/Handler;)V

    .line 469
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnRestrictedStateChanged(Landroid/os/Handler;)V

    .line 473
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNITZTime(Landroid/os/Handler;)V

    .line 474
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 476
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/IServiceStateExt;->isImeiLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIMEILock(Landroid/os/Handler;)V

    .line 478
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 479
    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->dispose()V

    .line 480
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2825
    const-string v0, "GsmServiceStateTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2826
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " cellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " newCellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPreferredNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " gprsState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " newGPRSState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMaxDataCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewMaxDataCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mReasonDataDenied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewReasonDataDenied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGsmRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDataRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEmergencyOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNeedFixZoneAfterNitz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneDst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGotCountryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNitzUpdatedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedTimeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedAtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mStartedGprsRegCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mReportedGprsNoReg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWakeLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " curSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " curShowSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curShowSpn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " curPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " curShowPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curShowPlmn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2863
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 483
    const-string v0, "finalize"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method public getCurrentDataConnectionState()I
    .locals 1

    .prologue
    .line 2235
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    return v0
.end method

.method getCurrentGprsState()I
    .locals 1

    .prologue
    .line 2231
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    return v0
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 37
    .parameter "msg"

    .prologue
    .line 496
    const/16 v29, 0x0

    .local v29, testMode:I
    const/4 v6, 0x0

    .line 498
    .local v6, attachType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    move/from16 v33, v0

    if-nez v33, :cond_1

    .line 499
    const-string v33, "GSM"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Received message "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "["

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "] while being destroyed. Ignoring."

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 503
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v33, v0

    sparse-switch v33, :sswitch_data_0

    .line 892
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 515
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lcom/android/internal/telephony/CommandsInterface;->setCurrentPreferredNetworkType()V

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string v34, "cro_setting"

    const-wide/16 v35, 0x0

    invoke-static/range {v33 .. v36}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v9

    .line 520
    .local v9, cro_setting:J
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "set CRO setting="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    long-to-int v0, v9

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v33, v0

    long-to-int v0, v9

    move/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v33 .. v35}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCRO(ILandroid/os/Message;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string v34, "hoo_setting"

    const-wide/16 v35, 0x0

    invoke-static/range {v33 .. v36}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v13

    .line 527
    .local v13, hoo_setting:J
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "set HOO setting="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    long-to-int v0, v13

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 528
    const-wide/16 v33, 0x0

    cmp-long v33, v13, v33

    if-nez v33, :cond_4

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v33, v0

    const/16 v34, 0x2

    const/16 v35, 0x0

    invoke-virtual/range {v33 .. v35}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCRO(ILandroid/os/Message;)V

    .line 550
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string v34, "gprs_transfer_setting"

    const/16 v35, 0x1

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    .line 553
    .local v31, transferType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v31

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setGprsTransferType(ILandroid/os/Message;)V

    .line 554
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "transferType:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 557
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I

    move/from16 v33, v0

    if-nez v33, :cond_5

    .line 558
    const-string v33, "gsm.gcf.testmode"

    const/16 v34, 0x0

    invoke-static/range {v33 .. v34}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v29

    .line 564
    :goto_2
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "testMode:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 565
    if-nez v29, :cond_3

    .line 566
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoGprsAttach:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_6

    .line 567
    const-string/jumbo v33, "persist.radio.gprs.attach.type"

    const/16 v34, 0x1

    invoke-static/range {v33 .. v34}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 568
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "attachType:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 586
    :cond_3
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    .line 588
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto/16 :goto_0

    .line 530
    .end local v31           #transferType:I
    :cond_4
    const-wide/16 v33, 0x1

    cmp-long v33, v13, v33

    if-nez v33, :cond_2

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v33, v0

    const/16 v34, 0x3

    const/16 v35, 0x0

    invoke-virtual/range {v33 .. v35}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCRO(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 560
    .restart local v31       #transferType:I
    :cond_5
    const-string v33, "gsm.gcf.testmode2"

    const/16 v34, 0x0

    invoke-static/range {v33 .. v34}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v29

    goto :goto_2

    .line 573
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoGprsAttach:I

    move/from16 v33, v0

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_3

    .line 582
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoGprsAttach:I

    goto :goto_3

    .line 596
    .end local v9           #cro_setting:J
    .end local v13           #hoo_setting:J
    .end local v31           #transferType:I
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPowerStateToDesired()V

    .line 597
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .line 602
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 603
    .local v5, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onNetworkStateChangeResult(Landroid/os/AsyncResult;)V

    .line 604
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .line 608
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_4
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIs3GTo2G:Z

    .line 609
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .line 616
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v33

    if-eqz v33, :cond_0

    .line 620
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 623
    .restart local v5       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onGsmSignalStrengthResult(Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    move-result-object v5

    .line 626
    const/16 v33, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    .line 627
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto/16 :goto_0

    .line 632
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 634
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    if-nez v33, :cond_9

    .line 635
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, [Ljava/lang/String;

    move-object/from16 v28, v33

    check-cast v28, [Ljava/lang/String;

    .line 636
    .local v28, states:[Ljava/lang/String;
    const/16 v16, -0x1

    .line 637
    .local v16, lac:I
    const/4 v8, -0x1

    .line 638
    .local v8, cid:I
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v33, v0

    const/16 v34, 0x3

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_8

    .line 640
    const/16 v33, 0x1

    :try_start_0
    aget-object v33, v28, v33

    if-eqz v33, :cond_7

    const/16 v33, 0x1

    aget-object v33, v28, v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_7

    .line 641
    const/16 v33, 0x1

    aget-object v33, v28, v33

    const/16 v34, 0x10

    invoke-static/range {v33 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v16

    .line 643
    :cond_7
    const/16 v33, 0x2

    aget-object v33, v28, v33

    if-eqz v33, :cond_8

    const/16 v33, 0x2

    aget-object v33, v28, v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_8

    .line 644
    const/16 v33, 0x2

    aget-object v33, v28, v33

    const/16 v34, 0x10

    invoke-static/range {v33 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 650
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-virtual {v0, v1, v8}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .line 656
    .end local v8           #cid:I
    .end local v16           #lac:I
    .end local v28           #states:[Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->disableSingleLocationUpdate()V

    goto/16 :goto_0

    .line 646
    .restart local v8       #cid:I
    .restart local v16       #lac:I
    .restart local v28       #states:[Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 647
    .local v12, ex:Ljava/lang/NumberFormatException;
    const-string v33, "GSM"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "error parsing location: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 660
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v8           #cid:I
    .end local v12           #ex:Ljava/lang/NumberFormatException;
    .end local v16           #lac:I
    .end local v28           #states:[Ljava/lang/String;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 661
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    if-nez v33, :cond_0

    .line 662
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, [I

    move-object/from16 v15, v33

    check-cast v15, [I

    .line 663
    .local v15, ints:[I
    const/16 v33, 0x0

    aget v33, v15, v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_0

    .line 666
    const-string v33, "Start manual selection mode reminder service"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 667
    new-instance v26, Landroid/content/Intent;

    invoke-direct/range {v26 .. v26}, Landroid/content/Intent;-><init>()V

    .line 668
    .local v26, sIntent:Landroid/content/Intent;
    const-string v33, "com.android.phone"

    const-string v34, "com.mediatek.settings.NoNetworkPopUpService"

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 678
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v15           #ints:[I
    .end local v26           #sIntent:Landroid/content/Intent;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 680
    .restart local v5       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 686
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v33, v0

    const/16 v34, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v34

    invoke-interface/range {v33 .. v34}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 690
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 692
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, [Ljava/lang/Object;

    check-cast v33, [Ljava/lang/Object;

    const/16 v34, 0x0

    aget-object v22, v33, v34

    check-cast v22, Ljava/lang/String;

    .line 693
    .local v22, nitzString:Ljava/lang/String;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, [Ljava/lang/Object;

    check-cast v33, [Ljava/lang/Object;

    const/16 v34, 0x1

    aget-object v33, v33, v34

    check-cast v33, Ljava/lang/Long;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 695
    .local v20, nitzReceiveTime:J
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 702
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v20           #nitzReceiveTime:J
    .end local v22           #nitzString:Ljava/lang/String;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 703
    .restart local v5       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onGsmSignalStrengthResult(Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    move-result-object v5

    .line 704
    const/16 v33, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    .line 708
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    if-nez v33, :cond_a

    .line 709
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontPollSignalStrength:Z

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_0

    .line 710
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontPollSignalStrength:Z

    .line 711
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto/16 :goto_0

    .line 714
    :cond_a
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontPollSignalStrength:Z

    goto/16 :goto_0

    .line 721
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_c
    const-string v33, "MTK_MVNO_SUPPORT refreshSpnDisplay()"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 723
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->refreshSpnDisplay()V

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v19

    .line 728
    .local v19, newImsi:Ljava/lang/String;
    const/4 v7, 0x0

    .line 729
    .local v7, bImsiChanged:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I

    move/from16 v33, v0

    if-nez v33, :cond_d

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string v34, "gsm.sim.imsi"

    invoke-static/range {v33 .. v34}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 731
    .local v23, oldImsi:Ljava/lang/String;
    if-eqz v23, :cond_b

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_c

    .line 732
    :cond_b
    const-string v33, "GSM"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "GSST: Sim1 Card changed  lastImsi is "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " newImsi is "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const/4 v7, 0x1

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string v34, "gsm.sim.imsi"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 745
    .end local v23           #oldImsi:Ljava/lang/String;
    :cond_c
    :goto_5
    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v33

    if-eqz v33, :cond_0

    .line 746
    const-string v33, "GSM"

    const-string v34, "GSST: service state is out of service with manual network selection mode,  setNetworkSelectionModeAutomatic "

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v33, v0

    const/16 v34, 0x32

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/android/internal/telephony/gsm/GSMPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 737
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string v34, "gsm.sim.imsi.2"

    invoke-static/range {v33 .. v34}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 738
    .local v24, oldImsi2:Ljava/lang/String;
    if-eqz v24, :cond_e

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_c

    .line 739
    :cond_e
    const-string v33, "GSM"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "GSST: Sim2 Card changed  lastImsi is "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " newImsi is "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const/4 v7, 0x1

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string v34, "gsm.sim.imsi.2"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_5

    .line 752
    .end local v7           #bImsiChanged:Z
    .end local v19           #newImsi:Ljava/lang/String;
    .end local v24           #oldImsi2:Ljava/lang/String;
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 754
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    if-nez v33, :cond_0

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v33, v0

    const/16 v34, 0xf

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v34

    invoke-interface/range {v33 .. v34}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 760
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 762
    .restart local v5       #ar:Landroid/os/AsyncResult;
    const/16 v33, 0x15

    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    .line 763
    .local v18, message:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    move/from16 v34, v0

    move-object/from16 v0, v33

    move/from16 v1, v34

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 767
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v18           #message:Landroid/os/Message;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 768
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v33, v0

    if-eqz v33, :cond_0

    .line 769
    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/Message;

    invoke-static/range {v33 .. v33}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v33

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 771
    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/Message;

    invoke-virtual/range {v33 .. v33}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 776
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 778
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    if-nez v33, :cond_f

    .line 779
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, [I

    check-cast v33, [I

    const/16 v34, 0x0

    aget v33, v33, v34

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 784
    :goto_6
    const/16 v33, 0x14

    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    .line 785
    .restart local v18       #message:Landroid/os/Message;
    const/16 v30, 0x7

    .line 787
    .local v30, toggledNetworkType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v30

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 781
    .end local v18           #message:Landroid/os/Message;
    .end local v30           #toggledNetworkType:I
    :cond_f
    const/16 v33, 0x7

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_6

    .line 791
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    if-eqz v33, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/ServiceState;->getState()I

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v33

    if-nez v33, :cond_10

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v17

    check-cast v17, Landroid/telephony/gsm/GsmCellLocation;

    .line 797
    .local v17, loc:Landroid/telephony/gsm/GsmCellLocation;
    const v34, 0xc3bb

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v36

    aput-object v36, v35, v33

    const/16 v36, 0x1

    if-eqz v17, :cond_11

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v33

    :goto_7
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v35, v36

    invoke-static/range {v34 .. v35}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 799
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    .line 801
    .end local v17           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_10
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    goto/16 :goto_0

    .line 797
    .restart local v17       #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_11
    const/16 v33, -0x1

    goto :goto_7

    .line 808
    .end local v17           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :sswitch_12
    const-string v33, "EVENT_RESTRICTED_STATE_CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 810
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 812
    .restart local v5       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onRestrictedStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 815
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_13
    const-string v33, "GSST EVENT_SET_AUTO_SELECT_NETWORK_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 818
    :sswitch_14
    const-string v33, "GSM"

    const-string v34, "GSST EVENT_SET_GPRS_CONN_TYPE_DONE"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 820
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    if-eqz v33, :cond_0

    .line 821
    const/16 v33, 0x34

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->DEFAULT_GPRS_RETRY_PERIOD_MILLIS:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 825
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_15
    const-string v33, "GSM"

    const-string v34, "EVENT_SET_GPRS_CONN_RETRY"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v27

    .line 827
    .local v27, ss:Landroid/telephony/ServiceState;
    if-eqz v27, :cond_0

    .line 828
    const-string v33, "GSM"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "GSST EVENT_SET_GPRS_CONN_RETRY ServiceState "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getState()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getState()I

    move-result v33

    const/16 v34, 0x3

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_0

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string v34, "airplane_mode_on"

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 833
    .local v4, airplanMode:I
    const-string v33, "GSM"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "GSST EVENT_SET_GPRS_CONN_RETRY airplanMode "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    if-gtz v4, :cond_0

    .line 837
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsConnType:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setGprsConnType(I)V

    goto/16 :goto_0

    .line 840
    .end local v4           #airplanMode:I
    .end local v27           #ss:Landroid/telephony/ServiceState;
    :sswitch_16
    const-string v33, "GSM"

    const-string v34, "EVENT_DATA_CONNECTION_DETACHED: set gprsState=STATE_OUT_OF_SERVICE"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    .line 842
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ps_networkType:I

    .line 843
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I

    move/from16 v33, v0

    if-nez v33, :cond_12

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v33, v0

    const-string v34, "gsm.network.type"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ps_networkType:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v33 .. v35}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 846
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v33, v0

    const-string v34, "gsm.network.type.2"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ps_networkType:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v33 .. v35}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 851
    :sswitch_17
    const-string v33, "EVENT_INVALID_SIM_INFO"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 852
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 853
    .restart local v5       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onInvalidSimInfoReceived(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 856
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_18
    const-string v33, "EVENT_IMEI_LOCK"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 857
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsImeiLock:Z

    goto/16 :goto_0

    .line 860
    :sswitch_19
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 861
    .restart local v5       #ar:Landroid/os/AsyncResult;
    const-string v33, "EVENT_ENABLE_EMMRRS_STATUS start"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 862
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    if-nez v33, :cond_13

    .line 863
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, [Ljava/lang/String;

    move-object/from16 v11, v33

    check-cast v11, [Ljava/lang/String;

    .line 864
    .local v11, data:[Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "EVENT_ENABLE_EMMRRS_STATUS, data[0] is : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x0

    aget-object v34, v11, v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 865
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "EVENT_ENABLE_EMMRRS_STATUS, einfo value is : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x0

    aget-object v34, v11, v34

    const/16 v35, 0x8

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 866
    const/16 v33, 0x0

    aget-object v33, v11, v33

    const/16 v34, 0x8

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v25

    .line 867
    .local v25, oldValue:I
    move/from16 v0, v25

    or-int/lit16 v0, v0, 0x80

    move/from16 v32, v0

    .line 868
    .local v32, value:I
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "EVENT_ENABLE_EMMRRS_STATUS, einfo value change is : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 869
    move/from16 v0, v25

    move/from16 v1, v32

    if-eq v0, v1, :cond_13

    .line 870
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setEINFO(ILandroid/os/Message;)V

    .line 873
    .end local v11           #data:[Ljava/lang/String;
    .end local v25           #oldValue:I
    .end local v32           #value:I
    :cond_13
    const-string v33, "EVENT_ENABLE_EMMRRS_STATUS end"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 876
    .end local v5           #ar:Landroid/os/AsyncResult;
    :sswitch_1a
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 877
    .restart local v5       #ar:Landroid/os/AsyncResult;
    const-string v33, "EVENT_DISABLE_EMMRRS_STATUS start"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 878
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    if-nez v33, :cond_14

    .line 879
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, [Ljava/lang/String;

    move-object/from16 v11, v33

    check-cast v11, [Ljava/lang/String;

    .line 880
    .restart local v11       #data:[Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "EVENT_DISABLE_EMMRRS_STATUS, data[0] is : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x0

    aget-object v34, v11, v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 881
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "EVENT_DISABLE_EMMRRS_STATUS, einfo value is : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x0

    aget-object v34, v11, v34

    const/16 v35, 0x8

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 882
    const/16 v33, 0x0

    aget-object v33, v11, v33

    const/16 v34, 0x8

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v25

    .line 883
    .restart local v25       #oldValue:I
    and-int/lit8 v32, v25, 0x7f

    .line 884
    .restart local v32       #value:I
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "EVENT_DISABLE_EMMRRS_STATUS, einfo value change is : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 885
    move/from16 v0, v25

    move/from16 v1, v32

    if-eq v0, v1, :cond_14

    .line 886
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setEINFO(ILandroid/os/Message;)V

    .line 889
    .end local v11           #data:[Ljava/lang/String;
    .end local v25           #oldValue:I
    .end local v32           #value:I
    :cond_14
    const-string v33, "EVENT_DISABLE_EMMRRS_STATUS end"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 503
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_5
        0x4 -> :sswitch_8
        0x5 -> :sswitch_8
        0x6 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_0
        0xe -> :sswitch_8
        0xf -> :sswitch_6
        0x10 -> :sswitch_c
        0x11 -> :sswitch_1
        0x12 -> :sswitch_d
        0x13 -> :sswitch_10
        0x14 -> :sswitch_e
        0x15 -> :sswitch_f
        0x16 -> :sswitch_11
        0x17 -> :sswitch_12
        0x32 -> :sswitch_13
        0x33 -> :sswitch_14
        0x34 -> :sswitch_15
        0x64 -> :sswitch_16
        0x65 -> :sswitch_17
        0x66 -> :sswitch_4
        0x67 -> :sswitch_7
        0x68 -> :sswitch_18
        0x69 -> :sswitch_1a
        0x6a -> :sswitch_19
        0x6b -> :sswitch_0
        0x6c -> :sswitch_0
    .end sparse-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 18
    .parameter "what"
    .parameter "ar"

    .prologue
    .line 980
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    if-eq v14, v15, :cond_1

    .line 1203
    :cond_0
    :goto_0
    return-void

    .line 982
    :cond_1
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v14, :cond_7

    .line 983
    const/4 v2, 0x0

    .line 985
    .local v2, err:Lcom/android/internal/telephony/CommandException$Error;
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v14, v14, Lcom/android/internal/telephony/CommandException;

    if-eqz v14, :cond_2

    .line 986
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v14, Lcom/android/internal/telephony/CommandException;

    check-cast v14, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 989
    :cond_2
    sget-object v14, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v14, :cond_3

    .line 991
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 995
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v14}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v14

    if-nez v14, :cond_4

    .line 997
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 1001
    :cond_4
    sget-object v14, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v2, v14, :cond_5

    sget-object v14, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v2, v14, :cond_5

    .line 1003
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "RIL implementation has returned an error where it must succeed"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1166
    .end local v2           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    const/4 v15, 0x0

    aget v16, v14, v15

    add-int/lit8 v16, v16, -0x1

    aput v16, v14, v15

    .line 1168
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    if-nez v14, :cond_0

    .line 1173
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getState()I

    move-result v14

    if-eqz v14, :cond_6

    .line 1174
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    .line 1175
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 1190
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 1199
    .local v11, roaming:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14, v11}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 1200
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v14, v15}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 1201
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto/16 :goto_0

    .line 1006
    .end local v11           #roaming:Z
    :cond_7
    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 1008
    :sswitch_0
    :try_start_0
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, [Ljava/lang/String;

    move-object v0, v14

    check-cast v0, [Ljava/lang/String;

    move-object v13, v0

    .line 1009
    .local v13, states:[Ljava/lang/String;
    const/4 v5, -0x1

    .line 1010
    .local v5, lac:I
    const/4 v1, -0x1

    .line 1011
    .local v1, cid:I
    const/4 v10, -0x1

    .line 1012
    .local v10, regState:I
    const/4 v9, -0x1

    .line 1013
    .local v9, reasonRegStateDenied:I
    const/4 v8, -0x1

    .line 1014
    .local v8, psc:I
    array-length v14, v13
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v14, :cond_b

    .line 1016
    const/4 v14, 0x0

    :try_start_1
    aget-object v14, v13, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1017
    array-length v14, v13

    const/4 v15, 0x3

    if-lt v14, v15, :cond_a

    .line 1018
    const/4 v14, 0x1

    aget-object v14, v13, v14

    if-eqz v14, :cond_8

    const/4 v14, 0x1

    aget-object v14, v13, v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_8

    .line 1019
    const/4 v14, 0x1

    aget-object v14, v13, v14

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 1021
    :cond_8
    const/4 v14, 0x2

    aget-object v14, v13, v14

    if-eqz v14, :cond_9

    const/4 v14, 0x2

    aget-object v14, v13, v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_9

    .line 1022
    const/4 v14, 0x2

    aget-object v14, v13, v14

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 1024
    :cond_9
    const/4 v14, 0x3

    aget-object v14, v13, v14

    if-eqz v14, :cond_a

    const/4 v14, 0x3

    aget-object v14, v13, v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_a

    .line 1025
    const/4 v14, 0x3

    aget-object v14, v13, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    .line 1026
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    invoke-virtual {v14, v15}, Landroid/telephony/ServiceState;->setRadioTechnology(I)V

    .line 1029
    :cond_a
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "EVENT_POLL_STATE_REGISTRATION cs_networkTyp:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRadioTechnology:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",regState:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",mNewRadioTechnology:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",lac:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",cid:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1039
    :cond_b
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 1040
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/telephony/ServiceState;->setState(I)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14, v10}, Landroid/telephony/ServiceState;->setRegState(I)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v14}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v14, v15, :cond_c

    .line 1046
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/telephony/ServiceState;->setState(I)V

    .line 1058
    :cond_c
    array-length v14, v13

    const/4 v15, 0x3

    if-gt v14, v15, :cond_d

    const/4 v14, 0x1

    if-eq v10, v14, :cond_f

    const/4 v14, 0x5

    if-eq v10, v14, :cond_f

    .line 1059
    :cond_d
    const-string/jumbo v14, "states.length > 3"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1062
    const v14, 0xfffe

    if-eq v5, v14, :cond_e

    const v14, 0xfffffff

    if-ne v1, v14, :cond_10

    .line 1064
    :cond_e
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unknown lac:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "or cid:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1078
    :cond_f
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v14, v8}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 1161
    .end local v1           #cid:I
    .end local v5           #lac:I
    .end local v8           #psc:I
    .end local v9           #reasonRegStateDenied:I
    .end local v10           #regState:I
    .end local v13           #states:[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1162
    .local v3, ex:Ljava/lang/RuntimeException;
    const-string v14, "GSM"

    const-string v15, "Exception while polling service state. Probably malformed RIL response."

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1034
    .end local v3           #ex:Ljava/lang/RuntimeException;
    .restart local v1       #cid:I
    .restart local v5       #lac:I
    .restart local v8       #psc:I
    .restart local v9       #reasonRegStateDenied:I
    .restart local v10       #regState:I
    .restart local v13       #states:[Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 1035
    .local v3, ex:Ljava/lang/NumberFormatException;
    :try_start_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "error parsing RegistrationState: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1068
    .end local v3           #ex:Ljava/lang/NumberFormatException;
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v14, v5, v1}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    goto :goto_3

    .line 1082
    .end local v1           #cid:I
    .end local v5           #lac:I
    .end local v8           #psc:I
    .end local v9           #reasonRegStateDenied:I
    .end local v10           #regState:I
    .end local v13           #states:[Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, [Ljava/lang/String;

    move-object v0, v14

    check-cast v0, [Ljava/lang/String;

    move-object v13, v0

    .line 1084
    .restart local v13       #states:[Ljava/lang/String;
    const/4 v10, -0x1

    .line 1085
    .restart local v10       #regState:I
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 1086
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 1087
    array-length v14, v13
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    if-lez v14, :cond_15

    .line 1089
    const/4 v14, 0x0

    :try_start_4
    aget-object v14, v13, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1092
    array-length v14, v13

    const/4 v15, 0x4

    if-lt v14, v15, :cond_11

    const/4 v14, 0x3

    aget-object v14, v13, v14

    if-eqz v14, :cond_11

    .line 1093
    const/4 v14, 0x3

    aget-object v14, v13, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newps_networkType:I

    .line 1095
    :cond_11
    array-length v14, v13

    const/4 v15, 0x5

    if-lt v14, v15, :cond_12

    const/4 v14, 0x4

    aget-object v14, v13, v14

    if-eqz v14, :cond_12

    .line 1096
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<cell_data_speed_support> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x4

    aget-object v15, v13, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1098
    :cond_12
    array-length v14, v13

    const/4 v15, 0x6

    if-lt v14, v15, :cond_13

    const/4 v14, 0x5

    aget-object v14, v13, v14

    if-eqz v14, :cond_13

    .line 1099
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<max_data_bearer_capability> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x5

    aget-object v15, v13, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1101
    :cond_13
    array-length v14, v13

    const/4 v15, 0x7

    if-lt v14, v15, :cond_14

    const/4 v14, 0x3

    if-ne v10, v14, :cond_14

    .line 1102
    const/4 v14, 0x6

    aget-object v14, v13, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 1104
    :cond_14
    array-length v14, v13

    const/16 v15, 0x8

    if-lt v14, v15, :cond_15

    .line 1105
    const/4 v14, 0x7

    aget-object v14, v13, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1111
    :cond_15
    :goto_4
    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    .line 1112
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 1113
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newps_networkType:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRilRadioTechnology:I

    .line 1114
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newps_networkType:I

    invoke-virtual {v14, v15}, Landroid/telephony/ServiceState;->setRadioTechnology(I)V

    goto/16 :goto_1

    .line 1107
    :catch_2
    move-exception v3

    .line 1108
    .restart local v3       #ex:Ljava/lang/NumberFormatException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "error parsing GprsRegistrationState: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_4

    .line 1118
    .end local v3           #ex:Ljava/lang/NumberFormatException;
    .end local v10           #regState:I
    .end local v13           #states:[Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, [Ljava/lang/String;

    move-object v0, v14

    check-cast v0, [Ljava/lang/String;

    move-object v6, v0

    .line 1120
    .local v6, opNames:[Ljava/lang/String;
    if-eqz v6, :cond_5

    array-length v14, v6

    const/4 v15, 0x3

    if-lt v14, v15, :cond_5

    .line 1121
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "long:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, v6, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " short:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v6, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " numeric:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v15, v6, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1122
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    const/4 v15, 0x0

    aget-object v15, v6, v15

    const/16 v16, 0x1

    aget-object v16, v6, v16

    const/16 v17, 0x2

    aget-object v17, v6, v17

    invoke-virtual/range {v14 .. v17}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1127
    .end local v6           #opNames:[Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, [I

    move-object v0, v14

    check-cast v0, [I

    move-object v4, v0

    .line 1128
    .local v4, ints:[I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    const/4 v14, 0x0

    aget v14, v4, v14

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_16

    const/4 v14, 0x1

    :goto_5
    invoke-virtual {v15, v14}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v14

    if-nez v14, :cond_17

    .line 1130
    const-string v14, "Selection mode change from manual to auto"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    instance-of v14, v14, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v14, :cond_5

    .line 1134
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPeerPhone()Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v7

    .line 1135
    .local v7, peerPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    if-eqz v7, :cond_5

    .line 1136
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v14

    if-nez v14, :cond_5

    .line 1137
    const-string v14, "Both sim are NOT in manual selection mode,stop reminder service"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1138
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 1139
    .local v12, sIntent:Landroid/content/Intent;
    const-string v14, "com.android.phone"

    const-string v15, "com.mediatek.settings.NoNetworkPopUpService"

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1140
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_1

    .line 1128
    .end local v7           #peerPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v12           #sIntent:Landroid/content/Intent;
    :cond_16
    const/4 v14, 0x0

    goto :goto_5

    .line 1152
    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v14

    if-nez v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 1153
    const-string v14, "Selection mode change from auto to manual"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1154
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 1155
    .restart local v12       #sIntent:Landroid/content/Intent;
    const-string v14, "com.android.phone"

    const-string v15, "com.mediatek.settings.NoNetworkPopUpService"

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1156
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 1006
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method protected hangupAndPowerOff()V
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 961
    const-string v0, "Hangup call ..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 962
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 963
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 964
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 970
    :cond_0
    return-void
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 2

    .prologue
    .line 2243
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRadioTechnology:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2811
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2816
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2779
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v1, :cond_1

    .line 2806
    :cond_0
    :goto_0
    return-void

    .line 2783
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 2786
    .local v0, newUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/UiccCardApplication;

    if-eq v1, v0, :cond_0

    .line 2787
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_3

    .line 2788
    const-string v1, "Removing stale icc objects."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2789
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 2790
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v1, :cond_2

    .line 2791
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 2793
    :cond_2
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 2794
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/UiccCardApplication;

    .line 2796
    :cond_3
    if-eqz v0, :cond_0

    .line 2797
    const-string v1, "New card found"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2798
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/UiccCardApplication;

    .line 2799
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 2800
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/UiccCardApplication;

    const/16 v2, 0x11

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2801
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v1, :cond_0

    .line 2802
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v2, 0x10

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public refreshSpnDisplay()V
    .locals 7

    .prologue
    .line 2961
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 2962
    .local v3, numeric:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2963
    .local v1, newAlphaLong:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2964
    .local v2, newAlphaShort:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2966
    .local v0, force:Z
    if-eqz v3, :cond_1

    .line 2967
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x1

    invoke-interface {v4, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->lookupOperatorName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2968
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->lookupOperatorName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 2969
    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I

    if-nez v4, :cond_0

    .line 2970
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v5, "gsm.operator.alpha"

    invoke-virtual {v4, v5, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2978
    :goto_0
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshSpnDisplay set mSimId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v1, v2, v3}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2981
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay(Z)V

    .line 2982
    return-void

    .line 2972
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v5, "gsm.operator.alpha.2"

    invoke-virtual {v4, v5, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2975
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method registerForPsRegistrants(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3178
    const-string v1, "GSM"

    const-string v2, "[DSAC DEB] registerForCsRegistrants"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3180
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ratPsChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 3181
    return-void
.end method

.method registerForRatRegistrants(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 3188
    const-string v1, "GSM"

    const-string v2, "[DSAC DEB] registerForRatRegistrants"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3189
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3190
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ratCsChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 3191
    return-void
.end method

.method public removeGprsConnTypeRetry()V
    .locals 1

    .prologue
    .line 3271
    const/16 v0, 0x34

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->removeMessages(I)V

    .line 3272
    return-void
.end method

.method public resetNotification()V
    .locals 5

    .prologue
    .line 2768
    const/16 v1, 0x3e7

    .line 2769
    .local v1, notificationId:I
    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2770
    const/16 v1, 0x2708

    .line 2772
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2773
    .local v0, context:Landroid/content/Context;
    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 2774
    .local v2, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2775
    return-void
.end method

.method public setAutoGprsAttach(I)V
    .locals 0
    .parameter "auto"

    .prologue
    .line 2914
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoGprsAttach:I

    .line 2915
    return-void
.end method

.method public setEverIVSR(Z)V
    .locals 3
    .parameter "value"

    .prologue
    .line 2894
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEverIVSR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2895
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEverIVSR:Z

    .line 2898
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 2899
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.IVSR_NOTIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2900
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "action"

    const-string/jumbo v2, "start"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2901
    const-string/jumbo v1, "simId"

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2907
    const-string v1, "broadcast ACTION_IVSR_NOTIFY intent"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2909
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2911
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public setGprsConnType(I)V
    .locals 5
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    .line 2918
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setGprsConnType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2919
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->removeGprsConnTypeRetry()V

    .line 2921
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 2922
    .local v0, dcTracker:Lcom/android/internal/telephony/DataConnectionTracker;
    if-nez p1, :cond_0

    .line 2924
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataEnabled(Z)Z

    .line 2931
    :goto_0
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsConnType:I

    .line 2933
    if-ne p1, v4, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2935
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 2936
    .local v1, mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPeerPhone()Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isGprsDetached(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2938
    const-string/jumbo v2, "setGprsConnType: Peer phone is not detached, skip set to always!!!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2944
    .end local v1           #mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :goto_1
    return-void

    .line 2927
    :cond_0
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataEnabled(Z)Z

    goto :goto_0

    .line 2943
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setGprsConnType(ILandroid/os/Message;)V

    goto :goto_1
.end method

.method protected setPowerStateToDesired()V
    .locals 3

    .prologue
    .line 898
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPowerStateToDesired mDesiredPowerState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " current radio state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFirstRadioChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFirstRadioChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 902
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_3

    .line 942
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFirstRadioChange:Z

    if-eqz v1, :cond_1

    .line 943
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_5

    .line 944
    const-string v1, "First radio changed but radio unavailable, not to set first radio change off"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 952
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-nez v1, :cond_2

    .line 953
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->removeGprsConnTypeRetry()V

    .line 955
    :cond_2
    return-void

    .line 918
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 933
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 934
    .local v0, dcTracker:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/DataConnectionTracker;)V

    goto :goto_0

    .line 935
    .end local v0           #dcTracker:Lcom/android/internal/telephony/DataConnectionTracker;
    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFirstRadioChange:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 946
    :cond_5
    const-string v1, "First radio changed and radio available, set first radio change off"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 947
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFirstRadioChange:Z

    goto :goto_1
.end method

.method public setRadioPowerOn()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2868
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2880
    .local v0, airplaneMode:I
    if-gtz v0, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    .line 2882
    const-string v1, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Final mDesiredPowerState in setRadioPowerOn. ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] airplaneMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFirstRadioChange:Z

    .line 2888
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRadioPowerOn mDesiredPowerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2889
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPowerOn(Landroid/os/Message;)V

    .line 2890
    return-void
.end method

.method unregisterForPsRegistrants(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3184
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ratPsChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3185
    return-void
.end method

.method unregisterForRatRegistrants(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 3194
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ratCsChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3195
    return-void
.end method

.method protected updateSpnDisplay()V
    .locals 1

    .prologue
    .line 2985
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay(Z)V

    .line 2986
    return-void
.end method

.method protected updateSpnDisplay(Z)V
    .locals 17
    .parameter "forceUpdate"

    .prologue
    .line 2990
    const/4 v11, 0x0

    .line 2991
    .local v11, simRecords:Lcom/android/internal/telephony/gsm/SIMRecords;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IccRecords;

    .line 2992
    .local v6, r:Lcom/android/internal/telephony/IccRecords;
    if-eqz v6, :cond_0

    move-object v11, v6

    .line 2993
    check-cast v11, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 2997
    :cond_0
    if-eqz v11, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/gsm/SIMRecords;->getDisplayRule(Ljava/lang/String;)I

    move-result v7

    .line 3000
    .local v7, rule:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v13

    .line 3002
    .local v13, strNumPlmn:Ljava/lang/String;
    if-eqz v11, :cond_f

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v12

    .line 3004
    .local v12, spn:Ljava/lang/String;
    :goto_1
    const/4 v8, 0x0

    .line 3007
    .local v8, sEons:Ljava/lang/String;
    const/4 v9, 0x0

    .line 3012
    .local v9, showPlmn:Z
    if-eqz v11, :cond_10

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v15}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v14, v15, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEonsIfExist(Ljava/lang/String;IZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 3017
    :goto_2
    const/4 v5, 0x0

    .line 3020
    .local v5, plmn:Ljava/lang/String;
    if-eqz v11, :cond_11

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 3023
    .local v4, mSimOperatorNumeric:Ljava/lang/String;
    :goto_3
    if-eqz v8, :cond_12

    .line 3024
    move-object v5, v8

    .line 3032
    :cond_1
    :goto_4
    if-eqz v5, :cond_2

    const-string v14, ""

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 3033
    :cond_2
    const-string v14, "GSM"

    const-string v15, "No matched EONS and No CPHS ONS"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3034
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    .line 3035
    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 3036
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v5

    .line 3039
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateAllOpertorInfo(Ljava/lang/String;)I

    .line 3042
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getState()I

    move-result v14

    if-eqz v14, :cond_5

    .line 3044
    const/4 v9, 0x1

    .line 3048
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10402e6

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3053
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateSpnDisplay mEmergencyOnly="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "getRadioState="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v15}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3056
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v14}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 3057
    const-string/jumbo v14, "updateSpnDisplay show mEmergencyOnly"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3060
    const/4 v9, 0x1

    .line 3063
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1040300

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3079
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->isDeviceIdAbnormal()I

    move-result v2

    .line 3080
    .local v2, imeiAbnormal:I
    const/4 v14, 0x1

    if-ne v2, v14, :cond_14

    .line 3081
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x205001b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3095
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsImeiLock:Z

    if-eqz v14, :cond_8

    .line 3096
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x2050066

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3104
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getState()I

    move-result v14

    if-nez v14, :cond_9

    .line 3105
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_16

    and-int/lit8 v14, v7, 0x2

    const/4 v15, 0x2

    if-ne v14, v15, :cond_16

    const/4 v9, 0x1

    .line 3113
    :cond_9
    :goto_6
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_17

    and-int/lit8 v14, v7, 0x1

    const/4 v15, 0x1

    if-ne v14, v15, :cond_17

    const/4 v10, 0x1

    .line 3118
    .local v10, showSpn:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getState()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_a

    .line 3119
    const/4 v10, 0x0

    .line 3120
    const/4 v12, 0x0

    .line 3126
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curShowPlmn:Z

    if-ne v9, v14, :cond_b

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curShowSpn:Z

    if-ne v10, v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    invoke-static {v12, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    invoke-static {v5, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_b

    if-eqz p1, :cond_d

    .line 3139
    :cond_b
    new-instance v3, Landroid/content/Intent;

    const-string v14, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v3, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3140
    .local v3, intent:Landroid/content/Intent;
    const-string/jumbo v14, "simId"

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimId:I

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3148
    const-string/jumbo v14, "showSpn"

    invoke-virtual {v3, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3149
    const-string/jumbo v14, "spn"

    invoke-virtual {v3, v14, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3150
    const-string/jumbo v14, "showPlmn"

    invoke-virtual {v3, v14, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3151
    const-string/jumbo v14, "plmn"

    invoke-virtual {v3, v14, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3152
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3155
    const/4 v14, 0x1

    if-ne v10, v14, :cond_c

    if-nez v9, :cond_c

    if-eqz v12, :cond_c

    .line 3157
    const-string/jumbo v14, "updateAllOpertorInfo with spn"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3158
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateAllOpertorInfo(Ljava/lang/String;)I

    .line 3161
    :cond_c
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " showSpn:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " spn:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " showPlmn:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " plmn:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " rule:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3170
    .end local v3           #intent:Landroid/content/Intent;
    :cond_d
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curShowSpn:Z

    .line 3172
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curShowPlmn:Z

    .line 3173
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    .line 3174
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    .line 3175
    return-void

    .line 2997
    .end local v2           #imeiAbnormal:I
    .end local v4           #mSimOperatorNumeric:Ljava/lang/String;
    .end local v5           #plmn:Ljava/lang/String;
    .end local v7           #rule:I
    .end local v8           #sEons:Ljava/lang/String;
    .end local v9           #showPlmn:Z
    .end local v10           #showSpn:Z
    .end local v12           #spn:Ljava/lang/String;
    .end local v13           #strNumPlmn:Ljava/lang/String;
    :cond_e
    const/4 v7, 0x2

    goto/16 :goto_0

    .line 3002
    .restart local v7       #rule:I
    .restart local v13       #strNumPlmn:Ljava/lang/String;
    :cond_f
    const-string v12, ""

    goto/16 :goto_1

    .line 3012
    .restart local v8       #sEons:Ljava/lang/String;
    .restart local v9       #showPlmn:Z
    .restart local v12       #spn:Ljava/lang/String;
    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 3013
    :catch_0
    move-exception v1

    .line 3014
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v14, "GSM"

    const-string v15, "Exception while getEonsIfExist. "

    invoke-static {v14, v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 3020
    .end local v1           #ex:Ljava/lang/RuntimeException;
    .restart local v5       #plmn:Ljava/lang/String;
    :cond_11
    const-string v4, ""

    goto/16 :goto_3

    .line 3026
    .restart local v4       #mSimOperatorNumeric:Ljava/lang/String;
    :cond_12
    if-eqz v13, :cond_1

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 3027
    const-string v14, "GSM"

    const-string v15, "Home PLMN, get CPHS ons"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    if-eqz v11, :cond_13

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMCPHSOns()Ljava/lang/String;

    move-result-object v5

    :goto_8
    goto/16 :goto_4

    :cond_13
    const-string v5, ""

    goto :goto_8

    .line 3085
    .restart local v2       #imeiAbnormal:I
    :cond_14
    const/4 v14, 0x2

    if-ne v2, v14, :cond_15

    .line 3086
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x205001c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_5

    .line 3090
    :cond_15
    if-nez v2, :cond_7

    .line 3091
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRilRadioTechnology:I

    invoke-interface {v14, v5, v15}, Lcom/mediatek/common/telephony/IServiceStateExt;->onUpdateSpnDisplay(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_5

    .line 3105
    :cond_16
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 3113
    :cond_17
    const/4 v10, 0x0

    goto/16 :goto_7
.end method
