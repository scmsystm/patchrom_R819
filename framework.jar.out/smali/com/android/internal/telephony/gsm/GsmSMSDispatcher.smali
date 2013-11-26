.class public final Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "GsmSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    }
.end annotation


# static fields
.field private static final EVENT_NEW_BROADCAST_SMS:I = 0x3e9

.field private static final EVENT_NEW_ETWS_NOTIFICATION:I = 0x7d0

.field private static final EVENT_NEW_SMS_STATUS_REPORT:I = 0x3e8

.field private static final EVENT_WRITE_SMS_COMPLETE:I = 0x3ea

.field private static final TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private final mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

.field private final mSmsCbPageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;",
            "[[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 3
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 460
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    .line 116
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3e8

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3e9

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x7d0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnEtwsNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 122
    return-void
.end method

.method private checkPhoneNumber(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 1030
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkPhoneNumber(Ljava/lang/String;)Z
    .locals 6
    .parameter "address"

    .prologue
    const/4 v2, 0x1

    .line 1035
    if-nez p1, :cond_1

    .line 1048
    :cond_0
    :goto_0
    return v2

    .line 1039
    :cond_1
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkPhoneNumber: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, n:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 1041
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->checkPhoneNumber(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1040
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1044
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private handleBroadcastSms(Landroid/os/AsyncResult;)V
    .locals 20
    .parameter "ar"

    .prologue
    .line 469
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v17

    .line 485
    .local v17, receivedPdu:[B
    new-instance v7, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 486
    .local v7, header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    const-string v18, "gsm.operator.numeric"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 487
    .local v16, plmn:Ljava/lang/String;
    const/4 v11, -0x1

    .line 488
    .local v11, lac:I
    const/4 v3, -0x1

    .line 489
    .local v3, cid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    .line 493
    .local v4, cl:Landroid/telephony/CellLocation;
    instance-of v0, v4, Landroid/telephony/gsm/GsmCellLocation;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 494
    move-object v0, v4

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v2, v0

    .line 495
    .local v2, cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v11

    .line 496
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    .line 500
    .end local v2           #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 512
    :pswitch_0
    new-instance v12, Landroid/telephony/SmsCbLocation;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    .line 517
    .local v12, location:Landroid/telephony/SmsCbLocation;
    :goto_0
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getNumberOfPages()I

    move-result v14

    .line 518
    .local v14, pageCount:I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v14, v0, :cond_8

    .line 520
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;

    invoke-direct {v5, v7, v12}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;)V

    .line 523
    .local v5, concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [[B

    .line 525
    .local v15, pdus:[[B
    if-nez v15, :cond_1

    .line 528
    new-array v15, v14, [[B

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    :cond_1
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getPageIndex()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    aput-object v17, v15, v18

    .line 536
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_4

    .line 537
    aget-object v18, v15, v8

    if-nez v18, :cond_3

    .line 578
    .end local v3           #cid:I
    .end local v4           #cl:Landroid/telephony/CellLocation;
    .end local v5           #concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v7           #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v8           #i:I
    .end local v11           #lac:I
    .end local v12           #location:Landroid/telephony/SmsCbLocation;
    .end local v14           #pageCount:I
    .end local v15           #pdus:[[B
    .end local v16           #plmn:Ljava/lang/String;
    .end local v17           #receivedPdu:[B
    :cond_2
    :goto_2
    return-void

    .line 502
    .restart local v3       #cid:I
    .restart local v4       #cl:Landroid/telephony/CellLocation;
    .restart local v7       #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v11       #lac:I
    .restart local v16       #plmn:Ljava/lang/String;
    .restart local v17       #receivedPdu:[B
    :pswitch_1
    new-instance v12, Landroid/telephony/SmsCbLocation;

    const/16 v18, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v12, v0, v11, v1}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 503
    .restart local v12       #location:Landroid/telephony/SmsCbLocation;
    goto :goto_0

    .line 507
    .end local v12           #location:Landroid/telephony/SmsCbLocation;
    :pswitch_2
    new-instance v12, Landroid/telephony/SmsCbLocation;

    move-object/from16 v0, v16

    invoke-direct {v12, v0, v11, v3}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 508
    .restart local v12       #location:Landroid/telephony/SmsCbLocation;
    goto :goto_0

    .line 536
    .restart local v5       #concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .restart local v8       #i:I
    .restart local v14       #pageCount:I
    .restart local v15       #pdus:[[B
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 544
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    .end local v5           #concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v8           #i:I
    :goto_3
    invoke-static {v7, v12, v15}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->createSmsCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;

    move-result-object v13

    .line 552
    .local v13, message:Landroid/telephony/SmsCbMessage;
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v18

    const/16 v19, 0x1100

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v18

    const/16 v19, 0x1101

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v18

    const/16 v19, 0x1102

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v18

    const/16 v19, 0x1103

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v18

    const/16 v19, 0x1104

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 557
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->stopEtwsAlarm()V

    .line 558
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->startEtwsAlarm()V

    .line 560
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchBroadcastMessage(Landroid/telephony/SmsCbMessage;)V

    .line 561
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEmergencyMessage()Z

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchBroadcastPdus([[BZ)V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 568
    .local v10, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;>;"
    :cond_7
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 569
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;

    .line 571
    .local v9, info:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v11, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->matchesLocation(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_7

    .line 572
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 575
    .end local v3           #cid:I
    .end local v4           #cl:Landroid/telephony/CellLocation;
    .end local v7           #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v9           #info:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v10           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;>;"
    .end local v11           #lac:I
    .end local v12           #location:Landroid/telephony/SmsCbLocation;
    .end local v13           #message:Landroid/telephony/SmsCbMessage;
    .end local v14           #pageCount:I
    .end local v15           #pdus:[[B
    .end local v16           #plmn:Ljava/lang/String;
    .end local v17           #receivedPdu:[B
    :catch_0
    move-exception v6

    .line 576
    .local v6, e:Ljava/lang/RuntimeException;
    const-string v18, "GSM"

    const-string v19, "Error in decoding SMS CB pdu"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 547
    .end local v6           #e:Ljava/lang/RuntimeException;
    .restart local v3       #cid:I
    .restart local v4       #cl:Landroid/telephony/CellLocation;
    .restart local v7       #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v11       #lac:I
    .restart local v12       #location:Landroid/telephony/SmsCbLocation;
    .restart local v14       #pageCount:I
    .restart local v16       #plmn:Ljava/lang/String;
    .restart local v17       #receivedPdu:[B
    :cond_8
    const/16 v18, 0x1

    :try_start_1
    move/from16 v0, v18

    new-array v15, v0, [[B

    .line 548
    .restart local v15       #pdus:[[B
    const/16 v18, 0x0

    aput-object v17, v15, v18
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 500
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleEtwsPdu([BLjava/lang/String;)V
    .locals 9
    .parameter "pdu"
    .parameter "plmn"

    .prologue
    .line 1376
    if-eqz p1, :cond_0

    array-length v7, p1

    const/16 v8, 0x38

    if-eq v7, v8, :cond_1

    .line 1377
    :cond_0
    const-string v7, "GSM"

    const-string v8, "invalid ETWS PDU"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    :goto_0
    return-void

    .line 1381
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 1382
    .local v2, header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 1383
    .local v0, cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    .line 1384
    .local v3, lac:I
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 1387
    .local v1, cid:I
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1399
    :pswitch_0
    new-instance v4, Landroid/telephony/SmsCbLocation;

    invoke-direct {v4, p2}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    .line 1403
    .local v4, location:Landroid/telephony/SmsCbLocation;
    :goto_1
    const/4 v7, 0x1

    new-array v6, v7, [[B

    .line 1404
    .local v6, pdus:[[B
    const/4 v7, 0x0

    aput-object p1, v6, v7

    .line 1406
    invoke-static {v2, v4, v6}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->createSmsCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;

    move-result-object v5

    .line 1407
    .local v5, message:Landroid/telephony/SmsCbMessage;
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchBroadcastMessage(Landroid/telephony/SmsCbMessage;)V

    goto :goto_0

    .line 1389
    .end local v4           #location:Landroid/telephony/SmsCbLocation;
    .end local v5           #message:Landroid/telephony/SmsCbMessage;
    .end local v6           #pdus:[[B
    :pswitch_1
    new-instance v4, Landroid/telephony/SmsCbLocation;

    const/4 v7, -0x1

    invoke-direct {v4, p2, v3, v7}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 1390
    .restart local v4       #location:Landroid/telephony/SmsCbLocation;
    goto :goto_1

    .line 1394
    .end local v4           #location:Landroid/telephony/SmsCbLocation;
    :pswitch_2
    new-instance v4, Landroid/telephony/SmsCbLocation;

    invoke-direct {v4, p2, v3, v1}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 1395
    .restart local v4       #location:Landroid/telephony/SmsCbLocation;
    goto :goto_1

    .line 1387
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleEtwsPrimaryNotification(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 1356
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/EtwsNotification;

    .line 1357
    .local v1, noti:Lcom/android/internal/telephony/EtwsNotification;
    const-string v2, "GSM"

    invoke-virtual {v1}, Lcom/android/internal/telephony/EtwsNotification;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCellBroadcastFwkExt:Lcom/android/internal/telephony/ICellBroadcastFwkExt;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ICellBroadcastFwkExt;->containDuplicatedEtwsNotification(Lcom/android/internal/telephony/EtwsNotification;)Z

    move-result v0

    .line 1360
    .local v0, isDuplicated:Z
    if-nez v0, :cond_0

    .line 1362
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCellBroadcastFwkExt:Lcom/android/internal/telephony/ICellBroadcastFwkExt;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ICellBroadcastFwkExt;->openEtwsChannel(Lcom/android/internal/telephony/EtwsNotification;)V

    .line 1365
    invoke-virtual {v1}, Lcom/android/internal/telephony/EtwsNotification;->getEtwsPdu()[B

    move-result-object v2

    iget-object v3, v1, Lcom/android/internal/telephony/EtwsNotification;->plmnId:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->handleEtwsPdu([BLjava/lang/String;)V

    .line 1366
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->stopEtwsAlarm()V

    .line 1367
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->startEtwsAlarm()V

    .line 1373
    :goto_0
    return-void

    .line 1370
    :cond_0
    const-string v2, "GSM"

    const-string v3, "find duplicated ETWS notifiction"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleStatusReport(Landroid/os/AsyncResult;)V
    .locals 12
    .parameter "ar"

    .prologue
    const/4 v11, 0x1

    .line 184
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 185
    .local v5, pduString:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v6

    .line 187
    .local v6, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    if-eqz v6, :cond_2

    .line 188
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatus()I

    move-result v7

    .line 189
    .local v7, tpStatus:I
    iget v4, v6, Lcom/android/internal/telephony/gsm/SmsMessage;->messageRef:I

    .line 190
    .local v4, messageRef:I
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 191
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 192
    .local v8, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v9, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    if-ne v9, v4, :cond_3

    .line 194
    const/16 v9, 0x40

    if-ge v7, v9, :cond_0

    const/16 v9, 0x20

    if-ge v7, v9, :cond_1

    .line 195
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 197
    :cond_1
    iget-object v3, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 198
    .local v3, intent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 199
    .local v1, fillIn:Landroid/content/Intent;
    const-string/jumbo v9, "pdu"

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 200
    const-string v9, "format"

    const-string v10, "3gpp"

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v10, -0x1

    invoke-virtual {v3, v9, v10, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v0           #count:I
    .end local v1           #fillIn:Landroid/content/Intent;
    .end local v2           #i:I
    .end local v3           #intent:Landroid/app/PendingIntent;
    .end local v4           #messageRef:I
    .end local v7           #tpStatus:I
    .end local v8           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    :goto_1
    const/4 v9, 0x0

    invoke-virtual {p0, v11, v11, v9}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 211
    return-void

    .line 190
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v4       #messageRef:I
    .restart local v7       #tpStatus:I
    .restart local v8       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    .restart local v1       #fillIn:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method private isValidSmsAddress(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 1022
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1024
    .local v0, encodedAddress:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static resultToCause(I)I
    .locals 1
    .parameter "rc"

    .prologue
    .line 397
    packed-switch p0, :pswitch_data_0

    .line 406
    :pswitch_0
    const/16 v0, 0xff

    :goto_0
    return v0

    .line 401
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 403
    :pswitch_2
    const/16 v0, 0xd3

    goto :goto_0

    .line 397
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 2
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->resultToCause(I)I

    move-result v1

    invoke-interface {v0, p1, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 394
    return-void
.end method

.method protected activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 3
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 835
    const/16 v1, 0x66

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 836
    .local v0, reply:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v2, v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setGsmBroadcastActivation(ZLandroid/os/Message;)V

    .line 837
    return-void

    .line 836
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 345
    invoke-static {p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    .locals 28
    .parameter "scAddress"
    .parameter "address"
    .parameter
    .parameter "status"
    .parameter "timestamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ)I"
        }
    .end annotation

    .prologue
    .line 888
    .local p3, text:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "GSM"

    const-string v4, "GsmSMSDispatcher: copy text message to icc card"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->checkPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 891
    const-string v2, "GSM"

    const-string v4, "[copyText invalid sc address"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const/16 p1, 0x0

    .line 895
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->checkPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 896
    const-string v2, "GSM"

    const-string v4, "[copyText invalid dest address"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const/16 v2, 0x8

    .line 1018
    :goto_0
    return v2

    .line 900
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSuccess:Z

    .line 902
    const/16 v26, 0x1

    .line 904
    .local v26, isDeliverPdu:Z
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    .line 908
    .local v5, msgCount:I
    const-string v2, "GSM"

    const-string v4, "[copyText storage available"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const/4 v2, 0x1

    move/from16 v0, p4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    move/from16 v0, p4

    if-ne v0, v2, :cond_5

    .line 915
    :cond_2
    const-string v2, "GSM"

    const-string v4, "[copyText to encode deliver pdu"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const/16 v26, 0x1

    .line 926
    :goto_1
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[copyText msgCount "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const/4 v2, 0x1

    if-le v5, v2, :cond_8

    .line 928
    const-string v2, "GSM"

    const-string v4, "[copyText multi-part message"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v2

    and-int/lit16 v3, v2, 0xff

    .line 937
    .local v3, refNumber:I
    const/4 v14, 0x0

    .line 938
    .local v14, encoding:I
    new-array v0, v5, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-object/from16 v23, v0

    .line 939
    .local v23, details:[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/16 v25, 0x0

    .local v25, i:I
    :goto_3
    move/from16 v0, v25

    if-ge v0, v5, :cond_a

    .line 940
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    aput-object v2, v23, v25

    .line 941
    aget-object v2, v23, v25

    iget v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v14, v2, :cond_4

    if-eqz v14, :cond_3

    const/4 v2, 0x1

    if-ne v14, v2, :cond_4

    .line 944
    :cond_3
    aget-object v2, v23, v25

    iget v14, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 939
    :cond_4
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 917
    .end local v3           #refNumber:I
    .end local v14           #encoding:I
    .end local v23           #details:[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v25           #i:I
    :cond_5
    const/4 v2, 0x5

    move/from16 v0, p4

    if-eq v0, v2, :cond_6

    const/4 v2, 0x7

    move/from16 v0, p4

    if-ne v0, v2, :cond_7

    .line 918
    :cond_6
    const/16 v26, 0x0

    .line 919
    const-string v2, "GSM"

    const-string v4, "[copyText to encode submit pdu"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 921
    :cond_7
    const-string v2, "GSM"

    const-string v4, "[copyText invalid status, default is deliver pdu"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 929
    :cond_8
    const/4 v2, 0x1

    if-ne v5, v2, :cond_9

    .line 930
    const-string v2, "GSM"

    const-string v4, "[copyText single-part message"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 932
    :cond_9
    const-string v2, "GSM"

    const-string v4, "[copyText invalid message count"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 948
    .restart local v3       #refNumber:I
    .restart local v14       #encoding:I
    .restart local v23       #details:[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v25       #i:I
    :cond_a
    const/16 v25, 0x0

    :goto_4
    move/from16 v0, v25

    if-ge v0, v5, :cond_12

    .line 949
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSuccess:Z

    if-nez v2, :cond_b

    .line 950
    const-string v2, "GSM"

    const-string v4, "[copyText Exception happened when copy message"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 953
    :cond_b
    const/4 v6, -0x1

    .line 954
    .local v6, singleShiftId:I
    const/4 v7, -0x1

    .line 955
    .local v7, lockingShiftId:I
    aget-object v2, v23, v25

    iget v15, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->shiftLangId:I

    .line 956
    .local v15, language:I
    move/from16 v21, v14

    .line 958
    .local v21, encoding_method:I
    const/4 v2, 0x1

    if-ne v14, v2, :cond_c

    .line 959
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Detail: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " ted"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v8, v23, v25

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    aget-object v2, v23, v25

    iget-boolean v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useLockingShift:Z

    if-eqz v2, :cond_f

    aget-object v2, v23, v25

    iget-boolean v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useSingleShift:Z

    if-eqz v2, :cond_f

    .line 961
    move v6, v15

    .line 962
    move v7, v15

    .line 963
    const/16 v21, 0xd

    .line 973
    :cond_c
    :goto_5
    const/4 v11, 0x0

    .line 974
    .local v11, smsHeader:[B
    const/4 v2, 0x1

    if-le v5, v2, :cond_d

    .line 975
    const-string v2, "GSM"

    const-string v4, "[copyText get pdu header for multi-part message"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    const/4 v2, -0x1

    add-int/lit8 v4, v25, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/SmsHeader;->getSubmitPduHeaderWithLang(IIIIII)[B

    move-result-object v11

    .line 980
    :cond_d
    if-eqz v26, :cond_11

    .line 981
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v12, p5

    invoke-static/range {v8 .. v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPduWithLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJII)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    move-result-object v27

    .line 984
    .local v27, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    if-eqz v27, :cond_e

    .line 985
    const-string v2, "GSM"

    const-string v4, "[copyText write deliver pdu into SIM"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->encodedScAddress:[B

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->encodedMessage:[B

    invoke-static {v8}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x6e

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    move/from16 v0, p4

    invoke-interface {v2, v0, v4, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1000
    .end local v27           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    :cond_e
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1002
    :try_start_0
    const-string v2, "GSM"

    const-string v8, "[copyText wait until the message be wrote in SIM"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1008
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1009
    const-string v2, "GSM"

    const-string v4, "[copyText thread is waked up"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_4

    .line 964
    .end local v11           #smsHeader:[B
    :cond_f
    aget-object v2, v23, v25

    iget-boolean v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useLockingShift:Z

    if-eqz v2, :cond_10

    .line 965
    move v7, v15

    .line 966
    const/16 v21, 0xc

    goto :goto_5

    .line 967
    :cond_10
    aget-object v2, v23, v25

    iget-boolean v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useSingleShift:Z

    if-eqz v2, :cond_c

    .line 968
    move v6, v15

    .line 969
    const/16 v21, 0xb

    goto/16 :goto_5

    .line 990
    .restart local v11       #smsHeader:[B
    :cond_11
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v20, v11

    move/from16 v22, v15

    invoke-static/range {v16 .. v22}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduWithLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v27

    .line 993
    .local v27, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v27, :cond_e

    .line 994
    const-string v2, "GSM"

    const-string v4, "[copyText write submit pdu into SIM"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-static {v8}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x6e

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    move/from16 v0, p4

    invoke-interface {v2, v0, v4, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_6

    .line 1004
    .end local v27           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :catch_0
    move-exception v24

    .line 1005
    .local v24, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "GSM"

    const-string v8, "[copyText interrupted while trying to copy text message into SIM"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const/4 v2, 0x1

    monitor-exit v4

    goto/16 :goto_0

    .line 1008
    .end local v24           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1012
    .end local v6           #singleShiftId:I
    .end local v7           #lockingShiftId:I
    .end local v11           #smsHeader:[B
    .end local v15           #language:I
    .end local v21           #encoding_method:I
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSuccess:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_13

    .line 1013
    const-string v2, "GSM"

    const-string v4, "[copyText all messages have been copied into SIM"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1017
    :cond_13
    const-string v2, "GSM"

    const-string v4, "[copyText copy failed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method protected createMessageFromSubmitPdu([B[B)Landroid/telephony/SmsMessage;
    .locals 9
    .parameter "smsc"
    .parameter "tpdu"

    .prologue
    const/4 v8, 0x0

    .line 1329
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[NQ tpdu first byte is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, p2, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    array-length v4, p2

    .line 1331
    .local v4, tpduLen:I
    const/4 v3, 0x1

    .line 1332
    .local v3, smscLen:I
    if-eqz p1, :cond_0

    .line 1333
    array-length v3, p1

    .line 1337
    :goto_0
    add-int v5, v3, v4

    new-array v2, v5, [B

    .line 1338
    .local v2, msgPdu:[B
    const/4 v0, 0x0

    .line 1340
    .local v0, curIndex:I
    if-eqz p1, :cond_1

    .line 1341
    const/4 v5, 0x0

    :try_start_0
    invoke-static {p1, v5, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1345
    :goto_1
    add-int/2addr v0, v3

    .line 1346
    const/4 v5, 0x0

    invoke-static {p2, v5, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1347
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[NQ mti byte in msgPdu is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-byte v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1352
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v5

    return-object v5

    .line 1335
    .end local v0           #curIndex:I
    .end local v2           #msgPdu:[B
    :cond_0
    const-string v5, "GSM"

    const-string v6, "[NQ smsc is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1343
    .restart local v0       #curIndex:I
    .restart local v2       #msgPdu:[B
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_1
    aput-byte v6, v2, v5
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1348
    :catch_0
    move-exception v1

    .line 1349
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "GSM"

    const-string v6, "[NQ out of bounds error when copy pdu data"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected dispatchCbMessage(Ljava/lang/String;)V
    .locals 20
    .parameter "smsPdu"

    .prologue
    .line 584
    if-nez p1, :cond_1

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->newFromCBM(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;

    move-result-object v8

    .line 589
    .local v8, cbSms:Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 594
    const/4 v15, 0x0

    check-cast v15, [[B

    .line 595
    .local v15, pdus:[[B
    iget v0, v8, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->totalPage:I

    move/from16 v17, v0

    .line 597
    .local v17, totalPage:I
    const/4 v2, 0x1

    move/from16 v0, v17

    if-le v0, v2, :cond_9

    .line 600
    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "msgID ="

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 601
    .local v19, where:Ljava/lang/StringBuilder;
    iget v2, v8, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->messageID:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 602
    const-string v2, " AND serialNum = "

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    iget v2, v8, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->serialNumber:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 604
    const-string v2, " AND count = "

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    iget v2, v8, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->totalPage:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 606
    const-string v2, " AND sim_id = "

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSimId:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 609
    const/4 v9, 0x0

    .line 611
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCbRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->CB_RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 612
    if-nez v9, :cond_2

    .line 665
    if-eqz v9, :cond_0

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 614
    :cond_2
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 617
    .local v10, cursorCount:I
    const-string/jumbo v2, "pdu"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 618
    .local v14, pduColumn:I
    const-string/jumbo v2, "sequence"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 621
    .local v16, sequenceColumn:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    if-ge v13, v10, :cond_4

    .line 622
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 623
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v11, v2

    .line 624
    .local v11, cursorSequence:I
    iget v2, v8, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->pageIndex:I

    if-ne v11, v2, :cond_3

    .line 625
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received Duplicate CB segment: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    if-eqz v9, :cond_0

    goto :goto_1

    .line 621
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 629
    .end local v11           #cursorSequence:I
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 631
    add-int/lit8 v2, v17, -0x1

    if-eq v10, v2, :cond_5

    .line 634
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 635
    .local v18, values:Landroid/content/ContentValues;
    const-string/jumbo v2, "msgID"

    iget v3, v8, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->messageID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 636
    const-string/jumbo v2, "serialNum"

    iget v3, v8, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->serialNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 637
    const-string/jumbo v2, "sequence"

    iget v3, v8, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->pageIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 638
    const-string v2, "count"

    iget v3, v8, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->totalPage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 639
    const-string/jumbo v2, "pdu"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const-string/jumbo v2, "sim_id"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSimId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCbRawUri:Landroid/net/Uri;

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 665
    if-eqz v9, :cond_0

    goto/16 :goto_1

    .line 647
    .end local v18           #values:Landroid/content/ContentValues;
    :cond_5
    move/from16 v0, v17

    new-array v15, v0, [[B

    .line 648
    const/4 v13, 0x0

    :goto_3
    if-ge v13, v10, :cond_6

    .line 650
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v11, v2

    .line 651
    .restart local v11       #cursorSequence:I
    add-int/lit8 v2, v11, -0x1

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v15, v2

    .line 653
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 648
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 656
    .end local v11           #cursorSequence:I
    :cond_6
    iget v2, v8, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->pageIndex:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, v8, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->mPdu:[B

    aput-object v3, v15, v2

    .line 659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCbRawUri:Landroid/net/Uri;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 665
    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 674
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #cursorCount:I
    .end local v13           #i:I
    .end local v14           #pduColumn:I
    .end local v16           #sequenceColumn:I
    .end local v19           #where:Ljava/lang/StringBuilder;
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchCbPdus([[B)V

    goto/16 :goto_0

    .line 660
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v19       #where:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v12

    .line 661
    .local v12, e:Landroid/database/SQLException;
    :try_start_2
    const-string v2, "GSM"

    const-string v3, "Can\'t access multipart CB SMS database"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 665
    if-eqz v9, :cond_0

    goto/16 :goto_1

    .end local v12           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2

    .line 669
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v19           #where:Ljava/lang/StringBuilder;
    :cond_9
    const/4 v2, 0x1

    new-array v15, v2, [[B

    .line 670
    const/4 v2, 0x0

    iget-object v3, v8, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->mPdu:[B

    aput-object v3, v15, v2

    goto :goto_4
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 9
    .parameter "smsb"

    .prologue
    const/4 v6, 0x3

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 218
    if-nez p1, :cond_1

    .line 219
    const-string v4, "GSM"

    const-string v5, "dispatchMessage: message is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v4, 0x2

    .line 296
    :cond_0
    :goto_0
    return v4

    .line 223
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mDupSmsFilterExt:Lcom/mediatek/common/sms/IDupSmsFilterExt;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/mediatek/common/sms/IDupSmsFilterExt;->containDupSms([B)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 224
    const-string v5, "GSM"

    const-string v6, "discard dup sms"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 228
    check-cast v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    .line 230
    .local v1, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->isTypeZero()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 233
    const-string v5, "GSM"

    const-string v6, "Received short message type 0, Don\'t display or store it. Send Ack"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->isUsimDataDownload()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 239
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;

    move-result-object v3

    .line 244
    .local v3, ust:Lcom/android/internal/telephony/gsm/UsimServiceTable;
    if-eqz v3, :cond_4

    sget-object v4, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->DATA_DL_VIA_SMS_PP:Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 246
    const-string v4, "GSM"

    const-string v5, "Received SMS-PP data download, sending to UICC."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->startDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;)I

    move-result v4

    goto :goto_0

    .line 251
    :cond_4
    const-string v4, "GSM"

    const-string v7, "DATA_DL_VIA_SMS_PP service not available, storing message to UICC."

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, smsc:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x3ea

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v4, v6, v2, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    move v4, v5

    .line 258
    goto :goto_0

    .line 262
    .end local v2           #smsc:Ljava/lang/String;
    .end local v3           #ust:Lcom/android/internal/telephony/gsm/UsimServiceTable;
    :cond_5
    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsReceiveDisabled:Z

    if-eqz v7, :cond_6

    .line 264
    const-string v5, "GSM"

    const-string v6, "Received short message on device which doesn\'t support SMS service. Ignored."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    :cond_6
    const/4 v0, 0x0

    .line 271
    .local v0, handled:Z
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 272
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7, v4, v5}, Lcom/android/internal/telephony/Phone;->setVoiceMessageWaiting(II)V

    .line 273
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v0

    .line 285
    :cond_7
    :goto_1
    if-nez v0, :cond_0

    .line 289
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-eq v4, v5, :cond_9

    move v4, v6

    .line 293
    goto/16 :goto_0

    .line 277
    :cond_8
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 278
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v7, 0x0

    invoke-interface {v5, v4, v7}, Lcom/android/internal/telephony/Phone;->setVoiceMessageWaiting(II)V

    .line 279
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v0

    goto :goto_1

    .line 296
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v4

    goto/16 :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmSms(Landroid/os/Handler;)V

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsStatus(Landroid/os/Handler;)V

    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnEtwsNotification(Landroid/os/Handler;)V

    .line 130
    return-void
.end method

.method protected getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 842
    const/16 v1, 0x67

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 843
    .local v0, reply:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getGsmBroadcastConfig(Landroid/os/Message;)V

    .line 844
    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string v0, "3gpp"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 145
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 172
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    .line 174
    :goto_0
    return-void

    .line 147
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->handleStatusReport(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 151
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->handleBroadcastSms(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 155
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 156
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 157
    const-string v1, "GSM"

    const-string v2, "Successfully wrote SMS-PP message to UICC"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto :goto_0

    .line 160
    :cond_0
    const-string v1, "GSM"

    const-string v2, "Failed to write SMS-PP message to UICC"

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xff

    invoke-interface {v1, v4, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto :goto_0

    .line 167
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_3
    const-string v1, "GSM"

    const-string/jumbo v2, "receive ETWS notification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->handleEtwsPrimaryNotification(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 145
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x7d0 -> :sswitch_3
    .end sparse-switch
.end method

.method protected handleQueryCbActivation(Landroid/os/AsyncResult;)V
    .locals 8
    .parameter "ar"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1189
    const/4 v2, 0x0

    .line 1191
    .local v2, result:Ljava/lang/Boolean;
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 1192
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 1195
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1196
    new-instance v2, Ljava/lang/Boolean;

    .end local v2           #result:Ljava/lang/Boolean;
    invoke-direct {v2, v7}, Ljava/lang/Boolean;-><init>(Z)V

    .line 1214
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    .restart local v2       #result:Ljava/lang/Boolean;
    :cond_0
    :goto_0
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "queryCbActivation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v2, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1216
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1217
    return-void

    .line 1198
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    :cond_1
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 1199
    .local v0, cbConfig:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cbConfig: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v3

    if-ne v3, v6, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v3

    if-ne v3, v6, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v3

    if-ne v3, v6, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v3

    if-ne v3, v6, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1207
    new-instance v2, Ljava/lang/Boolean;

    .end local v2           #result:Ljava/lang/Boolean;
    invoke-direct {v2, v7}, Ljava/lang/Boolean;-><init>(Z)V

    .restart local v2       #result:Ljava/lang/Boolean;
    goto :goto_0

    .line 1209
    :cond_2
    new-instance v2, Ljava/lang/Boolean;

    .end local v2           #result:Ljava/lang/Boolean;
    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    .restart local v2       #result:Ljava/lang/Boolean;
    goto :goto_0
.end method

.method protected queryCellBroadcastActivation(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 882
    const/16 v1, 0x6a

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 883
    .local v0, reply:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getGsmBroadcastConfig(Landroid/os/Message;)V

    .line 884
    return-void
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "originalPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 682
    const-string v0, "GSM"

    const-string v1, "[xj GsmSmsDispatcher.sendData: enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    if-eqz p7, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object v0, p2

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v6

    .line 685
    .local v6, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-nez v6, :cond_1

    .line 686
    const-string v0, "GSM"

    const-string/jumbo v1, "sendData error: invalid paramters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :goto_1
    return-void

    .line 683
    .end local v6           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 689
    .restart local v6       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    iget-object v1, v6, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v2, v6, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v0, p0

    move-object v3, p6

    move-object v4, p7

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 690
    const-string v0, "GSM"

    const-string v1, "[xj GsmSmsDispatcher.sendData: exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    const/4 v0, 0x1

    .line 304
    sget-boolean v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isDmLock:Z

    if-ne v1, v0, :cond_0

    .line 305
    const-string v0, "GSM"

    const-string v1, "DM status: lock-on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :goto_0
    return-void

    .line 310
    :cond_0
    if-eqz p6, :cond_1

    :goto_1
    invoke-static {p2, p1, p3, p4, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v6

    .line 312
    .local v6, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v6, :cond_2

    .line 313
    iget-object v1, v6, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v2, v6, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v0, p0

    move-object v3, p5

    move-object v4, p6

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_0

    .line 310
    .end local v6           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 316
    .restart local v6       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_2
    const-string v0, "GSM"

    const-string v1, "GsmSMSDispatcher.sendData(): getSubmitPdu() returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 699
    .local p4, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsRawData;>;"
    .local p5, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    sget-boolean v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isDmLock:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 700
    const-string v1, "GSM"

    const-string v2, "DM status: lock-on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_0
    return-void

    .line 705
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v1

    and-int/lit16 v10, v1, 0xff

    .line 706
    .local v10, refNumber:I
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 708
    .local v8, msgCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 709
    add-int/lit8 v1, v7, 0x1

    invoke-static {p3, v10, v1, v8}, Lcom/android/internal/telephony/SmsHeader;->getSubmitPduHeader(IIII)[B

    move-result-object v11

    .line 712
    .local v11, smsHeader:[B
    const/4 v4, 0x0

    .line 713
    .local v4, sentIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v7, :cond_2

    .line 714
    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #sentIntent:Landroid/app/PendingIntent;
    check-cast v4, Landroid/app/PendingIntent;

    .line 717
    .restart local v4       #sentIntent:Landroid/app/PendingIntent;
    :cond_2
    const/4 v5, 0x0

    .line 718
    .local v5, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p6, :cond_3

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v7, :cond_3

    .line 719
    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    .line 722
    .restart local v5       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_3
    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v2

    if-eqz v5, :cond_4

    const/4 v1, 0x1

    :goto_1
    invoke-static {p2, p1, v2, v11, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;[B[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v9

    .line 725
    .local v9, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    iget-object v2, v9, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v3, v9, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v1, p0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 708
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 722
    .end local v9           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 26
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter "destPort"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 760
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    sget-boolean v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isDmLock:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 761
    const-string v2, "GSM"

    const-string v4, "DM status: lock-on"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_0
    return-void

    .line 766
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v2

    and-int/lit16 v3, v2, 0xff

    .line 767
    .local v3, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 768
    .local v5, msgCount:I
    const/16 v22, 0x0

    .line 770
    .local v22, encoding:I
    new-array v0, v5, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-object/from16 v21, v0

    .line 771
    .local v21, details:[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/16 v24, 0x0

    .local v24, i:I
    :goto_0
    move/from16 v0, v24

    if-ge v0, v5, :cond_4

    .line 772
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    aput-object v2, v21, v24

    .line 773
    aget-object v2, v21, v24

    iget v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v0, v22

    if-eq v0, v2, :cond_3

    if-eqz v22, :cond_2

    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_3

    .line 776
    :cond_2
    aget-object v2, v21, v24

    iget v0, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v22, v0

    .line 771
    :cond_3
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 780
    :cond_4
    const/16 v24, 0x0

    :goto_1
    move/from16 v0, v24

    if-ge v0, v5, :cond_0

    .line 781
    const/4 v6, -0x1

    .line 782
    .local v6, singleShiftId:I
    const/4 v7, -0x1

    .line 783
    .local v7, lockingShiftId:I
    aget-object v2, v21, v24

    iget v14, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->shiftLangId:I

    .line 784
    .local v14, language:I
    move/from16 v13, v22

    .line 787
    .local v13, encoding_method:I
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_5

    .line 788
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Detail: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " ted"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v8, v21, v24

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    aget-object v2, v21, v24

    iget-boolean v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useLockingShift:Z

    if-eqz v2, :cond_9

    aget-object v2, v21, v24

    iget-boolean v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useSingleShift:Z

    if-eqz v2, :cond_9

    .line 790
    move v6, v14

    .line 791
    move v7, v14

    .line 792
    const/16 v13, 0xd

    .line 802
    :cond_5
    :goto_2
    add-int/lit8 v4, v24, 0x1

    move/from16 v2, p4

    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/SmsHeader;->getSubmitPduHeaderWithLang(IIIIII)[B

    move-result-object v12

    .line 805
    .local v12, smsHeader:[B
    const/16 v18, 0x0

    .line 806
    .local v18, sentIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v24

    if-le v2, v0, :cond_6

    .line 807
    move-object/from16 v0, p5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #sentIntent:Landroid/app/PendingIntent;
    check-cast v18, Landroid/app/PendingIntent;

    .line 810
    .restart local v18       #sentIntent:Landroid/app/PendingIntent;
    :cond_6
    const/16 v19, 0x0

    .line 811
    .local v19, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p6, :cond_7

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v24

    if-le v2, v0, :cond_7

    .line 812
    move-object/from16 v0, p6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v19, Landroid/app/PendingIntent;

    .line 815
    .restart local v19       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_7
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v19, :cond_b

    const/4 v11, 0x1

    :goto_3
    move-object/from16 v8, p2

    move-object/from16 v9, p1

    invoke-static/range {v8 .. v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduWithLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v25

    .line 818
    .local v25, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v25, :cond_c

    .line 819
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object/from16 v17, v0

    move-object/from16 v15, p0

    move-object/from16 v20, p1

    invoke-virtual/range {v15 .. v20}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 780
    :cond_8
    :goto_4
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1

    .line 793
    .end local v12           #smsHeader:[B
    .end local v18           #sentIntent:Landroid/app/PendingIntent;
    .end local v19           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v25           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_9
    aget-object v2, v21, v24

    iget-boolean v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useLockingShift:Z

    if-eqz v2, :cond_a

    .line 794
    move v7, v14

    .line 795
    const/16 v13, 0xc

    goto :goto_2

    .line 796
    :cond_a
    aget-object v2, v21, v24

    iget-boolean v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useSingleShift:Z

    if-eqz v2, :cond_5

    .line 797
    move v6, v14

    .line 798
    const/16 v13, 0xb

    goto :goto_2

    .line 815
    .restart local v12       #smsHeader:[B
    .restart local v18       #sentIntent:Landroid/app/PendingIntent;
    .restart local v19       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_b
    const/4 v11, 0x0

    goto :goto_3

    .line 821
    .restart local v25       #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_c
    const-string v2, "GSM"

    const-string/jumbo v4, "sendMultipartText: pdu is null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    if-eqz v18, :cond_8

    .line 824
    const/4 v2, 0x3

    :try_start_0
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 825
    :catch_0
    move-exception v23

    .line 826
    .local v23, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v2, "GSM"

    const-string v4, "failed to send back RESULT_ERROR_NULL_PDU"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method protected sendMultipartTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 23
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter "encodingType"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1108
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    sget-boolean v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isDmLock:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1109
    const-string v2, "GSM"

    const-string v3, "DM status: lock-on"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_0
    return-void

    .line 1114
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v21, v0

    .line 1115
    .local v21, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 1116
    .local v19, msgCount:I
    move/from16 v7, p4

    .line 1118
    .local v7, encoding:I
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mRemainingMessages:I

    .line 1119
    move/from16 v0, v19

    new-array v0, v0, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-object/from16 v16, v0

    .line 1120
    .local v16, encodingForParts:[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 1121
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v15

    .line 1122
    .local v15, details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v2, v15, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v7, v2, :cond_3

    if-eqz v7, :cond_2

    const/4 v2, 0x1

    if-ne v7, v2, :cond_3

    .line 1125
    :cond_2
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[enc conflict between details["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v15, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] and encoding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    iput v7, v15, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1129
    :cond_3
    aput-object v15, v16, v18

    .line 1120
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 1132
    .end local v15           #details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_4
    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 1133
    new-instance v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v14}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 1134
    .local v14, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v21

    iput v0, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 1135
    add-int/lit8 v2, v18, 0x1

    iput v2, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 1136
    move/from16 v0, v19

    iput v0, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 1143
    const/4 v2, 0x1

    iput-boolean v2, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 1144
    new-instance v22, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1145
    .local v22, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v22

    iput-object v14, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 1146
    const/4 v2, 0x1

    if-ne v7, v2, :cond_5

    .line 1147
    aget-object v2, v16, v18

    iget v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    move-object/from16 v0, v22

    iput v2, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 1148
    aget-object v2, v16, v18

    iget v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v0, v22

    iput v2, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 1151
    :cond_5
    const/4 v11, 0x0

    .line 1152
    .local v11, sentIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v18

    if-le v2, v0, :cond_6

    .line 1153
    move-object/from16 v0, p5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #sentIntent:Landroid/app/PendingIntent;
    check-cast v11, Landroid/app/PendingIntent;

    .line 1156
    .restart local v11       #sentIntent:Landroid/app/PendingIntent;
    :cond_6
    const/4 v12, 0x0

    .line 1157
    .local v12, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p6, :cond_7

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v18

    if-le v2, v0, :cond_7

    .line 1158
    move-object/from16 v0, p6

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v12, Landroid/app/PendingIntent;

    .line 1161
    .restart local v12       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_7
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v12, :cond_9

    const/4 v5, 0x1

    :goto_2
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v6

    move-object/from16 v0, v22

    iget v8, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move-object/from16 v0, v22

    iget v9, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v20

    .line 1166
    .local v20, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v20, :cond_a

    .line 1167
    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object/from16 v8, p0

    move-object/from16 v13, p1

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 1132
    :cond_8
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 1161
    .end local v20           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_9
    const/4 v5, 0x0

    goto :goto_2

    .line 1169
    .restart local v20       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_a
    const-string v2, "GSM"

    const-string/jumbo v3, "sendText: pdu is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    if-eqz v11, :cond_8

    .line 1172
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {v11, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1173
    :catch_0
    move-exception v17

    .line 1174
    .local v17, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v2, "GSM"

    const-string v3, "failed to send back RESULT_ERROR_NULL_PDU"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public sendMultipartTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 26
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter "extraParams"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1257
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string/jumbo v2, "validity_period"

    const/4 v3, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 1258
    .local v10, validityPeriod:I
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendTextWithExtraParams: validityPeriod is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v24, v0

    .line 1261
    .local v24, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 1262
    .local v22, msgCount:I
    const/4 v7, 0x0

    .line 1264
    .local v7, encoding:I
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mRemainingMessages:I

    .line 1266
    move/from16 v0, v22

    new-array v0, v0, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-object/from16 v19, v0

    .line 1267
    .local v19, encodingForParts:[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 1268
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v18

    .line 1269
    .local v18, details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v7, v2, :cond_1

    if-eqz v7, :cond_0

    const/4 v2, 0x1

    if-ne v7, v2, :cond_1

    .line 1272
    :cond_0
    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1274
    :cond_1
    aput-object v18, v19, v21

    .line 1267
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 1277
    .end local v18           #details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_2
    const/16 v21, 0x0

    :goto_1
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    .line 1278
    new-instance v17, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 1279
    .local v17, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v24

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 1280
    add-int/lit8 v2, v21, 0x1

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 1281
    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 1288
    const/4 v2, 0x1

    move-object/from16 v0, v17

    iput-boolean v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 1289
    new-instance v25, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v25 .. v25}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1290
    .local v25, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 1293
    const/4 v2, 0x1

    if-ne v7, v2, :cond_3

    .line 1294
    aget-object v2, v19, v21

    iget v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    move-object/from16 v0, v25

    iput v2, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 1295
    aget-object v2, v19, v21

    iget v2, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v0, v25

    iput v2, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 1298
    :cond_3
    const/4 v14, 0x0

    .line 1299
    .local v14, sentIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v21

    if-le v2, v0, :cond_4

    .line 1300
    move-object/from16 v0, p5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #sentIntent:Landroid/app/PendingIntent;
    check-cast v14, Landroid/app/PendingIntent;

    .line 1303
    .restart local v14       #sentIntent:Landroid/app/PendingIntent;
    :cond_4
    const/4 v15, 0x0

    .line 1304
    .local v15, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p6, :cond_5

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v21

    if-le v2, v0, :cond_5

    .line 1305
    move-object/from16 v0, p6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v15, Landroid/app/PendingIntent;

    .line 1308
    .restart local v15       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_5
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v15, :cond_7

    const/4 v5, 0x1

    :goto_2
    invoke-static/range {v25 .. v25}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v6

    move-object/from16 v0, v25

    iget v8, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move-object/from16 v0, v25

    iget v9, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v23

    .line 1312
    .local v23, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v23, :cond_8

    .line 1313
    move-object/from16 v0, v23

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v23

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object/from16 v11, p0

    move-object/from16 v16, p1

    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 1277
    :cond_6
    :goto_3
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 1308
    .end local v23           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    .line 1315
    .restart local v23       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_8
    const-string v2, "GSM"

    const-string/jumbo v3, "sendMultipartTextWithExtraParams: pdu is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    if-eqz v14, :cond_6

    .line 1318
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {v14, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1319
    :catch_0
    move-exception v20

    .line 1320
    .local v20, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v2, "GSM"

    const-string v3, "failed to send back RESULT_ERROR_NULL_PDU"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1325
    .end local v14           #sentIntent:Landroid/app/PendingIntent;
    .end local v15           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v17           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v20           #ex:Landroid/app/PendingIntent$CanceledException;
    .end local v23           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v25           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_9
    return-void
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 9
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "message"
    .parameter "smsHeader"
    .parameter "encoding"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "lastPart"

    .prologue
    .line 353
    if-eqz p7, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {p4}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    iget v6, p4, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iget v7, p4, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move v5, p5

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v8

    .line 356
    .local v8, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v8, :cond_1

    .line 357
    iget-object v1, v8, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v2, v8, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v0, p0

    move-object v3, p6

    move-object/from16 v4, p7

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 362
    :goto_1
    return-void

    .line 353
    .end local v8           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 360
    .restart local v8       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    const-string v0, "GSM"

    const-string v1, "GsmSMSDispatcher.sendNewSubmitPdu(): getSubmitPdu() returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 8
    .parameter "tracker"

    .prologue
    .line 367
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 369
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "smsc"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v3, v4

    check-cast v3, [B

    .line 370
    .local v3, smsc:[B
    const-string/jumbo v4, "pdu"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v1, v4

    check-cast v1, [B

    .line 373
    .local v1, pdu:[B
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    monitor-enter v5

    .line 374
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 376
    :cond_0
    const/4 v4, 0x2

    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 377
    .local v2, reply:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 382
    .end local v2           #reply:Landroid/os/Message;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p1, :cond_3

    .line 383
    :cond_2
    const-string v4, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Add tracker into the list: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_3
    monitor-exit v5

    .line 388
    return-void

    .line 386
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "destPort"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    const/4 v0, 0x1

    .line 733
    sget-boolean v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isDmLock:Z

    if-ne v1, v0, :cond_1

    .line 734
    const-string v0, "GSM"

    const-string v1, "DM status: lock-on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 739
    :cond_1
    if-eqz p6, :cond_2

    :goto_1
    invoke-static {p2, p1, p3, p4, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v7

    .line 741
    .local v7, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v7, :cond_3

    .line 742
    iget-object v1, v7, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v2, v7, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v0, p0

    move-object v3, p5

    move-object v4, p6

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_0

    .line 739
    .end local v7           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 744
    .restart local v7       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_3
    const-string v0, "GSM"

    const-string/jumbo v1, "sendText: pdu is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    if-eqz p5, :cond_0

    .line 747
    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p5, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 748
    :catch_0
    move-exception v6

    .line 749
    .local v6, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v0, "GSM"

    const-string v1, "failed to send back RESULT_ERROR_NULL_PDU"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    const/4 v0, 0x1

    .line 325
    sget-boolean v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isDmLock:Z

    if-ne v1, v0, :cond_0

    .line 326
    const-string v0, "GSM"

    const-string v1, "DM status: lock-on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :goto_0
    return-void

    .line 331
    :cond_0
    if-eqz p5, :cond_1

    :goto_1
    invoke-static {p2, p1, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v6

    .line 333
    .local v6, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v6, :cond_2

    .line 334
    iget-object v1, v6, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v2, v6, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v0, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_0

    .line 331
    .end local v6           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 337
    .restart local v6       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_2
    const-string v0, "GSM"

    const-string v1, "GsmSMSDispatcher.sendText(): getSubmitPdu() returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected sendTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 16
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "encodingType"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 1064
    sget-boolean v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isDmLock:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1065
    const-string v1, "GSM"

    const-string v2, "DM status: lock-on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    :cond_0
    :goto_0
    return-void

    .line 1070
    :cond_1
    move/from16 v6, p4

    .line 1071
    .local v6, encoding:I
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v13

    .line 1072
    .local v13, details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v1, v13, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v6, v1, :cond_3

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    if-ne v6, v1, :cond_3

    .line 1075
    :cond_2
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[enc conflict between details["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v13, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] and encoding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iput v6, v13, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1080
    :cond_3
    if-eqz p6, :cond_4

    const/4 v4, 0x1

    :goto_1
    const/4 v5, 0x0

    iget v7, v13, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v8, v13, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v15

    .line 1084
    .local v15, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v15, :cond_5

    .line 1085
    iget-object v8, v15, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v9, v15, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object/from16 v7, p0

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p1

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_0

    .line 1080
    .end local v15           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 1087
    .restart local v15       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_5
    const-string v1, "GSM"

    const-string/jumbo v2, "sendText: pdu is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    if-eqz p5, :cond_0

    .line 1090
    const/4 v1, 0x3

    :try_start_0
    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1091
    :catch_0
    move-exception v14

    .line 1092
    .local v14, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v1, "GSM"

    const-string v2, "failed to send back RESULT_ERROR_NULL_PDU"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 12
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "extraParams"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 1228
    const-string/jumbo v1, "validity_period"

    const/4 v2, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 1229
    .local v9, validityPeriod:I
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendTextWithExtraParams: validityPeriod is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    if-eqz p6, :cond_1

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    invoke-static/range {v1 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v11

    .line 1234
    .local v11, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v11, :cond_2

    .line 1235
    iget-object v2, v11, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v3, v11, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v1, p0

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 1246
    :cond_0
    :goto_1
    return-void

    .line 1231
    .end local v11           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1237
    .restart local v11       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_2
    const-string v1, "GSM"

    const-string/jumbo v2, "sendTextWithExtraParams: pdu is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    if-eqz p5, :cond_0

    .line 1240
    const/4 v1, 0x3

    :try_start_0
    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1241
    :catch_0
    move-exception v10

    .line 1242
    .local v10, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v1, "GSM"

    const-string v2, "failed to send back RESULT_ERROR_NULL_PDU"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected setCellBroadcastConfig(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Message;)V
    .locals 3
    .parameter
    .parameter
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 867
    .local p1, chIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    .local p2, langList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    const/16 v1, 0x68

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 869
    .local v0, reply:Landroid/os/Message;
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 870
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-interface {v2, v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V

    .line 872
    return-void
.end method

.method protected setCellBroadcastConfig([ILandroid/os/Message;)V
    .locals 2
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 849
    const-string v0, "GSM"

    const-string v1, "Error! The functionality cell broadcast sms is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    .line 851
    return-void
.end method
