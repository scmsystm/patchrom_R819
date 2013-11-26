.class public Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$1;,
        Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$c;,
        Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;,
        Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z

.field private static c:Z


# instance fields
.field private A:Landroid/os/Handler;

.field private B:Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

.field private b:[Z

.field private d:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private e:Lcom/android/internal/telephony/Phone;

.field private f:Lcom/android/internal/telephony/Phone;

.field private g:Lcom/android/internal/telephony/Phone;

.field private h:Landroid/content/BroadcastReceiver;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

.field protected mContext:Landroid/content/Context;

.field private n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

.field private o:[Z

.field private p:[Z

.field private q:[Z

.field private r:[Z

.field private s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

.field private t:[Ljava/lang/String;

.field private u:Z

.field private v:Z

.field private w:[Z

.field private x:Ljava/lang/Object;

.field private y:Ljava/lang/Object;

.field private z:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    const-class v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:Z

    .line 131
    sput-boolean v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Z

    return-void

    :cond_0
    move v0, v1

    .line 75
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x2

    .line 1077
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:[Z

    .line 139
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    .line 140
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    .line 142
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:I

    .line 143
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:I

    .line 144
    new-array v0, v1, [Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    .line 146
    new-array v0, v1, [Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    .line 147
    new-array v0, v1, [Z

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->o:[Z

    .line 148
    new-array v0, v1, [Z

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[Z

    .line 149
    new-array v0, v1, [Z

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[Z

    .line 150
    new-array v0, v1, [Z

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Z

    .line 153
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 154
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    .line 155
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    .line 156
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Z

    .line 157
    new-array v0, v1, [Z

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:[Z

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->x:Ljava/lang/Object;

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    .line 161
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->z:Ljava/lang/Object;

    .line 193
    new-instance v0, Lcom/android/internal/telephony/gemini/e;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/e;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    .line 646
    new-instance v0, Lcom/android/internal/telephony/gemini/b;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/b;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->B:Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

    .line 1078
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-object v0, p2

    .line 1080
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    .line 1081
    check-cast p2, Lcom/android/internal/telephony/PhoneProxy;

    iput-object p2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    .line 1082
    check-cast p3, Lcom/android/internal/telephony/PhoneProxy;

    iput-object p3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    .line 1083
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    .line 1085
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1086
    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1087
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1090
    new-instance v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$c;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/e;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:Landroid/content/BroadcastReceiver;

    .line 1091
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1093
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v1, v0, v3

    .line 1094
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v1, v0, v4

    .line 1096
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    const-string v1, "NONE"

    aput-object v1, v0, v3

    .line 1097
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    const-string v1, "NONE"

    aput-object v1, v0, v4

    .line 1126
    return-void

    .line 129
    :array_0
    .array-data 0x1
        0x1t
        0x1t
    .end array-data

    .line 147
    nop

    :array_1
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 148
    nop

    :array_2
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 149
    nop

    :array_3
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 150
    nop

    :array_4
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 157
    nop

    :array_5
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method private a(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1318
    .line 1320
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1321
    instance-of v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v1, :cond_1

    .line 1322
    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    .line 1323
    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d()I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v0, v0, p2

    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    const-string v1, "default"

    aput-object v1, v0, p2

    .line 1328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]Attached: have to recover default data connection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1330
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]Attached: getDataConnectionFromSetting()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1333
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v0, v0, p2

    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1334
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->enableApnType(Ljava/lang/String;)I

    move-result v0

    .line 1335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]Attached:then enableApnType() with rc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1336
    if-nez v0, :cond_2

    .line 1339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]Attached:notify DATA is CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1340
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v1

    const-string v2, "dataEnabled"

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableApnAfterGprsAttached():reset mEnableApnTypeReq as NONE of sim_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1364
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    const-string v2, "NONE"

    aput-object v2, v1, p2

    .line 1365
    return v0

    .line 1341
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]Attached: wait for enableApnType() execution result"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 1343
    :cond_3
    const/16 v1, 0x63

    if-ne v0, v1, :cond_4

    .line 1345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]Attached but records are not loaded!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 1353
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]Attached:notify DATA is DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1354
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v1

    const-string/jumbo v2, "noSuchPdp"

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1360
    :cond_5
    const/4 v0, 0x0

    .line 1361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]Attached for sim_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " successfully"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(I)Lcom/android/internal/telephony/PhoneProxy;
    .locals 2
    .parameter

    .prologue
    .line 1543
    if-nez p1, :cond_0

    .line 1544
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    .line 1549
    :goto_0
    return-object v0

    .line 1545
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1546
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    goto :goto_0

    .line 1548
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAPP:Invaild simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    .line 1549
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)Lcom/android/internal/telephony/PhoneProxy;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 1476
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    if-eq v0, v1, :cond_2

    .line 1477
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    if-nez v0, :cond_0

    .line 1478
    const-string v0, "UAPP_C1"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1479
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    .line 1539
    :goto_0
    return-void

    .line 1480
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    if-ne v0, v2, :cond_1

    .line 1481
    const-string v0, "UAPP_C2"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1482
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    .line 1484
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UAPP_C3:Invaild simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    .line 1485
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    .line 1489
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    if-eq v0, v1, :cond_5

    .line 1490
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    if-nez v0, :cond_3

    .line 1491
    const-string v0, "UAPP_C4"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1492
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    .line 1493
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    if-ne v0, v2, :cond_4

    .line 1494
    const-string v0, "UAPP_C5"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1495
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    .line 1497
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UAPP_C6:Invaild simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    .line 1498
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    .line 1501
    :cond_5
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:I

    if-eq v0, v1, :cond_7

    .line 1502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UAPP_C6-0:previous_current_use_gprs_sim_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1503
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    :goto_1
    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    goto :goto_1

    .line 1504
    :cond_7
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:I

    if-eq v0, v1, :cond_9

    .line 1505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UAPP_C6-1:previous_request_use_gprs_sim_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1506
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    :goto_2
    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    goto :goto_2

    .line 1507
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_a

    .line 1508
    const-string v0, "UAPP_C6-2"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1509
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    .line 1510
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_b

    .line 1511
    const-string v0, "UAPP_C6-3"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1512
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    .line 1513
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_c

    .line 1514
    const-string v0, "UAPP_C6-4"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1515
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    .line 1519
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, v3

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v1, :cond_e

    .line 1524
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1525
    const-string v0, "UAPP_C7"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1526
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    .line 1528
    :cond_d
    const-string v0, "UAPP_C8"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1529
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    .line 1534
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UAPP_C9:Invaild simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    .line 1535
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(II)V

    return-void
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    return p1
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:[Z

    return-object v0
.end method

.method private b()I
    .locals 6

    .prologue
    const/16 v0, 0x63

    const/4 v5, 0x1

    const/4 v1, -0x1

    .line 1804
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    .line 1805
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EDCDS:simId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  request sim id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1807
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1809
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d()I

    move-result v1

    .line 1810
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableDataConnectivityDecideSimId(): both sim detached,query gprs sim setting mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1811
    if-eqz v1, :cond_0

    if-ne v1, v5, :cond_1

    :cond_0
    move v0, v1

    .line 1868
    :cond_1
    :goto_0
    return v0

    .line 1821
    :cond_2
    if-ne v2, v1, :cond_7

    .line 1822
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    if-eq v2, v1, :cond_5

    .line 1823
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_3

    .line 1824
    const-string v0, "EDCDS:enable is ongoing"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1825
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    goto :goto_0

    .line 1827
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    aget-object v0, v0, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v2, :cond_4

    .line 1830
    const-string v0, "EDCDS:Can\'t enable due to previous disable is ongoing"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    move v0, v1

    .line 1831
    goto :goto_0

    .line 1835
    :cond_4
    const-string v0, "EDCDS:Invalid cases"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    move v0, v1

    .line 1836
    goto :goto_0

    .line 1856
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d()I

    move-result v1

    .line 1857
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableDataConnectivityDecideSimId(): both sim detached,query gprs sim setting mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1858
    if-eqz v1, :cond_6

    if-ne v1, v5, :cond_1

    :cond_6
    move v0, v1

    .line 1860
    goto :goto_0

    .line 1867
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EDCDS:return simId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    move v0, v2

    .line 1868
    goto :goto_0
.end method

.method private b(I)I
    .locals 2
    .parameter

    .prologue
    .line 2352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeEnableDataConnectivity():for simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2356
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2358
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)I

    move-result v0

    .line 2362
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e(I)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    return p1
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(II)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiPhone;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/gemini/GeminiPhone;

    return-object v0
.end method

.method private b(II)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processGprsDetached():req_detach_simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",inx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1370
    if-nez p1, :cond_0

    move v1, v2

    .line 1373
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1375
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->f:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v4, :cond_9

    move v0, v2

    .line 1381
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[Z

    aget-boolean v4, v4, p1

    if-eqz v4, :cond_2

    .line 1382
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->stopMonitorGprsDetachTimer(I)V

    .line 1384
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    monitor-enter v4

    .line 1385
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1387
    sget-boolean v5, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v6, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-eq v5, v6, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1391
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    move v1, v3

    .line 1370
    goto :goto_0

    .line 1389
    :cond_1
    :try_start_1
    const-string/jumbo v5, "processGprsDetached():Reset psOpState as NONE"

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1390
    sget-object v5, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 1391
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1395
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:[Z

    aget-boolean v4, v4, p1

    if-eqz v4, :cond_4

    .line 1398
    iget v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    if-ne p1, v4, :cond_3

    .line 1399
    const-string v4, "DETACHED sim, set current as none"

    invoke-static {v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1400
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    .line 1402
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:[Z

    aput-boolean v3, v4, p1

    .line 1403
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processGprsDetached():Reset as DETACHED state for simId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1404
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v5, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v5, v4, p1

    .line 1408
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1410
    if-eqz v0, :cond_5

    .line 1412
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    .line 1413
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Z

    .line 1414
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_5

    .line 1421
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v1, v0, p1

    .line 1422
    invoke-virtual {p0, p1, v7}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->startMonitorGprsAttachTimer(II)V

    .line 1423
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, v2, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setGprsConnType(II)V

    .line 1459
    :cond_5
    :goto_2
    return-void

    .line 1427
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v0

    .line 1428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processGprsDetached(): gprsState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1429
    iget-boolean v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    if-eqz v4, :cond_5

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v4, :cond_5

    .line 1432
    :cond_7
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    .line 1433
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Z

    .line 1439
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 1440
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    .line 1441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processGprsDetached():ATTACHING for simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isPeerRadioOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1443
    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    if-ne v3, p1, :cond_8

    .line 1444
    const-string/jumbo v0, "processGprsDetached(): request equals detached kick of to check op"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1445
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1446
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1447
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 1448
    :cond_8
    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    if-ne v0, v1, :cond_5

    .line 1449
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    monitor-enter v1

    .line 1450
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processGprsDetached():mDetachResetMode is true,psOpState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1451
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 1452
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v4, v0, v3

    .line 1453
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1454
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    invoke-virtual {p0, v0, v7}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->startMonitorGprsAttachTimer(II)V

    .line 1455
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setGprsConnType(II)V

    goto/16 :goto_2

    .line 1453
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_9
    move v0, v3

    goto/16 :goto_1
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Z

    return p1
.end method

.method private c()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 1893
    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    .line 1894
    if-ne v1, v0, :cond_3

    .line 1895
    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    if-eq v1, v0, :cond_2

    .line 1896
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v1, v2, :cond_0

    .line 1897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DDCDS:Already detaching for simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1898
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    .line 1918
    :goto_0
    return v0

    .line 1901
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v1, v2, :cond_1

    .line 1902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DDCDS:Detach the previous attaching simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1903
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    goto :goto_0

    .line 1908
    :cond_1
    const-string v1, "DDCDS:Invalid cases"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 1913
    :cond_2
    const-string v1, "DDCDS:No GPRS is used on any sim cards"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1918
    goto :goto_0
.end method

.method private c(I)I
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2367
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AT+CGATT=0"

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v2

    .line 2371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeDisableDataConnectivity():for simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2376
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DT]Abort attach procedure by detach command then set as when needed on simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2379
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v1, v0, p1

    .line 2380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DT]change state to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2381
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:[Z

    aput-boolean v2, v0, p1

    .line 2382
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setThisSimAbortGprsAttachByDetach(IZI)V

    .line 2383
    invoke-virtual {p0, p1, v5}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->startMonitorGprsDetachTimer(II)V

    .line 2419
    :cond_0
    :goto_0
    return v4

    .line 2388
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v1, :cond_0

    .line 2390
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v1, :cond_3

    .line 2396
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_2

    .line 2399
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[Z

    aput-boolean v3, v0, p1

    .line 2400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Abort attach procedure by detach command then set as when needed on simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2401
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v1, v0, p1

    .line 2402
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:[Z

    aput-boolean v2, v0, p1

    .line 2403
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setThisSimAbortGprsAttachByDetach(IZI)V

    .line 2404
    invoke-virtual {p0, p1, v5}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->startMonitorGprsDetachTimer(II)V

    goto :goto_0

    .line 2414
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v1, v0, p1

    .line 2415
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 2418
    invoke-virtual {p0, p1, v2, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setThisSimAbortGprsAttachByDetach(IZI)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I
    .locals 1
    .parameter

    .prologue
    .line 75
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    return v0
.end method

.method static synthetic c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)I

    move-result v0

    return v0
.end method

.method static synthetic c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h(Ljava/lang/String;)V

    return-void
.end method

.method private d()I
    .locals 4

    .prologue
    .line 3080
    .line 3083
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gprs_connection_sim_setting"

    const-wide/16 v2, -0x5

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 3084
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v0

    .line 3089
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default Data Setting value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 3091
    return v0
.end method

.method private d(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DT] enableDataConnectivityWithDualPsActive(): sim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2429
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    .line 2430
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v1, v0, p1

    .line 2431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DT]change state to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2433
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->startMonitorGprsAttachTimer(II)V

    .line 2434
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, v2, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setGprsConnType(II)V

    .line 2436
    return v2
.end method

.method static synthetic d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)I

    move-result v0

    return v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 3054
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "supl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hipri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fota"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ims"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cbs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "wap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "net"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cmmail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "rcse"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3068
    :cond_0
    const/4 v0, 0x1

    .line 3070
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    return-object v0
.end method

.method private e(I)I
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2440
    new-array v0, v3, [Ljava/lang/String;

    const-string v4, "AT+CGATT=1"

    aput-object v4, v0, v2

    const-string v4, ""

    aput-object v4, v0, v1

    .line 2441
    new-array v0, v3, [Ljava/lang/String;

    const-string v4, "AT+CGATT=0"

    aput-object v4, v0, v2

    const-string v4, ""

    aput-object v4, v0, v1

    .line 2442
    const-string v0, "WithOnePsActive:"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e(Ljava/lang/String;)V

    .line 2444
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v4, :cond_0

    .line 2445
    const-string v0, "enableDataConnectivityWithOnePsActive-C0"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    move v1, v3

    .line 2657
    :goto_0
    return v1

    .line 2447
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v4, :cond_1

    .line 2448
    const-string v0, "enableDataConnectivityWithOnePsActive-C1"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2449
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    goto :goto_0

    .line 2452
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v4, :cond_2

    .line 2454
    const-string v0, "enableDataConnectivityWithOnePsActive-C2"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2455
    const/4 v1, 0x3

    goto :goto_0

    .line 2457
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v4, :cond_14

    .line 2459
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_f

    .line 2460
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    if-eq v0, p1, :cond_a

    .line 2461
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    iget v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    aget-object v0, v0, v4

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v4, :cond_3

    .line 2463
    const-string v0, "enableDataConnectivityWithOnePsActive-C3"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2464
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    .line 2465
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    goto :goto_0

    .line 2467
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    iget v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    aget-object v0, v0, v4

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v4, :cond_9

    .line 2469
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    if-nez v0, :cond_8

    .line 2470
    const-string v0, "enableDataConnectivityWithOnePsActive-C4"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2471
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    .line 2473
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 2477
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[Z

    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    aget-boolean v0, v0, v3

    if-nez v0, :cond_4

    .line 2480
    :cond_4
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    .line 2481
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Z

    .line 2482
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[Z

    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    aput-boolean v2, v0, v3

    .line 2485
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    if-nez v0, :cond_6

    move v0, v1

    .line 2486
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v4, v3, v0

    .line 2487
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:[Z

    aput-boolean v1, v3, v0

    .line 2497
    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setPeerSimAbortAttachbyDetachOrAsGprsWhenNeededMode(IZI)V

    .line 2498
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->startMonitorGprsDetachTimer(II)V

    .line 2502
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    monitor-enter v2

    .line 2503
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[C1]enableDataConnectivityWithOnePsActive:psOpState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2504
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-ne v0, v3, :cond_7

    .line 2505
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 2510
    :cond_5
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    move v0, v2

    .line 2485
    goto :goto_1

    .line 2508
    :cond_7
    :try_start_1
    sget-boolean v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:Z

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2522
    :cond_8
    const-string v0, "enableDataConnectivityWithOnePsActive-C5"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2524
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    goto/16 :goto_0

    .line 2529
    :cond_9
    const-string v0, "enableDataConnectivityWithOnePsActive-C6"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2530
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    .line 2531
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    .line 2532
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 2542
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setThisSimAbortGprsAttachByDetach(IZI)V

    goto/16 :goto_0

    .line 2550
    :cond_a
    const-string v0, "enableDataConnectivityWithOnePsActive-C7"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2551
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    .line 2553
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 2557
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    if-nez v0, :cond_d

    move v0, v1

    .line 2559
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_b

    .line 2562
    :cond_b
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    .line 2563
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Z

    .line 2564
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[Z

    aput-boolean v2, v3, v0

    .line 2565
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v3, v2, v0

    .line 2566
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:[Z

    aput-boolean v1, v2, v0

    .line 2576
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    invoke-virtual {p0, v2, v1, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setPeerSimAbortAttachbyDetachOrAsGprsWhenNeededMode(IZI)V

    .line 2577
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->startMonitorGprsDetachTimer(II)V

    .line 2581
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    monitor-enter v2

    .line 2582
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[C2]enableDataConnectivityWithOnePsActive:psOpState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2583
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-ne v0, v3, :cond_e

    .line 2584
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 2589
    :cond_c
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_d
    move v0, v2

    .line 2557
    goto :goto_2

    .line 2587
    :cond_e
    :try_start_3
    sget-boolean v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2603
    :cond_f
    const-string v0, "enableDataConnectivityWithOnePsActive-C8"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2604
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    .line 2606
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 2609
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    if-nez v0, :cond_12

    move v0, v1

    .line 2611
    :goto_3
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[Z

    aget-boolean v4, v4, v0

    if-nez v4, :cond_10

    .line 2614
    :cond_10
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    .line 2615
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Z

    .line 2616
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[Z

    aput-boolean v2, v4, v0

    .line 2618
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v4, v2, v0

    .line 2619
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:[Z

    aput-boolean v1, v2, v0

    .line 2629
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setPeerSimAbortAttachbyDetachOrAsGprsWhenNeededMode(IZI)V

    .line 2630
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->startMonitorGprsDetachTimer(II)V

    .line 2634
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    monitor-enter v2

    .line 2635
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[C3]enableDataConnectivityWithOnePsActive:psOpState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2636
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-ne v0, v3, :cond_13

    .line 2637
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 2642
    :cond_11
    monitor-exit v2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_12
    move v0, v2

    .line 2609
    goto :goto_3

    .line 2640
    :cond_13
    :try_start_5
    sget-boolean v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:Z

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2656
    :cond_14
    const-string v0, "enableDataConnectivityWithOnePsActive-C9"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2657
    const/4 v1, 0x4

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    return p1
.end method

.method private e(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "sim1_gprs_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",sim2_gprs_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 3110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "current_gprs_sim_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",req_gprs_sim_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 3111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mExecuteAttachAfterDetach="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mDetachResetMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 3112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mEnableApnTypeReq_1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mEnableApnTypeReq_2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 3113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mServicePowerOffFlag_1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:[Z

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mServicePowerOffFlag_2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:[Z

    aget-boolean v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 3114
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    monitor-enter v1

    .line 3115
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "gprs_op_state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 3116
    monitor-exit v1

    .line 3117
    return-void

    .line 3116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic e(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    return-object v0
.end method

.method private static f(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 3124
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiDataSubUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    return-void
.end method

.method private f(I)Z
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 3076
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->o:[Z

    return-object v0
.end method

.method static synthetic g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    return-object v0
.end method

.method private g(I)V
    .locals 5
    .parameter

    .prologue
    .line 3097
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 3098
    if-eqz v0, :cond_0

    .line 3099
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gprs_connection_sim_setting"

    iget-wide v3, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 3100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set data connection setting to simSlot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " simID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 3106
    :cond_0
    return-void
.end method

.method private static g(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 3128
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiDataSubUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3129
    return-void
.end method

.method static synthetic h(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    return-object v0
.end method

.method private static h(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 3132
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiDataSubUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3133
    return-void
.end method

.method static synthetic i(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[Z

    return-object v0
.end method

.method static synthetic j(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    return-object v0
.end method

.method static synthetic k(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->z:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->x:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    return-object v0
.end method

.method static synthetic n(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I
    .locals 1
    .parameter

    .prologue
    .line 75
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    return v0
.end method

.method static synthetic o(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    return v0
.end method

.method static synthetic p(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Z

    return v0
.end method


# virtual methods
.method public disableApnType(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 1979
    .line 1982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableApnType():type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",call Gemini version"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1983
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1986
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 1987
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v0, v2, :cond_1

    .line 1989
    :cond_0
    const/4 v0, 0x0

    .line 2004
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DAT:Select simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2006
    if-eq v0, v1, :cond_4

    .line 2007
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableApnTypeGemini(Ljava/lang/String;I)I

    move-result v0

    .line 2012
    :goto_1
    return v0

    .line 1993
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 1994
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v0, v2, :cond_5

    .line 1996
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 2002
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()I

    move-result v0

    goto :goto_0

    .line 2009
    :cond_4
    const/4 v0, 0x3

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public declared-synchronized disableApnTypeGemini(Ljava/lang/String;I)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x3

    .line 2893
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableApnTypeGemini():type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",powerOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:[Z

    aget-boolean v3, v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2895
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d()I

    move-result v2

    .line 2897
    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_2

    .line 2899
    :cond_0
    const-string v1, "DATG:SIM_NONE or Invalid"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2981
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 2904
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2905
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not inserted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2893
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2910
    :cond_3
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2914
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v3, v3, p2

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v3, v4, :cond_6

    .line 2915
    const-string v0, "Invoke proxy disableApnType()"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2916
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2918
    if-eq v2, p2, :cond_4

    .line 2919
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setGprsConnType(II)V

    .line 2921
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->disableApnType(Ljava/lang/String;)I

    move-result v0

    .line 2928
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invoke proxy disableApnType2()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2929
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invoke proxy disableApnType3()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 2925
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 2926
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableApnType(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2931
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v3, v3, p2

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v3, v4, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v3, v3, p2

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->f:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v3, v4, :cond_b

    .line 2933
    :cond_7
    const-string v1, "Want to disable apn while attaching is ongoing"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2934
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2936
    if-eq v2, p2, :cond_8

    .line 2937
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->stopMonitorGprsAttachTimer(I)V

    .line 2938
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)I

    .line 2941
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v1, v1, p2

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attaching is due to enable apn type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2943
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2944
    const-string v1, "Attaching is enable then disable with same apn type"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableApnTypeGemini():reset mEnableApnType as NONE for simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2947
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    const-string v2, "NONE"

    aput-object v2, v1, p2

    goto/16 :goto_0

    .line 2950
    :cond_9
    const-string v1, "Attaching:Not allow to have already enabled apn which can be disabled!-C1"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2954
    :cond_a
    const-string v1, "Attaching:Not allow to have already enabled apn which can be disabled!-C2"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2958
    :cond_b
    const-string v0, "Already in Detaching or Detached state"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableApnTypeGemini(): selectActivePhoneProxy("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ").disableApnType("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") in GprsState.DETACHING or GprsState.DETACHED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2962
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->disableApnType(Ljava/lang/String;)I

    .line 2963
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2965
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p2

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->e:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v3, :cond_e

    .line 2967
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)I

    .line 2977
    :cond_c
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableApnTypeGemini():reset mEnableApnType as NONE for simId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2979
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    const-string v2, "NONE"

    aput-object v2, v0, p2

    :cond_d
    move v0, v1

    .line 2981
    goto/16 :goto_0

    .line 2971
    :cond_e
    if-eq v2, p2, :cond_c

    .line 2972
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setGprsConnType(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public disableDataConnectivity()Z
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x6

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1922
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "AT+CGATT=0"

    aput-object v3, v2, v0

    const-string v3, ""

    aput-object v3, v2, v1

    .line 1924
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1927
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDataConnectivityGemini(I)I

    move-result v2

    .line 1928
    if-eq v2, v5, :cond_0

    if-ne v2, v6, :cond_1

    :cond_0
    move v0, v1

    .line 1932
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDataConnectivityGemini(I)I

    move-result v2

    .line 1933
    if-eq v2, v5, :cond_2

    if-ne v2, v6, :cond_3

    :cond_2
    move v0, v1

    .line 1952
    :cond_3
    :goto_0
    return v0

    .line 1940
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()I

    move-result v2

    .line 1941
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DDC:Select simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1942
    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 1943
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDataConnectivityGemini(I)I

    move-result v2

    .line 1945
    if-eq v2, v5, :cond_5

    if-ne v2, v6, :cond_3

    :cond_5
    move v0, v1

    .line 1946
    goto :goto_0
.end method

.method public disableDataConnectivityGemini(I)I
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 2709
    const-string v0, "disableDataConnectivityGemini:"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e(Ljava/lang/String;)V

    .line 2711
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 2712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableDataConnectivityGemini():radio off on simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2716
    const/4 v0, 0x7

    .line 2761
    :goto_0
    return v0

    .line 2719
    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_2

    .line 2720
    :cond_1
    const-string v0, "DDCG:SIM_NONE or Invalid"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    .line 2721
    const/4 v0, 0x5

    goto :goto_0

    .line 2727
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->x:Ljava/lang/Object;

    monitor-enter v1

    .line 2728
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableDataConnectivityGemini:req_ps_state1="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",req_ps_state2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2729
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v2, v0, p1

    .line 2730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableDataConnectivityGemini:updated req_ps_state1="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",req_ps_state2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2731
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2732
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-ne v0, v3, :cond_4

    .line 2734
    const-string v0, "[C4]Kicking off an op and check states"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2735
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2737
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 2739
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2740
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 2741
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2759
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2760
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2761
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 2742
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v3, :cond_5

    .line 2746
    const-string v0, "disableDataConnectivityGemin():current disable sim is attaching, set when needed to abort attaching"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2747
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->stopMonitorGprsAttachTimer(I)V

    .line 2748
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[Z

    const/4 v3, 0x0

    aput-boolean v3, v0, p1

    .line 2749
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v3, v0, p1

    .line 2750
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 2751
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:[Z

    const/4 v3, 0x1

    aput-boolean v3, v0, p1

    .line 2752
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    .line 2753
    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setThisSimAbortGprsAttachByDetach(IZI)V

    .line 2754
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->startMonitorGprsDetachTimer(II)V

    goto :goto_1

    .line 2759
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 2760
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 2757
    :cond_5
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableDataConnectivityGemin():Fail to kick,psOpState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public disableDnsCheck(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1654
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DT]disableDnsCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1657
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    .line 1658
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    .line 1665
    :goto_0
    return-void

    .line 1662
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1663
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    goto :goto_0
.end method

.method public disableDnsCheckGemini(ZI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2279
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->disableDnsCheck(Z)V

    .line 2280
    return-void
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    const/16 v0, 0x63

    .line 1958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableApnType():type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",call Gemini version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1959
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b()I

    move-result v1

    .line 1960
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EAT:Select simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1961
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1964
    const-string v0, "Do not update the data setting"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1966
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableApnTypeGemini(Ljava/lang/String;I)I

    move-result v0

    .line 1973
    :cond_0
    :goto_0
    return v0

    .line 1968
    :cond_1
    if-eq v1, v0, :cond_0

    .line 1973
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public declared-synchronized enableApnTypeGemini(Ljava/lang/String;I)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 2766
    monitor-enter p0

    .line 2768
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2770
    const-string v0, "EATG:SIM_NONE or Invalid"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v0, v1

    .line 2887
    :goto_0
    monitor-exit p0

    return v0

    .line 2775
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2776
    const-string v0, "EATG: APN type is Invalid"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    move v0, v1

    .line 2777
    goto :goto_0

    .line 2780
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gemini enableApnTypeGemini():type="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",simId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",powerOff="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:[Z

    aget-boolean v4, v4, p2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2781
    if-nez p2, :cond_2

    move v4, v2

    .line 2784
    :goto_1
    const-string v0, "default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2785
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v5

    .line 2786
    if-eqz v5, :cond_4

    array-length v0, v5

    if-eqz v0, :cond_4

    move v0, v3

    .line 2787
    :goto_2
    array-length v6, v5

    if-ge v0, v6, :cond_4

    .line 2788
    const-string v6, "default"

    aget-object v7, v5, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v6

    aget-object v7, v5, v0

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/PhoneProxy;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v6, v7, :cond_3

    .line 2790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableApnTypeGemini():Peer SIM still have non default active APN type: activeApnTypes["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v5, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    move v0, v1

    .line 2791
    goto/16 :goto_0

    :cond_2
    move v4, v3

    .line 2781
    goto :goto_1

    .line 2787
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2807
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gemini Before enableApnType:It must detach for peerSimId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",then attach for simId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2808
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d()I

    move-result v5

    .line 2810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gemini enableApnTypeGemini():currentDataConnectionSimId is  "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " and current_use_gprs_sim_id is "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2813
    iget-object v6, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->z:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2814
    :try_start_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2815
    const-string v0, "default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2816
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, v4

    sget-object v7, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v7, :cond_6

    .line 2817
    invoke-virtual {p0, p1, v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableApnTypeGemini(Ljava/lang/String;I)I

    .line 2818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gemini enableApnTypeGemini():change gprs state to DETACHING, sim_id= "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2819
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v7, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v7, v0, v4

    .line 2829
    :cond_5
    :goto_3
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 2830
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableApnTypeGemini():radio off on simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2832
    const/16 v0, 0x62

    monitor-exit v6

    goto/16 :goto_0

    .line 2848
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2766
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2820
    :cond_6
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, v4

    sget-object v7, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v7, :cond_5

    .line 2821
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->stopMonitorGprsAttachTimer(I)V

    .line 2822
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)I

    goto :goto_3

    .line 2826
    :cond_7
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDataConnectivityGemini(I)I

    goto :goto_3

    .line 2836
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "is not inserted"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    .line 2838
    monitor-exit v6

    move v0, v1

    goto/16 :goto_0

    .line 2842
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getServiceStateGemini(I)Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2843
    const-string v0, "The service state is not in service"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h(Ljava/lang/String;)V

    .line 2844
    monitor-exit v6

    move v0, v1

    goto/16 :goto_0

    .line 2847
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableDataConnectivityGemini(I)I

    move-result v0

    .line 2848
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2851
    if-eq v0, v2, :cond_b

    const/4 v4, 0x2

    if-ne v0, v4, :cond_f

    :cond_b
    move v0, v2

    .line 2856
    :goto_4
    :try_start_5
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Z

    const/4 v4, 0x1

    const/4 v6, 0x0

    aput-boolean v6, v3, v4

    .line 2857
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Z

    const/4 v4, 0x0

    const/4 v6, 0x0

    aput-boolean v6, v3, v4

    .line 2858
    if-eqz v0, :cond_11

    .line 2860
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v0, v0, p2

    if-eqz v0, :cond_c

    const-string v0, "NONE"

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "default"

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableApnTypeGemini():notify pdp fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2865
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    const-string v1, "apnFailed"

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/PhoneProxy;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 2867
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aput-object p1, v0, p2

    .line 2869
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p2

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v1, :cond_10

    .line 2870
    const-string/jumbo v0, "proxy enableApnType() is called due to already attached"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2873
    const-string/jumbo v0, "mms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eq v5, p2, :cond_e

    .line 2874
    if-eqz p2, :cond_d

    if-ne p2, v2, :cond_e

    .line 2875
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 2878
    :cond_e
    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(II)I

    move-result v0

    goto/16 :goto_0

    :cond_f
    move v0, v3

    .line 2854
    goto/16 :goto_4

    .line 2882
    :cond_10
    const-string v0, "enable Apn Type is ongoing"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    move v0, v2

    .line 2883
    goto/16 :goto_0

    .line 2886
    :cond_11
    const-string v0, "Can\'t enable:Previous Disable APN is ongoing"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v0, v1

    .line 2887
    goto/16 :goto_0
.end method

.method public enableDataConnectivity()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1873
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "AT+CGATT=1"

    aput-object v3, v2, v0

    const-string v3, ""

    aput-object v3, v2, v1

    .line 1874
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b()I

    move-result v2

    .line 1875
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EDC:Select simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1876
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1878
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(I)V

    .line 1879
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableDataConnectivityGemini(I)I

    move-result v2

    .line 1881
    if-eq v2, v1, :cond_0

    if-ne v2, v5, :cond_1

    :cond_0
    move v0, v1

    .line 1888
    :cond_1
    return v0
.end method

.method public enableDataConnectivityGemini(I)I
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2664
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 2665
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    .line 2666
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableDataConnectivityGemini via GPRS Attach:simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",gprsState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isRadioOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2668
    if-nez v0, :cond_0

    .line 2669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableDataConnectivityGemini():radio off on simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2670
    const/4 v0, 0x4

    .line 2704
    :goto_0
    return v0

    .line 2673
    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_2

    .line 2674
    :cond_1
    const-string v0, "EDCG:SIM_NONE or Invalid"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    move v0, v2

    .line 2675
    goto :goto_0

    .line 2682
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->x:Ljava/lang/Object;

    monitor-enter v2

    .line 2683
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableDataConnectivityGemini:req_ps_state1="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",req_ps_state2="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2684
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v3, v0, p1

    .line 2685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableDataConnectivityGemini:updated req_ps_state1="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",req_ps_state2="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2686
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2687
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v4, :cond_5

    .line 2691
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[C3]Kicking off an op and check states, op_state: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2692
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2693
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 2695
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2696
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 2697
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2702
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2703
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v0, v1

    .line 2704
    goto/16 :goto_0

    .line 2700
    :cond_5
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableDataConnectivityGemin():Fail to kick,psOpState="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    goto :goto_1

    .line 2702
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 2703
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public getActiveApn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1731
    const-string v0, "[DT] getActiveApn"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1732
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1734
    const-string v0, ""

    return-object v0
.end method

.method public getActiveApnGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2304
    const-string v0, ""

    return-object v0
.end method

.method public getActiveApnType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1555
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1556
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveApnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypeGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2297
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActiveApnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1686
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1688
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v2

    .line 1689
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    .line 1691
    if-nez v2, :cond_1

    .line 1693
    if-eqz v0, :cond_0

    .line 1695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DT] 1. getActiveApnTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1726
    :goto_0
    return-object v0

    .line 1700
    :cond_0
    const-string v0, "[DT] 2. getActiveApnTypes=null"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1701
    const/4 v0, 0x0

    goto :goto_0

    .line 1706
    :cond_1
    if-eqz v0, :cond_2

    .line 1708
    array-length v3, v2

    .line 1709
    array-length v4, v0

    .line 1710
    add-int v1, v3, v4

    new-array v1, v1, [Ljava/lang/String;

    .line 1711
    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1712
    invoke-static {v0, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DT] 3. getActiveApnTypes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    move-object v0, v1

    .line 1714
    goto :goto_0

    .line 1718
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DT] 4. getActiveApnTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    move-object v0, v2

    .line 1719
    goto :goto_0

    .line 1725
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1726
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getActiveApnTypesGemini(I)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2291
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApnForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 1561
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1563
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getApnForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1564
    if-nez v0, :cond_0

    .line 1566
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getApnForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1568
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DT]getApnForType==>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1574
    :goto_0
    return-object v0

    .line 1573
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1574
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getApnForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getApnForTypeGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2312
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActiveApnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDataConnectionList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1752
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1754
    const-string v0, "[DT] getCurrentDataConnectionList"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1765
    :goto_0
    return-object v1

    .line 1763
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    goto :goto_0
.end method

.method public getCurrentDataConnectionListGemini(I)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2332
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 3

    .prologue
    .line 1635
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1637
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 1638
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    .line 1639
    sget-object v1, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    if-ne v0, v1, :cond_0

    .line 1641
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    .line 1649
    :goto_0
    return-object v0

    .line 1643
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DT]getDataActivityState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 1648
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1649
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataActivityStateGemini(I)Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1
    .parameter

    .prologue
    .line 2273
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 1746
    const-string v0, "[DT] getDataCallList"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1747
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1748
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataCallList(Landroid/os/Message;)V

    .line 1749
    return-void
.end method

.method public getDataCallListGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2324
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getDataCallList(Landroid/os/Message;)V

    .line 2325
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 3

    .prologue
    .line 1619
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1621
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b()I

    move-result v0

    .line 1622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDataConnectionState()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1623
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1624
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 1630
    :goto_0
    return-object v0

    .line 1627
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 1629
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1630
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 3
    .parameter

    .prologue
    .line 1580
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1582
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 1583
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 1584
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v0, v1, :cond_0

    .line 1586
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 1588
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DT]getDataConnectionState==>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1594
    :goto_0
    return-object v0

    .line 1593
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1594
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataConnectionStateGemini(I)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter

    .prologue
    .line 2261
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionStateGemini(Ljava/lang/String;I)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2267
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 1772
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1774
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1776
    :cond_0
    const-string v0, "[DT] getDataRoamingEnabled: true"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1777
    const/4 v0, 0x1

    .line 1785
    :goto_0
    return v0

    .line 1779
    :cond_1
    const-string v0, "[DT] getDataRoamingEnabled: false"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1780
    const/4 v0, 0x0

    goto :goto_0

    .line 1784
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1785
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public getDataRoamingEnabledGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 2340
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataStateChangedCallback()Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->B:Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 2113
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2116
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DT]:getDnsServers, apnType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2119
    if-nez v0, :cond_0

    .line 2121
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2129
    :cond_0
    :goto_0
    return-object v0

    .line 2128
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 2129
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDnsServersGemini(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3027
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGateway(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 2094
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2097
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getGateway(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2098
    if-nez v0, :cond_0

    .line 2100
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getGateway(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2102
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DT]:getGateway="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2108
    :goto_0
    return-object v0

    .line 2107
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 2108
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getGateway(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGatewayGeminin(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3021
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getGateway(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 2056
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2059
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getInterfaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2060
    if-nez v0, :cond_0

    .line 2062
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getInterfaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2064
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DT]:getInterfaceName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2070
    :goto_0
    return-object v0

    .line 2069
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 2070
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getInterfaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInterfaceNameGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3009
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getInterfaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 2075
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2078
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2079
    if-nez v0, :cond_0

    .line 2081
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2083
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DT]:getIpAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2089
    :goto_0
    return-object v0

    .line 2088
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 2089
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIpAddressGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3015
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdpContextList(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 1740
    const-string v0, "[DT] getPdpContextList"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1741
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1742
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPdpContextList(Landroid/os/Message;)V

    .line 1743
    return-void
.end method

.method public getPdpContextListGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2318
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getPdpContextList(Landroid/os/Message;)V

    .line 2319
    return-void
.end method

.method public isDataConnectivityEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2016
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2031
    :goto_0
    return v1

    .line 2029
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    goto :goto_0
.end method

.method public isDataConnectivityEnabledGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 2989
    const/4 v0, 0x1

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 2038
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2040
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2042
    :cond_0
    const-string v0, "[DT]:isDataConnectivityPossible=true"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2043
    const/4 v0, 0x1

    .line 2051
    :goto_0
    return v0

    .line 2045
    :cond_1
    const-string v0, "[DT]:isDataConnectivityPossible=false"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2046
    const/4 v0, 0x0

    goto :goto_0

    .line 2050
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 2051
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v0

    goto :goto_0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 1600
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1602
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1605
    :cond_0
    const-string v0, "[DT]isDataConnectivityPossible: true"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1606
    const/4 v0, 0x1

    .line 1614
    :goto_0
    return v0

    .line 1608
    :cond_1
    const-string v0, "[DT]isDataConnectivityPossible: false"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1609
    const/4 v0, 0x0

    goto :goto_0

    .line 1613
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1614
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isDataConnectivityPossibleGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 2997
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossibleGemini(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3003
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabled()Z
    .locals 1

    .prologue
    .line 1668
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1670
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1672
    :cond_0
    const-string v0, "[DT]isDnsCheckDisabled=true"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1673
    const/4 v0, 0x1

    .line 1681
    :goto_0
    return v0

    .line 1675
    :cond_1
    const-string v0, "[DT]isDnsCheckDisabled=false"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1676
    const/4 v0, 0x0

    goto :goto_0

    .line 1680
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1681
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isDnsCheckDisabledGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 2285
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isDnsCheckDisabled()Z

    move-result v0

    return v0
.end method

.method public isGprsDetached(I)Z
    .locals 2
    .parameter

    .prologue
    .line 3046
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v1, :cond_0

    .line 3047
    const/4 v0, 0x1

    .line 3049
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGprsDetachingOrDetached(I)Z
    .locals 2
    .parameter

    .prologue
    .line 3037
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v1, :cond_1

    .line 3039
    :cond_0
    const/4 v0, 0x1

    .line 3041
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataActivity()V
    .locals 3

    .prologue
    .line 2134
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2136
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b()I

    move-result v0

    .line 2137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyDataActivity()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2138
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2139
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->notifyDataActivity()V

    .line 2147
    :cond_0
    :goto_0
    return-void

    .line 2144
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 2145
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->notifyDataActivity()V

    goto :goto_0
.end method

.method public notifyDataActivityGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 3033
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->notifyDataActivity()V

    .line 3034
    return-void
.end method

.method public resetAsRadioOff(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1462
    move v1, v2

    :goto_0
    const/4 v0, 0x2

    if-ge v1, v0, :cond_2

    .line 1463
    const/4 v0, 0x1

    shl-int/2addr v0, v1

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1465
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 1466
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetAsRadioOff:setGprsConnType(0) with slot "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1468
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setGprsConnType(II)V

    .line 1462
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1472
    :cond_2
    return-void
.end method

.method public resetGprsRelatedContext(I)V
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x14

    const/4 v1, 0x1

    const/4 v7, -0x1

    const/4 v2, 0x0

    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetGprsRelatedContext():simId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",current_use_gprs_sim_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",request_use_gprs_sim_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetGprsRelatedContext():simId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",sim_gprs_state_1="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",sim_gprs_state_2="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetGprsRelatedContext():simId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",requested_state_1="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",requested_state_2="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetGprsRelatedContext():simId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",mExecuteAttachAfterDetach="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",mDetachResetMode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetGprsRelatedContext():simId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",mEnableApnTypeReq_1="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",mEnableApnTypeReq_2="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1134
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    monitor-enter v3

    .line 1135
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetGprsRelatedContext():simId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",gprs_op_state="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1136
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1138
    if-nez p1, :cond_0

    move v0, v1

    .line 1139
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v3, v4, :cond_8

    .line 1140
    const-string/jumbo v0, "resetGprsRelatedContext:ATTACHING->DETACHED"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1141
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v3, v0, p1

    .line 1142
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    monitor-enter v3

    .line 1143
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1145
    sget-boolean v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-eq v0, v4, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1148
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1136
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_0
    move v0, v2

    .line 1138
    goto :goto_0

    .line 1147
    :cond_1
    :try_start_3
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 1148
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1149
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->stopMonitorGprsAttachTimer(I)V

    .line 1151
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:I

    .line 1152
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1154
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v3, :cond_2

    .line 1156
    iput v7, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    .line 1264
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->x:Ljava/lang/Object;

    monitor-enter v3

    .line 1265
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const/4 v4, 0x0

    aput-object v4, v0, p1

    .line 1266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetGprsRelatedContext():simId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",reset requested_gprs_state as null for simId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1267
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetGprsRelatedContext():reset mEnableApnTypeReq as NONE for simId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1270
    const-string v0, "NONE"

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "default"

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetGprsRelatedContext():notify pdp fail "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1272
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    const-string/jumbo v3, "noSuchPdp"

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/PhoneProxy;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    const-string v3, "NONE"

    aput-object v3, v0, p1

    .line 1275
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[Z

    aput-boolean v2, v0, p1

    .line 1276
    if-eqz p1, :cond_4

    if-ne p1, v1, :cond_5

    .line 1277
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Z

    aput-boolean v2, v0, p1

    .line 1280
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1282
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:[Z

    aput-boolean v2, v0, p1

    .line 1283
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    .line 1284
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Z

    .line 1285
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_6

    .line 1287
    const-string v0, "[DT]both sim1 and sim2 are power off state!!"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1288
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    monitor-enter v1

    .line 1289
    :try_start_5
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1290
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 1291
    const-string/jumbo v0, "resetGprsRelatedContext():reset gprs_op_state = GprsOpState.NONE"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1292
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1293
    iput v7, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    .line 1294
    iput v7, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    .line 1315
    :cond_6
    :goto_2
    return-void

    .line 1161
    :cond_7
    iput v7, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    goto/16 :goto_1

    .line 1163
    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v3, v4, :cond_a

    .line 1166
    const-string/jumbo v3, "resetGprsRelatedContext:ATTACHED->DETACHED"

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1167
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v4, v3, p1

    .line 1168
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:I

    .line 1169
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1171
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v3, v0

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v3, :cond_2

    .line 1173
    iput v7, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    goto/16 :goto_1

    .line 1178
    :cond_9
    iput v7, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    goto/16 :goto_1

    .line 1181
    :cond_a
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v3, v4, :cond_12

    .line 1182
    const-string/jumbo v3, "resetGprsRelatedContext:DETACHING->DETACHED"

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1183
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v4, v3, p1

    .line 1184
    if-nez p1, :cond_b

    const/4 v3, 0x2

    .line 1185
    :goto_3
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1186
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    monitor-enter v3

    .line 1187
    :try_start_6
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v4

    if-nez v4, :cond_c

    .line 1189
    sget-boolean v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:Z

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v5, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-eq v4, v5, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1192
    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 1184
    :cond_b
    const/4 v3, 0x4

    goto :goto_3

    .line 1191
    :cond_c
    :try_start_7
    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 1192
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1193
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->stopMonitorGprsDetachTimer(I)V

    .line 1196
    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    if-ne v3, p1, :cond_d

    .line 1197
    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    iput v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:I

    .line 1199
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1201
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v3, v3, v0

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v3, v4, :cond_d

    .line 1203
    iput v7, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    .line 1212
    :cond_d
    :goto_4
    iget-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    if-eqz v3, :cond_11

    .line 1216
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1218
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dual_sim_mode_setting"

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1220
    if-nez v0, :cond_10

    and-int/lit8 v0, v4, 0x1

    .line 1223
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetGprsRelatedContext():simId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",airplaneMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dualSimMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1224
    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    .line 1225
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1226
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    monitor-enter v3

    .line 1228
    :try_start_8
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 1229
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1231
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetGprsRelatedContext():simId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",kick off a op since peer SIM radio is on."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1232
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1233
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1234
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1208
    :cond_f
    iput v7, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    goto/16 :goto_4

    .line 1220
    :cond_10
    and-int/lit8 v0, v4, 0x2

    goto :goto_5

    .line 1229
    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    .line 1237
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetGprsRelatedContext():simId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",Not request to execute attach after detach caused by radio off"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1238
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:[Z

    aput-boolean v2, v0, p1

    .line 1239
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Z

    goto/16 :goto_1

    .line 1242
    :cond_12
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v3, v4, :cond_2

    .line 1247
    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    if-ne v3, p1, :cond_2

    .line 1248
    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    iput v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:I

    .line 1249
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1251
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v3, v0

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v3, :cond_2

    .line 1253
    iput v7, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    goto/16 :goto_1

    .line 1258
    :cond_13
    iput v7, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    goto/16 :goto_1

    .line 1267
    :catchall_4
    move-exception v0

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0

    .line 1292
    :catchall_5
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v0

    .line 1297
    :cond_14
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_6

    .line 1298
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    monitor-enter v1

    .line 1299
    :try_start_c
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    if-eqz v0, :cond_15

    .line 1301
    const-string/jumbo v0, "resetGprsRelatedContext():remove a delayed kick of for attach due to radio off on both sim"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1302
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    .line 1304
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:[Z

    const/4 v2, 0x0

    aput-boolean v2, v0, p1

    .line 1305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Z

    .line 1308
    :cond_15
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 1309
    const-string/jumbo v0, "resetGprsRelatedContext():reset gprs_op_state = GprsOpState.NONE"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1310
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 1311
    iput v7, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    .line 1312
    iput v7, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    goto/16 :goto_2

    .line 1310
    :catchall_6
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v0
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1790
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DT] setDataRoamingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1793
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 1794
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 1801
    :goto_0
    return-void

    .line 1798
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1799
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method public setDataRoamingEnabledGemini(ZI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2346
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->setDataRoamingEnabled(Z)V

    .line 2347
    return-void
.end method

.method public setPeerSimAbortAttachbyDetachOrAsGprsWhenNeededMode(IZI)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2196
    .line 2197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set peerSimId abort attach procedure or as When Needed:before attach for this actionSimId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",with detachPeer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",index="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2198
    if-nez p1, :cond_1

    move v2, v3

    .line 2204
    :goto_0
    if-nez v2, :cond_2

    move v0, v1

    .line 2206
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneType()I

    move-result v5

    if-ne v5, v3, :cond_4

    .line 2208
    new-array v1, v1, [Ljava/lang/String;

    const-string v5, "AT+EGTYPE=0,1"

    aput-object v5, v1, v4

    const-string v5, ""

    aput-object v5, v1, v3

    .line 2209
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    invoke-virtual {v5, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/android/internal/telephony/PhoneProxy;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 2210
    if-nez v2, :cond_3

    const-string v0, "gprs_connection_mode_setting_sim1"

    .line 2212
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2213
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->removeGprsConnTypeRetry()V

    .line 2223
    :goto_3
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2224
    instance-of v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v1, :cond_0

    .line 2225
    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    .line 2226
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->abortDataConnection()V

    .line 2228
    :cond_0
    return-void

    :cond_1
    move v2, v4

    .line 2201
    goto :goto_0

    .line 2204
    :cond_2
    const/4 v0, 0x4

    goto :goto_1

    .line 2210
    :cond_3
    const-string v0, "gprs_connection_mode_setting_sim2"

    goto :goto_2

    .line 2215
    :cond_4
    new-array v1, v1, [Ljava/lang/String;

    const-string v5, "AT+CGATT=0"

    aput-object v5, v1, v4

    const-string v5, ""

    aput-object v5, v1, v3

    .line 2216
    if-eqz p2, :cond_5

    .line 2217
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    invoke-virtual {v5, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/android/internal/telephony/PhoneProxy;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 2220
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, v4, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setGprsConnType(II)V

    goto :goto_3
.end method

.method public setThisSimAbortGprsAttachByDetach(IZI)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set thisSimId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":abort its attach procedure by detach command,with inx="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",detachFlag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2232
    if-nez p1, :cond_1

    move v0, v1

    .line 2233
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneType()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 2235
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "AT+EGTYPE=0,1"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v3

    .line 2236
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/telephony/PhoneProxy;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 2237
    if-nez p1, :cond_2

    const-string v0, "gprs_connection_mode_setting_sim1"

    .line 2239
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2240
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->removeGprsConnTypeRetry()V

    .line 2249
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2250
    instance-of v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v1, :cond_0

    .line 2251
    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    .line 2252
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->abortDataConnection()V

    .line 2254
    :cond_0
    return-void

    .line 2232
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 2237
    :cond_2
    const-string v0, "gprs_connection_mode_setting_sim2"

    goto :goto_1

    .line 2242
    :cond_3
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "AT+CGATT=0"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v3

    .line 2243
    if-eqz p2, :cond_4

    .line 2244
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/telephony/PhoneProxy;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 2246
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, v4, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setGprsConnType(II)V

    goto :goto_2
.end method

.method public startMonitorGprsAttachTimer(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2154
    const-string v0, "Before starting a new one, remove old monitor grps attach event first"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2155
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->stopMonitorGprsAttachTimer(I)V

    .line 2156
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->o:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 2157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startMonitorGprsAttachTimer():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",with index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2158
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2159
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2160
    return-void
.end method

.method public startMonitorGprsDetachTimer(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2177
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->stopMonitorGprsDetachTimer(I)V

    .line 2178
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 2179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startMonitorGprsDetachTimer():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",with index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2180
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2181
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2182
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2183
    return-void
.end method

.method public stopMonitorGprsAttachTimer(I)V
    .locals 2
    .parameter

    .prologue
    .line 2164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopMonitorGprsAttachTimer():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2165
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->o:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 2166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopMonitorGprsAttachTimer():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " successfully"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2167
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->o:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 2168
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2170
    :cond_0
    return-void
.end method

.method public stopMonitorGprsDetachTimer(I)V
    .locals 2
    .parameter

    .prologue
    .line 2187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopMonitorGprsDetachTimer():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2188
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 2189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopMonitorGprsDetachTimer():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " successfully"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2190
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 2191
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2193
    :cond_0
    return-void
.end method
