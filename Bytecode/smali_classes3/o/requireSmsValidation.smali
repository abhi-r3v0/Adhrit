.class public final Lo/requireSmsValidation;
.super Lo/deleteUnsentReports;


# instance fields
.field private final ICustomTabsCallback:Lo/addItemDecoration$onPostMessage;

.field private final onMessageChannelReady:Landroid/content/Context;

.field private final onNavigationEvent:Lo/onVerificationFailed;

.field private final onPostMessage:Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;Lo/onVerificationFailed;)V
    .locals 2

    invoke-direct {p0}, Lo/deleteUnsentReports;-><init>()V

    new-instance v0, Lo/addItemDecoration$onPostMessage;

    const-string v1, "AssetPackExtractionService"

    invoke-direct {v0, v1}, Lo/addItemDecoration$onPostMessage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/requireSmsValidation;->ICustomTabsCallback:Lo/addItemDecoration$onPostMessage;

    iput-object p1, p0, Lo/requireSmsValidation;->onMessageChannelReady:Landroid/content/Context;

    iput-object p2, p0, Lo/requireSmsValidation;->onPostMessage:Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;

    iput-object p3, p0, Lo/requireSmsValidation;->onNavigationEvent:Lo/onVerificationFailed;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Landroid/os/Bundle;Lo/FirebaseCrashlytics$1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/requireSmsValidation;->ICustomTabsCallback:Lo/addItemDecoration$onPostMessage;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "updateServiceState AIDL call"

    invoke-virtual {v0, v2, v1}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lo/requireSmsValidation;->onMessageChannelReady:Landroid/content/Context;

    invoke-static {v0}, Lo/DependencyCycleException;->onMessageChannelReady(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/requireSmsValidation;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "com.android.vending"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/requireSmsValidation;->onPostMessage:Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;->extraCallback(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p2, p1, v0}, Lo/FirebaseCrashlytics$1;->onNavigationEvent(Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p2, p1}, Lo/FirebaseCrashlytics$1;->onPostMessage(Landroid/os/Bundle;)V

    iget-object p1, p0, Lo/requireSmsValidation;->onPostMessage:Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;->ICustomTabsCallback()V

    return-void
.end method

.method public final onPostMessage(Lo/FirebaseCrashlytics$1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/requireSmsValidation;->onNavigationEvent:Lo/onVerificationFailed;

    .line 2000
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Lo/onVerificationFailed;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "assetpacks"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1000
    invoke-static {v1}, Lo/onVerificationFailed;->onMessageChannelReady(Ljava/io/File;)Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1, v0}, Lo/FirebaseCrashlytics$1;->onMessageChannelReady(Landroid/os/Bundle;)V

    return-void
.end method
