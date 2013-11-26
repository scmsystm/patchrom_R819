.class Lcom/android/server/pm/PackageManagerService$MoveParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MoveParams"
.end annotation


# instance fields
.field final flags:I

.field mRet:I

.field final observer:Landroid/content/pm/IPackageMoveObserver;

.field final packageName:Ljava/lang/String;

.field final srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field final targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field uid:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Landroid/content/pm/IPackageMoveObserver;ILjava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;)V
    .locals 3
    .parameter
    .parameter "srcArgs"
    .parameter "observer"
    .parameter "flags"
    .parameter "packageName"
    .parameter "dataDir"
    .parameter "uid"
    .parameter "user"

    .prologue
    .line 6933
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 6934
    invoke-direct {p0, p1, p8}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 6935
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 6936
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->observer:Landroid/content/pm/IPackageMoveObserver;

    .line 6937
    iput p4, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->flags:I

    .line 6938
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    .line 6939
    iput p7, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->uid:I

    .line 6940
    if-eqz p2, :cond_0

    .line 6941
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 6942
    .local v0, packageUri:Landroid/net/Uri;
    #calls: Lcom/android/server/pm/PackageManagerService;->createInstallArgs(Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    invoke-static {p1, v0, p4, p5, p6}, Lcom/android/server/pm/PackageManagerService;->access$3400(Lcom/android/server/pm/PackageManagerService;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 6946
    .end local v0           #packageUri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 6944
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    goto :goto_0
.end method


# virtual methods
.method handleReturnCode()V
    .locals 4

    .prologue
    .line 6993
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->mRet:I

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostInstall(II)I

    .line 6994
    const/4 v0, -0x6

    .line 6995
    .local v0, currentStatus:I
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->mRet:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 6996
    const/4 v0, 0x1

    .line 7000
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #calls: Lcom/android/server/pm/PackageManagerService;->processPendingMove(Lcom/android/server/pm/PackageManagerService$MoveParams;I)V
    invoke-static {v1, p0, v0}, Lcom/android/server/pm/PackageManagerService;->access$3500(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$MoveParams;I)V

    .line 7001
    return-void

    .line 6997
    :cond_1
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->mRet:I

    const/4 v2, -0x4

    if-ne v1, v2, :cond_0

    .line 6998
    const/4 v0, -0x1

    goto :goto_0
.end method

.method handleServiceError()V
    .locals 1

    .prologue
    .line 7005
    const/16 v0, -0x6e

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->mRet:I

    .line 7006
    return-void
.end method

.method public handleStartCopy()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 6949
    const/4 v1, -0x4

    iput v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->mRet:I

    .line 6951
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->checkFreeStorage(Lcom/android/internal/app/IMediaContainerService;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6952
    const-string v1, "PackageManager"

    const-string v2, "Insufficient storage to install"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6989
    :cond_0
    :goto_0
    return-void

    .line 6956
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPreCopy()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->mRet:I

    .line 6957
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->mRet:I

    if-ne v1, v4, :cond_0

    .line 6961
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->mRet:I

    .line 6962
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->mRet:I

    if-eq v1, v4, :cond_2

    .line 6963
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->uid:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostCopy(I)I

    goto :goto_0

    .line 6967
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->uid:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostCopy(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->mRet:I

    .line 6968
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->mRet:I

    if-ne v1, v4, :cond_0

    .line 6972
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->mRet:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPreInstall(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->mRet:I

    .line 6973
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->mRet:I

    if-ne v1, v4, :cond_0

    .line 6977
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_SD_INSTALL:Z

    if-eqz v1, :cond_0

    .line 6978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6979
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v1, :cond_3

    .line 6980
    const-string v1, "src: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6981
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6983
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v1, :cond_4

    .line 6984
    const-string v1, " target : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6985
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6987
    :cond_4
    const-string v1, "PackageManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
