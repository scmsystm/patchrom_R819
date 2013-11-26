.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = true

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x6

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_HIGHEST:I = 0x5

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String; = null

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1

.field private static mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;


# instance fields
.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmEcn0Qdbm:I

.field private mGsmRscpQdbm:I

.field private mGsmRssiQdbm:I

.field private mGsmSignalStrength:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mSimId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 89
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "none"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string/jumbo v3, "poor"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "moderate"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "good"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "great"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "highest"

    aput-object v3, v1, v2

    sput-object v1, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 119
    :try_start_0
    const-class v1, Lcom/mediatek/common/telephony/IServiceStateExt;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/IServiceStateExt;

    sput-object v1, Landroid/telephony/SignalStrength;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    new-instance v1, Landroid/telephony/SignalStrength$1;

    invoke-direct {v1}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v1, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 120
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 121
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 152
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 153
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 154
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 155
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 156
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 157
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 158
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 159
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 160
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 161
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 162
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 164
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .parameter "simId"

    .prologue
    const/16 v3, 0x63

    const/4 v2, 0x0

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 1064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1065
    iput p1, p0, Landroid/telephony/SignalStrength;->mSimId:I

    .line 1066
    iput v3, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1067
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1068
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1069
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1070
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1071
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1072
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1073
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1074
    iput v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1075
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1076
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1077
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1078
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1080
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 1081
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 1082
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 1083
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIZIII)V
    .locals 1
    .parameter "simId"
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteRssnr"
    .parameter "lteCqi"
    .parameter "gsm"
    .parameter "gsmRssiQdbm"
    .parameter "gsmRscpQdbm"
    .parameter "gsmEcn0Qdbm"

    .prologue
    .line 1094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1095
    iput p1, p0, Landroid/telephony/SignalStrength;->mSimId:I

    .line 1096
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1097
    iput p3, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1098
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1099
    iput p5, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1100
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1101
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1102
    iput p8, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1103
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1104
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1105
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1106
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1107
    iput p13, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1108
    iput-boolean p14, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1110
    move/from16 v0, p15

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 1111
    move/from16 v0, p16

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 1112
    move/from16 v0, p17

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 1113
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 0
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteRssnr"
    .parameter "lteCqi"
    .parameter "gsmFlag"

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 203
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZIII)V
    .locals 1
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteRssnr"
    .parameter "lteCqi"
    .parameter "gsmFlag"
    .parameter "gsmRssiQdbm"
    .parameter "gsmRscpQdbm"
    .parameter "gsmEcn0Qdbm"

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 221
    iput p14, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 222
    move/from16 v0, p15

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 223
    move/from16 v0, p16

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 224
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 14
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "gsmFlag"

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 239
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size of signalstrength parcel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 361
    return-void

    .line 360
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 250
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .parameter "gsmFlag"

    .prologue
    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 176
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 177
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 178
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 179
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 180
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 181
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 182
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 183
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 184
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 185
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 186
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 187
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 188
    return-void
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1173
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1053
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    return-void
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .parameter "m"

    .prologue
    .line 140
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 141
    .local v0, ret:Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 142
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 999
    const-string/jumbo v0, "simId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSimId:I

    .line 1001
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1002
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1003
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1004
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1005
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1006
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1007
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1008
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1009
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1010
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1011
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1012
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1013
    const-string v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1015
    const-string v0, "RssiQdbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 1016
    const-string v0, "RscpQdbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 1017
    const-string v0, "Ecn0Qdbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 1018
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 320
    iget v0, p1, Landroid/telephony/SignalStrength;->mSimId:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mSimId:I

    .line 322
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 323
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 324
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 325
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 326
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 327
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 328
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 329
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 330
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 331
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 332
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 333
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 334
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 335
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 336
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 337
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 338
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 939
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    .local v2, s:Landroid/telephony/SignalStrength;
    if-nez p1, :cond_1

    .line 948
    .end local v2           #s:Landroid/telephony/SignalStrength;
    :cond_0
    :goto_0
    return v3

    .line 940
    :catch_0
    move-exception v1

    .line 941
    .local v1, ex:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 948
    .end local v1           #ex:Ljava/lang/ClassCastException;
    .restart local v2       #s:Landroid/telephony/SignalStrength;
    :cond_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 1028
    const-string/jumbo v0, "simId"

    iget v1, p0, Landroid/telephony/SignalStrength;->mSimId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1030
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1031
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1032
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1033
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1034
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1035
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1036
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1037
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1038
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1039
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1040
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1041
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1042
    const-string v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1044
    const-string v0, "RssiQdbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1045
    const-string v0, "RscpQdbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1046
    const-string v0, "Ecn0Qdbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1047
    return-void
.end method

.method public getAsuLevel()I
    .locals 5

    .prologue
    .line 574
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1

    .line 575
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v3

    if-nez v3, :cond_0

    .line 576
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 594
    .local v0, asuLevel:I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAsuLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 595
    return v0

    .line 578
    .end local v0           #asuLevel:I
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    .restart local v0       #asuLevel:I
    goto :goto_0

    .line 581
    .end local v0           #asuLevel:I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    .line 582
    .local v1, cdmaAsuLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    .line 583
    .local v2, evdoAsuLevel:I
    if-nez v2, :cond_2

    .line 585
    move v0, v1

    .restart local v0       #asuLevel:I
    goto :goto_0

    .line 586
    .end local v0           #asuLevel:I
    :cond_2
    if-nez v1, :cond_3

    .line 588
    move v0, v2

    .restart local v0       #asuLevel:I
    goto :goto_0

    .line 591
    .end local v0           #asuLevel:I
    :cond_3
    if-ge v1, v2, :cond_4

    move v0, v1

    .restart local v0       #asuLevel:I
    :goto_1
    goto :goto_0

    .end local v0           #asuLevel:I
    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public getCdmaAsuLevel()I
    .locals 8

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    .line 725
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 726
    .local v1, cdmaDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .line 730
    .local v2, cdmaEcio:I
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_0

    const/16 v0, 0x10

    .line 738
    .local v0, cdmaAsuLevel:I
    :goto_0
    if-lt v2, v7, :cond_5

    const/16 v3, 0x10

    .line 745
    .local v3, ecioAsuLevel:I
    :goto_1
    if-ge v0, v3, :cond_a

    move v4, v0

    .line 746
    .local v4, level:I
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCdmaAsuLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 747
    return v4

    .line 731
    .end local v0           #cdmaAsuLevel:I
    .end local v3           #ecioAsuLevel:I
    .end local v4           #level:I
    :cond_0
    const/16 v5, -0x52

    if-lt v1, v5, :cond_1

    const/16 v0, 0x8

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 732
    .end local v0           #cdmaAsuLevel:I
    :cond_1
    if-lt v1, v7, :cond_2

    const/4 v0, 0x4

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 733
    .end local v0           #cdmaAsuLevel:I
    :cond_2
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_3

    const/4 v0, 0x2

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 734
    .end local v0           #cdmaAsuLevel:I
    :cond_3
    if-lt v1, v6, :cond_4

    const/4 v0, 0x1

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 735
    .end local v0           #cdmaAsuLevel:I
    :cond_4
    const/16 v0, 0x63

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 739
    :cond_5
    if-lt v2, v6, :cond_6

    const/16 v3, 0x8

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 740
    .end local v3           #ecioAsuLevel:I
    :cond_6
    const/16 v5, -0x73

    if-lt v2, v5, :cond_7

    const/4 v3, 0x4

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 741
    .end local v3           #ecioAsuLevel:I
    :cond_7
    const/16 v5, -0x82

    if-lt v2, v5, :cond_8

    const/4 v3, 0x2

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 742
    .end local v3           #ecioAsuLevel:I
    :cond_8
    const/16 v5, -0x96

    if-lt v2, v5, :cond_9

    const/4 v3, 0x1

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 743
    .end local v3           #ecioAsuLevel:I
    :cond_9
    const/16 v3, 0x63

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    :cond_a
    move v4, v3

    .line 745
    goto :goto_2
.end method

.method public getCdmaDbm()I
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 7

    .prologue
    .line 696
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 697
    .local v0, cdmaDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 701
    .local v1, cdmaEcio:I
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_0

    const/4 v3, 0x4

    .line 708
    .local v3, levelDbm:I
    :goto_0
    const/16 v5, -0x5a

    if-lt v1, v5, :cond_4

    const/4 v4, 0x4

    .line 714
    .local v4, levelEcio:I
    :goto_1
    if-ge v3, v4, :cond_8

    move v2, v3

    .line 715
    .local v2, level:I
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCdmaLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 716
    return v2

    .line 702
    .end local v2           #level:I
    .end local v3           #levelDbm:I
    .end local v4           #levelEcio:I
    :cond_0
    const/16 v5, -0x55

    if-lt v0, v5, :cond_1

    const/4 v3, 0x3

    .restart local v3       #levelDbm:I
    goto :goto_0

    .line 703
    .end local v3           #levelDbm:I
    :cond_1
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_2

    const/4 v3, 0x2

    .restart local v3       #levelDbm:I
    goto :goto_0

    .line 704
    .end local v3           #levelDbm:I
    :cond_2
    const/16 v5, -0x64

    if-lt v0, v5, :cond_3

    const/4 v3, 0x1

    .restart local v3       #levelDbm:I
    goto :goto_0

    .line 705
    .end local v3           #levelDbm:I
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #levelDbm:I
    goto :goto_0

    .line 709
    :cond_4
    const/16 v5, -0x6e

    if-lt v1, v5, :cond_5

    const/4 v4, 0x3

    .restart local v4       #levelEcio:I
    goto :goto_1

    .line 710
    .end local v4           #levelEcio:I
    :cond_5
    const/16 v5, -0x82

    if-lt v1, v5, :cond_6

    const/4 v4, 0x2

    .restart local v4       #levelEcio:I
    goto :goto_1

    .line 711
    .end local v4           #levelEcio:I
    :cond_6
    const/16 v5, -0x96

    if-lt v1, v5, :cond_7

    const/4 v4, 0x1

    .restart local v4       #levelEcio:I
    goto :goto_1

    .line 712
    .end local v4           #levelEcio:I
    :cond_7
    const/4 v4, 0x0

    .restart local v4       #levelEcio:I
    goto :goto_1

    :cond_8
    move v2, v4

    .line 714
    goto :goto_2
.end method

.method public getDbm()I
    .locals 5

    .prologue
    const/16 v4, -0x78

    .line 606
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 607
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v3

    if-nez v3, :cond_0

    .line 608
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    .line 619
    .local v1, dBm:I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDbm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 620
    .end local v1           #dBm:I
    :goto_1
    return v1

    .line 610
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .restart local v1       #dBm:I
    goto :goto_0

    .line 613
    .end local v1           #dBm:I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 614
    .local v0, cdmaDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    .line 616
    .local v2, evdoDbm:I
    if-ne v2, v4, :cond_3

    .end local v0           #cdmaDbm:I
    :cond_2
    :goto_2
    move v1, v0

    goto :goto_1

    .restart local v0       #cdmaDbm:I
    :cond_3
    if-ne v0, v4, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    if-lt v0, v2, :cond_2

    move v0, v2

    goto :goto_2
.end method

.method public getEvdoAsuLevel()I
    .locals 7

    .prologue
    .line 784
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 785
    .local v0, evdoDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 789
    .local v1, evdoSnr:I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/16 v3, 0x10

    .line 796
    .local v3, levelEvdoDbm:I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_5

    const/16 v4, 0x10

    .line 803
    .local v4, levelEvdoSnr:I
    :goto_1
    if-ge v3, v4, :cond_a

    move v2, v3

    .line 804
    .local v2, level:I
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEvdoAsuLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 805
    return v2

    .line 790
    .end local v2           #level:I
    .end local v3           #levelEvdoDbm:I
    .end local v4           #levelEvdoSnr:I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/16 v3, 0x8

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 791
    .end local v3           #levelEvdoDbm:I
    :cond_1
    const/16 v5, -0x55

    if-lt v0, v5, :cond_2

    const/4 v3, 0x4

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 792
    .end local v3           #levelEvdoDbm:I
    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 793
    .end local v3           #levelEvdoDbm:I
    :cond_3
    const/16 v5, -0x69

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 794
    .end local v3           #levelEvdoDbm:I
    :cond_4
    const/16 v3, 0x63

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 797
    :cond_5
    const/4 v5, 0x6

    if-lt v1, v5, :cond_6

    const/16 v4, 0x8

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 798
    .end local v4           #levelEvdoSnr:I
    :cond_6
    const/4 v5, 0x5

    if-lt v1, v5, :cond_7

    const/4 v4, 0x4

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 799
    .end local v4           #levelEvdoSnr:I
    :cond_7
    const/4 v5, 0x3

    if-lt v1, v5, :cond_8

    const/4 v4, 0x2

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 800
    .end local v4           #levelEvdoSnr:I
    :cond_8
    const/4 v5, 0x1

    if-lt v1, v5, :cond_9

    const/4 v4, 0x1

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 801
    .end local v4           #levelEvdoSnr:I
    :cond_9
    const/16 v4, 0x63

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    :cond_a
    move v2, v4

    .line 803
    goto :goto_2
.end method

.method public getEvdoDbm()I
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .prologue
    .line 501
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 7

    .prologue
    .line 756
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 757
    .local v0, evdoDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 761
    .local v1, evdoSnr:I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/4 v3, 0x4

    .line 767
    .local v3, levelEvdoDbm:I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_4

    const/4 v4, 0x4

    .line 773
    .local v4, levelEvdoSnr:I
    :goto_1
    if-ge v3, v4, :cond_8

    move v2, v3

    .line 774
    .local v2, level:I
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEvdoLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 775
    return v2

    .line 762
    .end local v2           #level:I
    .end local v3           #levelEvdoDbm:I
    .end local v4           #levelEvdoSnr:I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/4 v3, 0x3

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 763
    .end local v3           #levelEvdoDbm:I
    :cond_1
    const/16 v5, -0x5a

    if-lt v0, v5, :cond_2

    const/4 v3, 0x2

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 764
    .end local v3           #levelEvdoDbm:I
    :cond_2
    const/16 v5, -0x69

    if-lt v0, v5, :cond_3

    const/4 v3, 0x1

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 765
    .end local v3           #levelEvdoDbm:I
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 768
    :cond_4
    const/4 v5, 0x5

    if-lt v1, v5, :cond_5

    const/4 v4, 0x3

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 769
    .end local v4           #levelEvdoSnr:I
    :cond_5
    const/4 v5, 0x3

    if-lt v1, v5, :cond_6

    const/4 v4, 0x2

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 770
    .end local v4           #levelEvdoSnr:I
    :cond_6
    const/4 v5, 0x1

    if-lt v1, v5, :cond_7

    const/4 v4, 0x1

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 771
    .end local v4           #levelEvdoSnr:I
    :cond_7
    const/4 v4, 0x0

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    :cond_8
    move v2, v4

    .line 773
    goto :goto_2
.end method

.method public getEvdoSnr()I
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 3

    .prologue
    .line 685
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 686
    .local v0, level:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGsmAsuLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 687
    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 631
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v3

    .line 632
    .local v3, gsmSignalStrength:I
    const/16 v5, 0x63

    if-ne v3, v5, :cond_0

    move v0, v4

    .line 633
    .local v0, asu:I
    :goto_0
    if-eq v0, v4, :cond_1

    .line 635
    :try_start_0
    sget-object v4, Landroid/telephony/SignalStrength;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    iget v5, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-interface {v4, v5, v0}, Lcom/mediatek/common/telephony/IServiceStateExt;->mapGsmSignalDbm(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 642
    .local v1, dBm:I
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getGsmDbm="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 643
    return v1

    .end local v0           #asu:I
    .end local v1           #dBm:I
    :cond_0
    move v0, v3

    .line 632
    goto :goto_0

    .line 636
    .restart local v0       #asu:I
    :catch_0
    move-exception v2

    .line 637
    .local v2, e:Ljava/lang/Exception;
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v1, v4, -0x71

    .line 638
    .restart local v1       #dBm:I
    goto :goto_1

    .line 640
    .end local v1           #dBm:I
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v1, -0x1

    .restart local v1       #dBm:I
    goto :goto_1
.end method

.method public getGsmEcn0Qdbm()I
    .locals 1

    .prologue
    .line 1143
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    return v0
.end method

.method public getGsmLevel()I
    .locals 5

    .prologue
    .line 658
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 662
    .local v0, asu:I
    :try_start_0
    sget-object v3, Landroid/telephony/SignalStrength;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-interface {v3, v0}, Lcom/mediatek/common/telephony/IServiceStateExt;->mapGsmSignalLevel(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 671
    .local v2, level:I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGsmLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 672
    return v2

    .line 663
    .end local v2           #level:I
    :catch_0
    move-exception v1

    .line 664
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x2

    if-le v0, v3, :cond_0

    const/16 v3, 0x63

    if-ne v0, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    .restart local v2       #level:I
    goto :goto_0

    .line 665
    .end local v2           #level:I
    :cond_1
    const/16 v3, 0xc

    if-lt v0, v3, :cond_2

    const/4 v2, 0x4

    .restart local v2       #level:I
    goto :goto_0

    .line 666
    .end local v2           #level:I
    :cond_2
    const/16 v3, 0x8

    if-lt v0, v3, :cond_3

    const/4 v2, 0x3

    .restart local v2       #level:I
    goto :goto_0

    .line 667
    .end local v2           #level:I
    :cond_3
    const/4 v3, 0x5

    if-lt v0, v3, :cond_4

    const/4 v2, 0x2

    .restart local v2       #level:I
    goto :goto_0

    .line 668
    .end local v2           #level:I
    :cond_4
    const/4 v2, 0x1

    .restart local v2       #level:I
    goto :goto_0
.end method

.method public getGsmRscpQdbm()I
    .locals 1

    .prologue
    .line 1136
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    return v0
.end method

.method public getGsmRssiQdbm()I
    .locals 1

    .prologue
    .line 1129
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    return v0
.end method

.method public getGsmSignalStrength()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getGsmSignalStrengthDbm()I
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 1150
    const/4 v1, -0x1

    .line 1151
    .local v1, dBm:I
    iget v3, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1152
    .local v3, gsmSignalStrength:I
    const/16 v5, 0x63

    if-ne v3, v5, :cond_1

    move v0, v4

    .line 1154
    .local v0, asu:I
    :goto_0
    if-eq v0, v4, :cond_0

    .line 1156
    :try_start_0
    sget-object v4, Landroid/telephony/SignalStrength;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    iget v5, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-interface {v4, v5, v0}, Lcom/mediatek/common/telephony/IServiceStateExt;->mapGsmSignalDbm(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1161
    :cond_0
    :goto_1
    return v1

    .end local v0           #asu:I
    :cond_1
    move v0, v3

    .line 1152
    goto :goto_0

    .line 1157
    .restart local v0       #asu:I
    :catch_0
    move-exception v2

    .line 1158
    .local v2, e:Ljava/lang/Exception;
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v1, v4, -0x71

    goto :goto_1
.end method

.method public getLevel()I
    .locals 5

    .prologue
    .line 544
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1

    .line 545
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 546
    .local v2, level:I
    if-nez v2, :cond_0

    .line 547
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    .line 563
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 564
    return v2

    .line 550
    .end local v2           #level:I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 551
    .local v0, cdmaLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 552
    .local v1, evdoLevel:I
    if-nez v1, :cond_2

    .line 554
    move v2, v0

    .restart local v2       #level:I
    goto :goto_0

    .line 555
    .end local v2           #level:I
    :cond_2
    if-nez v0, :cond_3

    .line 557
    move v2, v1

    .restart local v2       #level:I
    goto :goto_0

    .line 560
    .end local v2           #level:I
    :cond_3
    if-ge v0, v1, :cond_4

    move v2, v0

    .restart local v2       #level:I
    :goto_1
    goto :goto_0

    .end local v2           #level:I
    :cond_4
    move v2, v1

    goto :goto_1
.end method

.method public getLteAsuLevel()I
    .locals 4

    .prologue
    .line 888
    const/16 v0, 0x63

    .line 889
    .local v0, lteAsuLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 903
    .local v1, lteDbm:I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 905
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lte Asu level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 906
    return v0

    .line 904
    :cond_0
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    .prologue
    .line 814
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 829
    const/4 v1, 0x0

    .local v1, rssiIconLevel:I
    const/4 v0, -0x1

    .local v0, rsrpIconLevel:I
    const/4 v2, -0x1

    .line 831
    .local v2, snrIconLevel:I
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x2c

    if-le v3, v4, :cond_3

    const/4 v0, -0x1

    .line 844
    :cond_0
    :goto_0
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x12c

    if-le v3, v4, :cond_8

    const/4 v2, -0x1

    .line 852
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLTELevel - rsrp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " snr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rsrpIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " snrIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 856
    if-eq v2, v5, :cond_e

    if-eq v0, v5, :cond_e

    .line 862
    if-ge v0, v2, :cond_d

    .line 877
    .end local v0           #rsrpIconLevel:I
    :cond_2
    :goto_2
    return v0

    .line 832
    .restart local v0       #rsrpIconLevel:I
    :cond_3
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x55

    if-lt v3, v4, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    .line 833
    :cond_4
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x5f

    if-lt v3, v4, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    .line 834
    :cond_5
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x69

    if-lt v3, v4, :cond_6

    const/4 v0, 0x2

    goto :goto_0

    .line 835
    :cond_6
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x73

    if-lt v3, v4, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    .line 836
    :cond_7
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x8c

    if-lt v3, v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 845
    :cond_8
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x82

    if-lt v3, v4, :cond_9

    const/4 v2, 0x4

    goto :goto_1

    .line 846
    :cond_9
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x2d

    if-lt v3, v4, :cond_a

    const/4 v2, 0x3

    goto :goto_1

    .line 847
    :cond_a
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_b

    const/4 v2, 0x2

    goto :goto_1

    .line 848
    :cond_b
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0x1e

    if-lt v3, v4, :cond_c

    const/4 v2, 0x1

    goto/16 :goto_1

    .line 849
    :cond_c
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0xc8

    if-lt v3, v4, :cond_1

    .line 850
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_d
    move v0, v2

    .line 862
    goto :goto_2

    .line 865
    :cond_e
    if-eq v2, v5, :cond_f

    move v0, v2

    goto :goto_2

    .line 867
    :cond_f
    if-ne v0, v5, :cond_2

    .line 870
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0x3f

    if-le v3, v4, :cond_11

    const/4 v1, 0x0

    .line 875
    :cond_10
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLTELevel - rssi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rssiIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v0, v1

    .line 877
    goto/16 :goto_2

    .line 871
    :cond_11
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_12

    const/4 v1, 0x4

    goto :goto_3

    .line 872
    :cond_12
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_13

    const/4 v1, 0x3

    goto :goto_3

    .line 873
    :cond_13
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_14

    const/4 v1, 0x2

    goto :goto_3

    .line 874
    :cond_14
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v3, :cond_10

    const/4 v1, 0x1

    goto :goto_3
.end method

.method public getLteRsrp()I
    .locals 1

    .prologue
    .line 518
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 523
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrenght()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public getMySimId()I
    .locals 1

    .prologue
    .line 1122
    iget v0, p0, Landroid/telephony/SignalStrength;->mSimId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 921
    const/16 v0, 0x1f

    .line 922
    .local v0, primeNum:I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(IIIIIIIIIIIIZ)V
    .locals 2
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteRssnr"
    .parameter "lteCqi"
    .parameter "gsm"

    .prologue
    .line 299
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 300
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 301
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 302
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 303
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 304
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 305
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 306
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 307
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 308
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 309
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 310
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 311
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public initialize(IIIIIIIZ)V
    .locals 14
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "gsm"

    .prologue
    .line 270
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 273
    return-void
.end method

.method public isGsm()Z
    .locals 1

    .prologue
    .line 913
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public setGsm(Z)V
    .locals 0
    .parameter "gsmFlag"

    .prologue
    .line 458
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 459
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Landroid/telephony/SignalStrength;->mSimId:I

    if-nez v0, :cond_0

    const-string v0, "SIM1"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_1

    const-string v0, "gsm|lte"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "SIM2"

    goto/16 :goto_0

    :cond_1
    const-string v0, "cdma"

    goto :goto_1
.end method

.method public validateInput()V
    .locals 8

    .prologue
    const/16 v2, 0x63

    const/4 v7, 0x3

    const/4 v4, -0x1

    const/16 v3, -0x78

    const v5, 0x7fffffff

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Signal before validate="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 418
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ltz v1, :cond_5

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    :goto_0
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 422
    const/4 v0, 0x0

    .line 424
    .local v0, NetworkType:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget v6, p0, Landroid/telephony/SignalStrength;->mSimId:I

    invoke-virtual {v1, v6}, Landroid/telephony/TelephonyManager;->getNetworkTypeGemini(I)I

    move-result v0

    .line 428
    if-ge v0, v7, :cond_0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    if-gez v1, :cond_0

    .line 429
    const/4 v1, 0x0

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 432
    :cond_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v1, :cond_6

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v1, v1

    :goto_1
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 433
    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v1, :cond_7

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v1, v1

    :goto_2
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 435
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v1, :cond_1

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v3, v1

    :cond_1
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 436
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-lez v1, :cond_8

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v1, v1

    :goto_3
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 437
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-lez v1, :cond_2

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/16 v3, 0x8

    if-gt v1, v3, :cond_2

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :cond_2
    iput v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 440
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v1, :cond_3

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    :cond_3
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 441
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, 0x2c

    if-lt v1, v2, :cond_9

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, 0x8c

    if-gt v1, v2, :cond_9

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v1, v1

    :goto_4
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 442
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-lt v1, v7, :cond_a

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v2, 0x14

    if-gt v1, v2, :cond_a

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v1, v1

    :goto_5
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 443
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v2, -0xc8

    if-lt v1, v2, :cond_4

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v2, 0x12c

    if-gt v1, v2, :cond_4

    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    :cond_4
    iput v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signal after validate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 447
    return-void

    .end local v0           #NetworkType:I
    :cond_5
    move v1, v2

    .line 418
    goto/16 :goto_0

    .restart local v0       #NetworkType:I
    :cond_6
    move v1, v3

    .line 432
    goto :goto_1

    .line 433
    :cond_7
    const/16 v1, -0xa0

    goto :goto_2

    :cond_8
    move v1, v4

    .line 436
    goto :goto_3

    :cond_9
    move v1, v5

    .line 441
    goto :goto_4

    :cond_a
    move v1, v5

    .line 442
    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 367
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    return-void

    .line 379
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
