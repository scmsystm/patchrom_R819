.class public Lcom/android/internal/telephony/DefaultSIMSettings;
.super Ljava/lang/Object;
.source "DefaultSIMSettings.java"


# static fields
.field public static final ACTION_ON_SIM_DETECTED:Ljava/lang/String; = "ACTION_ON_SIM_DETECTED"

.field public static final EXTRA_VALUE_NEW_SIM:Ljava/lang/String; = "NEW"

.field public static final EXTRA_VALUE_REMOVE_SIM:Ljava/lang/String; = "REMOVE"

.field public static final EXTRA_VALUE_SWAP_SIM:Ljava/lang/String; = "SWAP"

.field public static final INTENT_KEY_DETECT_STATUS:Ljava/lang/String; = "simDetectStatus"

.field public static final INTENT_KEY_NEW_SIM_SLOT:Ljava/lang/String; = "newSIMSlot"

.field public static final INTENT_KEY_NEW_SIM_STATUS:Ljava/lang/String; = "newSIMStatus"

.field public static final INTENT_KEY_SIM_COUNT:Ljava/lang/String; = "simCount"

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field private static final STATUS_DUAL_SIM_INSERTED:I = 0x3

.field private static final STATUS_NO_SIM_INSERTED:I = 0x0

.field private static final STATUS_SIM1_INSERTED:I = 0x1

.field private static final STATUS_SIM2_INSERTED:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static broadCastDefaultSIMRemoved(I)V
    .locals 3
    .parameter "nSIMCount"

    .prologue
    .line 560
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SIM_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 561
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "simDetectStatus"

    const-string v2, "REMOVE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    const-string/jumbo v1, "simCount"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCast intent ACTION_SIM_DETECTED [REMOVE, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 564
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 565
    return-void
.end method

.method public static broadCastNewSIMDetected(II)V
    .locals 3
    .parameter "nSIMCount"
    .parameter "nNewSIMSlot"

    .prologue
    .line 551
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SIM_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 552
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "simDetectStatus"

    const-string v2, "NEW"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    const-string/jumbo v1, "simCount"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 554
    const-string/jumbo v1, "newSIMSlot"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCast intent ACTION_SIM_DETECTED [NEW, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 556
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 557
    return-void
.end method

.method public static broadCastSIMInsertedStatus(I)V
    .locals 3
    .parameter "nSIMInsertStatus"

    .prologue
    .line 576
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_INSERTED_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 577
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "simCount"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCast intent ACTION_SIM_INSERTED_STATUS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 579
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 580
    return-void
.end method

.method public static broadCastSIMSwapped(I)V
    .locals 3
    .parameter "nSIMCount"

    .prologue
    .line 568
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SIM_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 569
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "simDetectStatus"

    const-string v2, "SWAP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    const-string/jumbo v1, "simCount"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCast intent ACTION_SIM_DETECTED [SWAP, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 572
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 573
    return-void
.end method

.method private static isSIMRemoved(JJJ)Z
    .locals 3
    .parameter "defSIMId"
    .parameter "curSIM1"
    .parameter "curSIM2"

    .prologue
    const/4 v0, 0x0

    .line 534
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gtz v1, :cond_1

    .line 539
    :cond_0
    :goto_0
    return v0

    .line 536
    :cond_1
    cmp-long v1, p0, p2

    if-eqz v1, :cond_0

    cmp-long v1, p0, p4

    if-eqz v1, :cond_0

    .line 537
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 583
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DefaultSIMSettings] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    return-void
.end method

.method public static declared-synchronized onAllIccidQueryComplete(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 50
    .parameter "context"
    .parameter "phone"
    .parameter "iccid1"
    .parameter "iccid2"
    .parameter "is3GSwitched"

    .prologue
    .line 88
    const-class v49, Lcom/android/internal/telephony/DefaultSIMSettings;

    monitor-enter v49

    :try_start_0
    const-string/jumbo v11, "onAllIccidQueryComplete start"

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 90
    .local v19, contentResolver:Landroid/content/ContentResolver;
    const/16 v36, 0x0

    .line 91
    .local v36, oldIccIdInSlot1:Ljava/lang/String;
    const/16 v37, 0x0

    .line 92
    .local v37, oldIccIdInSlot2:Ljava/lang/String;
    if-nez p2, :cond_0

    const-string p2, ""

    .line 93
    :cond_0
    if-nez p3, :cond_1

    const-string p3, ""

    .line 94
    :cond_1
    const-string v11, ""

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    const/16 v28, 0x1

    .line 95
    .local v28, isSIM1Inserted:Z
    :goto_0
    const-string v11, ""

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-nez v11, :cond_e

    const/16 v29, 0x1

    .line 97
    .local v29, isSIM2Inserted:Z
    :goto_1
    const/16 v46, 0x0

    .line 99
    .local v46, telephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    :try_start_1
    const-class v11, Lcom/mediatek/common/telephony/ITelephonyExt;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    move-object/from16 v46, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    :goto_2
    const/4 v11, 0x0

    :try_start_2
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v38

    .line 105
    .local v38, oldSimInfo1:Landroid/provider/Telephony$SIMInfo;
    if-eqz v38, :cond_f

    .line 106
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 107
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onAllIccidQueryComplete old IccId In Slot0 is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 108
    if-eqz v28, :cond_2

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 109
    :cond_2
    new-instance v48, Landroid/content/ContentValues;

    const/4 v11, 0x1

    move-object/from16 v0, v48

    invoke-direct {v0, v11}, Landroid/content/ContentValues;-><init>(I)V

    .line 110
    .local v48, value:Landroid/content/ContentValues;
    const-string/jumbo v11, "slot"

    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v48

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    sget-object v11, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v38

    iget-wide v12, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v48

    invoke-virtual {v0, v11, v1, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 113
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onAllIccidQueryComplete reset Slot0 to -1, iccid1 = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 119
    .end local v48           #value:Landroid/content/ContentValues;
    :cond_3
    :goto_3
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v39

    .line 120
    .local v39, oldSimInfo2:Landroid/provider/Telephony$SIMInfo;
    if-eqz v39, :cond_10

    .line 121
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    move-object/from16 v37, v0

    .line 122
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onAllIccidQueryComplete old IccId In Slot1 is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 123
    if-eqz v29, :cond_4

    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 124
    :cond_4
    new-instance v48, Landroid/content/ContentValues;

    const/4 v11, 0x1

    move-object/from16 v0, v48

    invoke-direct {v0, v11}, Landroid/content/ContentValues;-><init>(I)V

    .line 125
    .restart local v48       #value:Landroid/content/ContentValues;
    const-string/jumbo v11, "slot"

    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v48

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    sget-object v11, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v39

    iget-wide v12, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v48

    invoke-virtual {v0, v11, v1, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 128
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onAllIccidQueryComplete reset Slot1 to -1, iccid2 = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 135
    .end local v48           #value:Landroid/content/ContentValues;
    :cond_5
    :goto_4
    if-nez v36, :cond_6

    const-string v36, ""

    .line 136
    :cond_6
    if-nez v37, :cond_7

    const-string v37, ""

    .line 139
    :cond_7
    const/16 v31, 0x0

    .line 140
    .local v31, nNewCardCount:I
    const/16 v32, 0x0

    .line 141
    .local v32, nNewSIMStatus:I
    if-eqz p2, :cond_8

    const-string v11, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 142
    :cond_8
    const-string/jumbo v11, "onAllIccidQueryComplete No SIM inserted in Slot 0, set the slot for Removed SIM to NONE "

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 161
    :cond_9
    :goto_5
    if-eqz p3, :cond_a

    const-string v11, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 162
    :cond_a
    const-string/jumbo v11, "onAllIccidQueryComplete No SIM inserted in Slot 1, set the slot for Removed SIM to NONE "

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 179
    :cond_b
    :goto_6
    const-wide/16 v5, -0x3

    .line 180
    .local v5, simIdForSlot1:J
    const-wide/16 v7, -0x3

    .line 181
    .local v7, simIdForSlot2:J
    invoke-static/range {p0 .. p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v44

    .line 182
    .local v44, simInfos:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    if-nez v44, :cond_19

    const/16 v33, 0x0

    .line 183
    .local v33, nSIMCount:I
    :goto_7
    const/16 v26, 0x0

    .local v26, i:I
    :goto_8
    move/from16 v0, v26

    move/from16 v1, v33

    if-ge v0, v1, :cond_1b

    .line 184
    move-object/from16 v0, v44

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/provider/Telephony$SIMInfo;

    .line 185
    .local v47, temp:Landroid/provider/Telephony$SIMInfo;
    move-object/from16 v0, v47

    iget v11, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-nez v11, :cond_1a

    .line 186
    move-object/from16 v0, v47

    iget-wide v5, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    .line 183
    :cond_c
    :goto_9
    add-int/lit8 v26, v26, 0x1

    goto :goto_8

    .line 94
    .end local v5           #simIdForSlot1:J
    .end local v7           #simIdForSlot2:J
    .end local v26           #i:I
    .end local v28           #isSIM1Inserted:Z
    .end local v29           #isSIM2Inserted:Z
    .end local v31           #nNewCardCount:I
    .end local v32           #nNewSIMStatus:I
    .end local v33           #nSIMCount:I
    .end local v38           #oldSimInfo1:Landroid/provider/Telephony$SIMInfo;
    .end local v39           #oldSimInfo2:Landroid/provider/Telephony$SIMInfo;
    .end local v44           #simInfos:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    .end local v46           #telephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    .end local v47           #temp:Landroid/provider/Telephony$SIMInfo;
    :cond_d
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 95
    .restart local v28       #isSIM1Inserted:Z
    :cond_e
    const/16 v29, 0x0

    goto/16 :goto_1

    .line 100
    .restart local v29       #isSIM2Inserted:Z
    .restart local v46       #telephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    :catch_0
    move-exception v22

    .line 101
    .local v22, e:Ljava/lang/Exception;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 88
    .end local v19           #contentResolver:Landroid/content/ContentResolver;
    .end local v22           #e:Ljava/lang/Exception;
    .end local v28           #isSIM1Inserted:Z
    .end local v29           #isSIM2Inserted:Z
    .end local v36           #oldIccIdInSlot1:Ljava/lang/String;
    .end local v37           #oldIccIdInSlot2:Ljava/lang/String;
    .end local v46           #telephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    .end local p1
    :catchall_0
    move-exception v11

    monitor-exit v49

    throw v11

    .line 116
    .restart local v19       #contentResolver:Landroid/content/ContentResolver;
    .restart local v28       #isSIM1Inserted:Z
    .restart local v29       #isSIM2Inserted:Z
    .restart local v36       #oldIccIdInSlot1:Ljava/lang/String;
    .restart local v37       #oldIccIdInSlot2:Ljava/lang/String;
    .restart local v38       #oldSimInfo1:Landroid/provider/Telephony$SIMInfo;
    .restart local v46       #telephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    .restart local p1
    :cond_f
    :try_start_3
    const-string/jumbo v11, "onAllIccidQueryComplete No sim in slot0 for last time "

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 131
    .restart local v39       #oldSimInfo2:Landroid/provider/Telephony$SIMInfo;
    :cond_10
    const-string/jumbo v11, "onAllIccidQueryComplete No sim in slot1 for last time "

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    goto :goto_4

    .line 144
    .restart local v31       #nNewCardCount:I
    .restart local v32       #nNewSIMStatus:I
    :cond_11
    const-string v11, "ff"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_12

    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 147
    :cond_12
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    .line 148
    const-string/jumbo v11, "onAllIccidQueryComplete special SIM with invalid ICCID is inserted in slot1"

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 152
    :cond_13
    :goto_a
    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 153
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 155
    add-int/lit8 v31, v31, 0x1

    .line 156
    or-int/lit8 v32, v32, 0x1

    goto/16 :goto_5

    .line 149
    :cond_14
    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13

    .line 150
    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v11}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    goto :goto_a

    .line 164
    :cond_15
    const-string v11, "ff"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_16

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 165
    :cond_16
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "2"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    .line 166
    const-string/jumbo v11, "onAllIccidQueryComplete special SIM with invalid ICCID is inserted in slot2"

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 170
    :cond_17
    :goto_b
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 171
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 173
    add-int/lit8 v31, v31, 0x1

    .line 174
    or-int/lit8 v32, v32, 0x2

    goto/16 :goto_6

    .line 167
    :cond_18
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_17

    .line 168
    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1, v11}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    goto :goto_b

    .line 182
    .restart local v5       #simIdForSlot1:J
    .restart local v7       #simIdForSlot2:J
    .restart local v44       #simInfos:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    :cond_19
    invoke-interface/range {v44 .. v44}, Ljava/util/List;->size()I

    move-result v33

    goto/16 :goto_7

    .line 187
    .restart local v26       #i:I
    .restart local v33       #nSIMCount:I
    .restart local v47       #temp:Landroid/provider/Telephony$SIMInfo;
    :cond_1a
    move-object/from16 v0, v47

    iget v11, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    .line 188
    move-object/from16 v0, v47

    iget-wide v7, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    goto/16 :goto_9

    .line 191
    .end local v47           #temp:Landroid/provider/Telephony$SIMInfo;
    :cond_1b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onAllIccidQueryComplete simIdForSlot ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 193
    if-lez v31, :cond_1c

    .line 194
    const-string/jumbo v11, "onAllIccidQueryComplete New SIM detected. "

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 195
    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->setColorForNewSIM(Ljava/util/List;Landroid/content/Context;)V

    .line 196
    const-string v11, "airplane_mode_on"

    const/4 v12, 0x0

    move-object/from16 v0, v19

    invoke-static {v0, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 197
    .local v17, airplaneMode:I
    if-lez v17, :cond_28

    .line 198
    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->setDefaultNameForAllNewSIM(Ljava/util/List;Landroid/content/Context;)V

    .line 207
    .end local v17           #airplaneMode:I
    :cond_1c
    :goto_c
    const-string/jumbo v11, "video_call_sim_setting"

    const-wide/16 v12, -0x5

    move-object/from16 v0, v19

    invoke-static {v0, v11, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v40

    .line 208
    .local v40, oldVTDefaultSIM:J
    const-string/jumbo v11, "voice_call_sim_setting"

    const-wide/16 v12, -0x5

    move-object/from16 v0, v19

    invoke-static {v0, v11, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 210
    .local v3, oldVoiceCallDefaultSIM:J
    const-string/jumbo v11, "sms_sim_setting"

    const-wide/16 v12, -0x5

    move-object/from16 v0, v19

    invoke-static {v0, v11, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v9

    .line 211
    .local v9, oldSmsDefaultSIM:J
    const-string v11, "gprs_connection_sim_setting"

    const-wide/16 v12, -0x5

    move-object/from16 v0, v19

    invoke-static {v0, v11, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v34

    .line 231
    .local v34, oldGprsDefaultSIM:J
    const-string v11, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/ConnectivityManager;

    .line 232
    .local v18, connectivityManager:Landroid/net/ConnectivityManager;
    const/4 v11, 0x1

    move/from16 v0, v33

    if-le v0, v11, :cond_2b

    .line 233
    const-wide/16 v11, -0x5

    cmp-long v11, v3, v11

    if-nez v11, :cond_1d

    .line 234
    const-string/jumbo v11, "voice_call_sim_setting"

    const-wide/16 v12, -0x1

    move-object/from16 v0, v19

    invoke-static {v0, v11, v12, v13}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 238
    :cond_1d
    const-wide/16 v11, -0x5

    cmp-long v11, v9, v11

    if-nez v11, :cond_1e

    .line 239
    const-string/jumbo v11, "sms_sim_setting"

    const-wide/16 v12, -0x1

    move-object/from16 v0, v19

    invoke-static {v0, v11, v12, v13}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 243
    :cond_1e
    const-wide/16 v11, -0x5

    cmp-long v11, v34, v11

    if-nez v11, :cond_1f

    .line 244
    invoke-interface/range {v46 .. v46}, Lcom/mediatek/common/telephony/ITelephonyExt;->isDefaultDataOn()Z

    move-result v11

    if-eqz v11, :cond_2a

    .line 245
    if-eqz p4, :cond_29

    .line 246
    const/4 v11, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    .line 282
    :cond_1f
    :goto_d
    const-string v11, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20

    const-string v11, ""

    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_21

    :cond_20
    const-string v11, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2f

    const-string v11, ""

    move-object/from16 v0, v37

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2f

    :cond_21
    const/16 v25, 0x1

    .line 283
    .local v25, hasSIMRemoved:Z
    :goto_e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onAllIccidQueryComplete. handling SIM detect dialog ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 286
    const-wide/16 v20, -0x5

    .line 287
    .local v20, defSIM:J
    const/4 v11, 0x1

    move/from16 v0, v33

    if-le v0, v11, :cond_30

    .line 288
    const-wide/16 v20, -0x1

    .line 293
    :cond_22
    :goto_f
    invoke-static/range {v3 .. v8}, Lcom/android/internal/telephony/DefaultSIMSettings;->isSIMRemoved(JJJ)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 294
    const-string/jumbo v11, "voice_call_sim_setting"

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-static {v0, v11, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    :cond_23
    move-wide v11, v5

    move-wide v13, v7

    .line 297
    invoke-static/range {v9 .. v14}, Lcom/android/internal/telephony/DefaultSIMSettings;->isSIMRemoved(JJJ)Z

    move-result v11

    if-eqz v11, :cond_24

    .line 298
    const-string/jumbo v11, "sms_sim_setting"

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-static {v0, v11, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    :cond_24
    move-wide/from16 v11, v34

    move-wide v13, v5

    move-wide v15, v7

    .line 305
    invoke-static/range {v11 .. v16}, Lcom/android/internal/telephony/DefaultSIMSettings;->isSIMRemoved(JJJ)Z

    move-result v11

    if-eqz v11, :cond_34

    .line 306
    invoke-interface/range {v46 .. v46}, Lcom/mediatek/common/telephony/ITelephonyExt;->isDefaultDataOn()Z

    move-result v11

    if-eqz v11, :cond_33

    .line 307
    const/4 v11, 0x1

    move/from16 v0, v33

    if-le v0, v11, :cond_32

    .line 308
    if-eqz p4, :cond_31

    .line 309
    const/4 v11, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    .line 355
    :cond_25
    :goto_10
    if-nez v31, :cond_40

    .line 356
    if-nez v25, :cond_3c

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3c

    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3c

    .line 357
    const-string/jumbo v11, "onAllIccidQueryComplete. all SIM inserted into the same slot"

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 372
    :cond_26
    :goto_11
    const-string v11, "gprs_connection_sim_setting"

    const-wide/16 v12, -0x5

    move-object/from16 v0, v19

    invoke-static {v0, v11, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v23

    .line 373
    .local v23, gprsDefaultSIM:J
    const-wide/16 v11, -0x5

    cmp-long v11, v23, v11

    if-eqz v11, :cond_27

    const-wide/16 v11, 0x0

    cmp-long v11, v23, v11

    if-eqz v11, :cond_27

    .line 374
    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v45

    .line 375
    .local v45, slot:I
    const/4 v11, -0x1

    move/from16 v0, v45

    if-eq v0, v11, :cond_41

    .line 377
    check-cast p1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p1
    const/4 v11, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v11, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setGprsConnType(II)V

    .line 378
    move-object/from16 v0, v18

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    .line 427
    .end local v45           #slot:I
    :cond_27
    :goto_12
    const-string v11, "gsm.siminfo.ready"

    const-string/jumbo v12, "true"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onAllIccidQueryComplete PROPERTY_SIM_INFO_READY after set is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "gsm.siminfo.ready"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 430
    new-instance v27, Landroid/content/Intent;

    const-string v11, "android.intent.action.SIM_INFO_UPDATE"

    move-object/from16 v0, v27

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v27, intent:Landroid/content/Intent;
    const-string v11, "broadCast intent ACTION_SIM_INFO_UPDATE"

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 432
    const-string v11, "android.permission.READ_PHONE_STATE"

    const/4 v12, -0x1

    move-object/from16 v0, v27

    invoke-static {v0, v11, v12}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 433
    monitor-exit v49

    return-void

    .line 200
    .end local v3           #oldVoiceCallDefaultSIM:J
    .end local v9           #oldSmsDefaultSIM:J
    .end local v18           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v20           #defSIM:J
    .end local v23           #gprsDefaultSIM:J
    .end local v25           #hasSIMRemoved:Z
    .end local v27           #intent:Landroid/content/Intent;
    .end local v34           #oldGprsDefaultSIM:J
    .end local v40           #oldVTDefaultSIM:J
    .restart local v17       #airplaneMode:I
    .restart local p1
    :cond_28
    :try_start_4
    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->setDefaultNameIfImsiReadyOrLocked(Ljava/util/List;Landroid/content/Context;)V

    goto/16 :goto_c

    .line 248
    .end local v17           #airplaneMode:I
    .restart local v3       #oldVoiceCallDefaultSIM:J
    .restart local v9       #oldSmsDefaultSIM:J
    .restart local v18       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v34       #oldGprsDefaultSIM:J
    .restart local v40       #oldVTDefaultSIM:J
    :cond_29
    const/4 v11, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_d

    .line 250
    :cond_2a
    const/4 v11, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_d

    .line 253
    :cond_2b
    const/4 v11, 0x1

    move/from16 v0, v33

    if-ne v0, v11, :cond_1f

    .line 254
    const/4 v11, 0x0

    move-object/from16 v0, v44

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/provider/Telephony$SIMInfo;

    iget-wide v0, v11, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    move-wide/from16 v42, v0

    .line 255
    .local v42, simId:J
    const-string v11, "enable_internet_call_value"

    const/4 v12, 0x0

    move-object/from16 v0, v19

    invoke-static {v0, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    .line 256
    .local v30, isVoipEnabled:I
    invoke-static/range {p0 .. p0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2c

    if-eqz v30, :cond_2c

    const-wide/16 v11, -0x5

    cmp-long v11, v3, v11

    if-nez v11, :cond_2d

    .line 259
    :cond_2c
    const-string/jumbo v11, "voice_call_sim_setting"

    move-object/from16 v0, v19

    move-wide/from16 v1, v42

    invoke-static {v0, v11, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 262
    :cond_2d
    const-string/jumbo v11, "sms_sim_setting"

    move-object/from16 v0, v19

    move-wide/from16 v1, v42

    invoke-static {v0, v11, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 268
    const-wide/16 v11, -0x5

    cmp-long v11, v34, v11

    if-nez v11, :cond_1f

    .line 269
    invoke-interface/range {v46 .. v46}, Lcom/mediatek/common/telephony/ITelephonyExt;->isDefaultDataOn()Z

    move-result v11

    if-eqz v11, :cond_2e

    .line 270
    const/4 v11, 0x0

    move-object/from16 v0, v44

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/provider/Telephony$SIMInfo;

    iget v11, v11, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_d

    .line 272
    :cond_2e
    const/4 v11, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_d

    .line 282
    .end local v30           #isVoipEnabled:I
    .end local v42           #simId:J
    :cond_2f
    const/16 v25, 0x0

    goto/16 :goto_e

    .line 289
    .restart local v20       #defSIM:J
    .restart local v25       #hasSIMRemoved:Z
    :cond_30
    const/4 v11, 0x1

    move/from16 v0, v33

    if-ne v0, v11, :cond_22

    .line 290
    const/4 v11, 0x0

    move-object/from16 v0, v44

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/provider/Telephony$SIMInfo;

    iget-wide v0, v11, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    move-wide/from16 v20, v0

    goto/16 :goto_f

    .line 311
    :cond_31
    const/4 v11, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_10

    .line 313
    :cond_32
    if-lez v33, :cond_25

    .line 314
    const/4 v11, 0x0

    move-object/from16 v0, v44

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/provider/Telephony$SIMInfo;

    iget v11, v11, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_10

    .line 317
    :cond_33
    const/4 v11, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_10

    .line 319
    :cond_34
    invoke-interface/range {v46 .. v46}, Lcom/mediatek/common/telephony/ITelephonyExt;->isDefaultEnable3GSIMDataWhenNewSIMInserted()Z

    move-result v11

    if-eqz v11, :cond_25

    .line 320
    const-wide/16 v11, 0x0

    cmp-long v11, v34, v11

    if-lez v11, :cond_39

    .line 321
    if-gtz v31, :cond_36

    const-string v11, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_35

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_36

    :cond_35
    const-string v11, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_25

    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_25

    .line 322
    :cond_36
    const-string/jumbo v11, "onAllIccidQueryComplete. SIM swapped and data on, default switch to 3G SIM"

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 323
    const/4 v11, 0x1

    move/from16 v0, v33

    if-le v0, v11, :cond_38

    .line 324
    if-eqz p4, :cond_37

    .line 325
    const/4 v11, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_10

    .line 327
    :cond_37
    const/4 v11, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_10

    .line 329
    :cond_38
    if-lez v33, :cond_25

    .line 330
    const/4 v11, 0x0

    move-object/from16 v0, v44

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/provider/Telephony$SIMInfo;

    iget v11, v11, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_10

    .line 334
    :cond_39
    if-lez v31, :cond_25

    move/from16 v0, v31

    move/from16 v1, v33

    if-ne v0, v1, :cond_25

    .line 335
    const-string/jumbo v11, "onAllIccidQueryComplete. All SIM new, data off and default switch data to 3G SIM"

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 336
    const/4 v11, 0x1

    move/from16 v0, v33

    if-le v0, v11, :cond_3b

    .line 337
    if-eqz p4, :cond_3a

    .line 338
    const/4 v11, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_10

    .line 340
    :cond_3a
    const/4 v11, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_10

    .line 342
    :cond_3b
    if-lez v33, :cond_25

    .line 343
    const/4 v11, 0x0

    move-object/from16 v0, v44

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/provider/Telephony$SIMInfo;

    iget v11, v11, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_10

    .line 359
    :cond_3c
    const-string v11, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3d

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3e

    :cond_3d
    const-string v11, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3f

    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3f

    .line 360
    :cond_3e
    const-string/jumbo v11, "onAllIccidQueryComplete. SIM swapped"

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 361
    const-string v11, "SWAP"

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v32

    invoke-static {v0, v11, v1, v2}, Lcom/android/internal/telephony/DefaultSIMSettings;->onSIMDetected(Landroid/content/Context;Ljava/lang/String;II)V

    goto/16 :goto_11

    .line 362
    :cond_3f
    if-lez v33, :cond_26

    .line 363
    const-string/jumbo v11, "onAllIccidQueryComplete No new SIM detected and Default SIM for some service has been removed[A]"

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 364
    const-string v11, "REMOVE"

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v32

    invoke-static {v0, v11, v1, v2}, Lcom/android/internal/telephony/DefaultSIMSettings;->onSIMDetected(Landroid/content/Context;Ljava/lang/String;II)V

    goto/16 :goto_11

    .line 368
    :cond_40
    const-string v11, "getAllIccIdsDone. New SIM detected."

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 369
    const-string v11, "NEW"

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v32

    invoke-static {v0, v11, v1, v2}, Lcom/android/internal/telephony/DefaultSIMSettings;->onSIMDetected(Landroid/content/Context;Ljava/lang/String;II)V

    goto/16 :goto_11

    .line 380
    .restart local v23       #gprsDefaultSIM:J
    .restart local v45       #slot:I
    :cond_41
    const-string/jumbo v11, "onAllIccidQueryComplete: gprsDefaultSIM does not exist in slot then skip."

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_12
.end method

.method private static onSIMDetected(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 2
    .parameter "context"
    .parameter "detectStatus"
    .parameter "nSIMCount"
    .parameter "nNewSIMStatus"

    .prologue
    .line 543
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTION_ON_SIM_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 544
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "simCount"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 545
    const-string/jumbo v1, "newSIMStatus"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 546
    const-string/jumbo v1, "simDetectStatus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 548
    return-void
.end method

.method private static setColorForNewSIM(Ljava/util/List;Landroid/content/Context;)V
    .locals 13
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 469
    .local p0, simInfos:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    const/4 v4, 0x0

    .line 470
    .local v4, simToSet:I
    const/4 v9, 0x0

    invoke-static {p1, v9}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 471
    .local v2, simInfo1:Landroid/provider/Telephony$SIMInfo;
    const/4 v0, -0x1

    .line 472
    .local v0, sim1Color:I
    const/4 v1, -0x1

    .line 473
    .local v1, sim2Color:I
    if-eqz v2, :cond_2

    .line 474
    iget v0, v2, Landroid/provider/Telephony$SIMInfo;->mColor:I

    .line 475
    if-ltz v0, :cond_0

    const/4 v9, 0x3

    if-le v0, v9, :cond_1

    .line 476
    :cond_0
    or-int/lit8 v4, v4, 0x1

    .line 478
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setColorForNewSIM SimInfo sim1Color is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 480
    :cond_2
    const/4 v9, 0x1

    invoke-static {p1, v9}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v3

    .line 481
    .local v3, simInfo2:Landroid/provider/Telephony$SIMInfo;
    if-eqz v3, :cond_5

    .line 482
    iget v1, v3, Landroid/provider/Telephony$SIMInfo;->mColor:I

    .line 483
    if-ltz v1, :cond_3

    const/4 v9, 0x3

    if-le v1, v9, :cond_4

    .line 484
    :cond_3
    or-int/lit8 v4, v4, 0x2

    .line 486
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setColorForNewSIM SimInfo sim2Color is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 488
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "simToSet is"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 489
    packed-switch v4, :pswitch_data_0

    .line 527
    const-string v9, "No need to set color"

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 530
    :goto_0
    return-void

    .line 491
    :pswitch_0
    new-instance v5, Landroid/content/ContentValues;

    const/4 v9, 0x1

    invoke-direct {v5, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 492
    .local v5, value1:Landroid/content/ContentValues;
    iget-wide v9, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    long-to-int v9, v9

    rem-int/lit8 v0, v9, 0x4

    .line 493
    const-string v9, "color"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 494
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v11, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v5, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 496
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "case3: setColorForNewSIM SimInfo set color SIM in slot0 to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 497
    new-instance v6, Landroid/content/ContentValues;

    const/4 v9, 0x1

    invoke-direct {v6, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 498
    .local v6, value2:Landroid/content/ContentValues;
    iget-wide v9, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    long-to-int v9, v9

    rem-int/lit8 v1, v9, 0x4

    .line 499
    const-string v9, "color"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 500
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v11, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v6, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 502
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "case3: setColorForNewSIM SimInfo set color SIM in slot1 to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 505
    .end local v5           #value1:Landroid/content/ContentValues;
    .end local v6           #value2:Landroid/content/ContentValues;
    :pswitch_1
    new-instance v7, Landroid/content/ContentValues;

    const/4 v9, 0x1

    invoke-direct {v7, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 506
    .local v7, valueColor:Landroid/content/ContentValues;
    iget-wide v9, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    long-to-int v9, v9

    rem-int/lit8 v1, v9, 0x4

    .line 507
    if-ne v1, v0, :cond_6

    .line 508
    add-int/lit8 v9, v0, 0x1

    rem-int/lit8 v1, v9, 0x4

    .line 510
    :cond_6
    const-string v9, "color"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 511
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v11, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v7, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 513
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "case2: setColorForNewSIM SimInfo set color SIM in slot1 to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 516
    .end local v7           #valueColor:Landroid/content/ContentValues;
    :pswitch_2
    new-instance v8, Landroid/content/ContentValues;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 517
    .local v8, valueColor1:Landroid/content/ContentValues;
    iget-wide v9, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    long-to-int v9, v9

    rem-int/lit8 v0, v9, 0x4

    .line 518
    if-ne v0, v1, :cond_7

    .line 519
    add-int/lit8 v9, v1, 0x1

    rem-int/lit8 v0, v9, 0x4

    .line 521
    :cond_7
    const-string v9, "color"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 522
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v11, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v8, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 524
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "case1:setColorForNewSIM SimInfo set color SIM in slot0 to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 489
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static setDefaultNameForAllNewSIM(Ljava/util/List;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 436
    .local p0, simInfos:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 437
    .local v1, nSIMCount:I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultNameForAll nSIMCount  is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 438
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 439
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    .line 440
    .local v2, temp:Landroid/provider/Telephony$SIMInfo;
    iget-object v3, v2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultNameForAll set default name for slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 442
    iget-wide v3, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const/4 v5, 0x0

    invoke-static {p1, v3, v4, v5}, Landroid/provider/Telephony$SIMInfo;->setDefaultName(Landroid/content/Context;JLjava/lang/String;)I

    .line 438
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 436
    .end local v0           #i:I
    .end local v1           #nSIMCount:I
    .end local v2           #temp:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 445
    .restart local v0       #i:I
    .restart local v1       #nSIMCount:I
    :cond_2
    return-void
.end method

.method private static setDefaultNameIfImsiReadyOrLocked(Ljava/util/List;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 448
    .local p0, simInfos:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    if-nez p0, :cond_2

    const/4 v1, 0x0

    .line 449
    .local v1, nSIMCount:I
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDefaultNameIfImsiReadyOrLocked nSIMCount  is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 450
    const/4 v2, 0x0

    .line 451
    .local v2, operatorName:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 452
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    .line 453
    .local v3, temp:Landroid/provider/Telephony$SIMInfo;
    iget-object v4, v3, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 454
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDefaultNameIfImsiReadyOrLocked the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "th mDisplayName is null "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 455
    iget v4, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-nez v4, :cond_3

    .line 456
    const-string v4, "gsm.sim.operator.default-name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 460
    :cond_0
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDefaultNameIfImsiReadyOrLocked operatorName  is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 461
    if-eqz v2, :cond_1

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 462
    iget-wide v4, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {p1, v4, v5, v2}, Landroid/provider/Telephony$SIMInfo;->setDefaultName(Landroid/content/Context;JLjava/lang/String;)I

    .line 451
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 448
    .end local v0           #i:I
    .end local v1           #nSIMCount:I
    .end local v2           #operatorName:Ljava/lang/String;
    .end local v3           #temp:Landroid/provider/Telephony$SIMInfo;
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 457
    .restart local v0       #i:I
    .restart local v1       #nSIMCount:I
    .restart local v2       #operatorName:Ljava/lang/String;
    .restart local v3       #temp:Landroid/provider/Telephony$SIMInfo;
    :cond_3
    const/4 v4, 0x1

    iget v5, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-ne v4, v5, :cond_0

    .line 458
    const-string v4, "gsm.sim.operator.default-name.2"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 466
    .end local v3           #temp:Landroid/provider/Telephony$SIMInfo;
    :cond_4
    return-void
.end method
