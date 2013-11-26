.class public Lcom/mediatek/op/telephony/PhoneNumberExt;
.super Ljava/lang/Object;
.source "PhoneNumberExt.java"

# interfaces
.implements Lcom/mediatek/common/telephony/IPhoneNumberExt;


# static fields
.field static final TAG:Ljava/lang/String; = "PhoneNumberExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCustomizedEmergencyNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "number"
    .parameter "plusNumber"
    .parameter "numberPlus"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isCustomizedEmergencyNumberExt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "number"
    .parameter "plusNumber"
    .parameter "numberPlus"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isSpecialEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "dialString"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    const-string v0, "PhoneNumberExt"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
