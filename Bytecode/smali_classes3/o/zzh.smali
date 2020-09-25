.class Lo/zzh;
.super Lo/FirebaseCrashlytics;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/FirebaseCrashlytics;"
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/doOnboarding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/doOnboarding<",
            "TT;>;"
        }
    .end annotation
.end field

.field private synthetic extraCallback:Lo/setTimeout;


# direct methods
.method constructor <init>(Lo/setTimeout;Lo/doOnboarding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/doOnboarding<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lo/zzh;->extraCallback:Lo/setTimeout;

    invoke-direct {p0}, Lo/FirebaseCrashlytics;-><init>()V

    iput-object p2, p0, Lo/zzh;->ICustomTabsCallback:Lo/doOnboarding;

    return-void
.end method

.method constructor <init>(Lo/setTimeout;Lo/doOnboarding;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/zzh;-><init>(Lo/setTimeout;Lo/doOnboarding;)V

    return-void
.end method

.method constructor <init>(Lo/setTimeout;Lo/doOnboarding;C)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/zzh;-><init>(Lo/setTimeout;Lo/doOnboarding;)V

    return-void
.end method

.method constructor <init>(Lo/setTimeout;Lo/doOnboarding;S)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/zzh;-><init>(Lo/setTimeout;Lo/doOnboarding;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 3

    iget-object v0, p0, Lo/zzh;->extraCallback:Lo/setTimeout;

    .line 13000
    iget-object v0, v0, Lo/setTimeout;->onPostMessage:Lo/isSet;

    .line 14000
    new-instance v1, Lo/getInterface;

    invoke-direct {v1, v0}, Lo/getInterface;-><init>(Lo/isSet;)V

    invoke-virtual {v0, v1}, Lo/isSet;->extraCallback(Lo/removeDependent;)V

    .line 15000
    sget-object v0, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onRequestDownloadInfo()"

    invoke-virtual {v0, v2, v1}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final ICustomTabsCallback(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lo/zzh;->extraCallback:Lo/setTimeout;

    .line 35000
    iget-object v0, v0, Lo/setTimeout;->onPostMessage:Lo/isSet;

    .line 36000
    new-instance v1, Lo/getInterface;

    invoke-direct {v1, v0}, Lo/getInterface;-><init>(Lo/isSet;)V

    invoke-virtual {v0, v1}, Lo/isSet;->extraCallback(Lo/removeDependent;)V

    .line 37000
    sget-object v0, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "session_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onNotifySessionFailed(%d)"

    invoke-virtual {v0, p1, v1}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public extraCallback(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    iget-object p2, p0, Lo/zzh;->extraCallback:Lo/setTimeout;

    .line 7000
    iget-object p2, p2, Lo/setTimeout;->extraCallback:Lo/isSet;

    .line 8000
    new-instance v0, Lo/getInterface;

    invoke-direct {v0, p2}, Lo/getInterface;-><init>(Lo/isSet;)V

    invoke-virtual {p2, v0}, Lo/isSet;->extraCallback(Lo/removeDependent;)V

    .line 9000
    sget-object p2, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "keep_alive"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "onKeepAlive(%b)"

    invoke-virtual {p2, p1, v0}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onMessageChannelReady(I)V
    .locals 3

    iget-object v0, p0, Lo/zzh;->extraCallback:Lo/setTimeout;

    .line 1000
    iget-object v0, v0, Lo/setTimeout;->onPostMessage:Lo/isSet;

    .line 2000
    new-instance v1, Lo/getInterface;

    invoke-direct {v1, v0}, Lo/getInterface;-><init>(Lo/isSet;)V

    invoke-virtual {v0, v1}, Lo/isSet;->extraCallback(Lo/removeDependent;)V

    .line 3000
    sget-object v0, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onStartDownload(%d)"

    invoke-virtual {v0, p1, v1}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onMessageChannelReady(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lo/zzh;->extraCallback:Lo/setTimeout;

    .line 16000
    iget-object v0, v0, Lo/setTimeout;->onPostMessage:Lo/isSet;

    .line 17000
    new-instance v1, Lo/getInterface;

    invoke-direct {v1, v0}, Lo/getInterface;-><init>(Lo/isSet;)V

    invoke-virtual {v0, v1}, Lo/isSet;->extraCallback(Lo/removeDependent;)V

    const-string v0, "error_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 18000
    sget-object v0, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onError(%d)"

    invoke-virtual {v0, v2, v1}, Lo/addItemDecoration$onPostMessage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lo/zzh;->ICustomTabsCallback:Lo/doOnboarding;

    new-instance v1, Lcom/google/android/play/core/assetpacks/AssetPackException;

    invoke-direct {v1, p1}, Lcom/google/android/play/core/assetpacks/AssetPackException;-><init>(I)V

    .line 19000
    iget-object p1, v0, Lo/doOnboarding;->extraCallback:Lo/Onboarding;

    invoke-virtual {p1, v1}, Lo/Onboarding;->extraCallback(Ljava/lang/Exception;)Z

    return-void
.end method

.method public onMessageChannelReady(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lo/zzh;->extraCallback:Lo/setTimeout;

    .line 4000
    iget-object p1, p1, Lo/setTimeout;->onPostMessage:Lo/isSet;

    .line 5000
    new-instance v0, Lo/getInterface;

    invoke-direct {v0, p1}, Lo/getInterface;-><init>(Lo/isSet;)V

    invoke-virtual {p1, v0}, Lo/isSet;->extraCallback(Lo/removeDependent;)V

    .line 6000
    sget-object p1, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onGetSessionStates"

    invoke-virtual {p1, v1, v0}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 3

    iget-object v0, p0, Lo/zzh;->extraCallback:Lo/setTimeout;

    .line 38000
    iget-object v0, v0, Lo/setTimeout;->onPostMessage:Lo/isSet;

    .line 39000
    new-instance v1, Lo/getInterface;

    invoke-direct {v1, v0}, Lo/getInterface;-><init>(Lo/isSet;)V

    invoke-virtual {v0, v1}, Lo/isSet;->extraCallback(Lo/removeDependent;)V

    .line 40000
    sget-object v0, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onRemoveModule()"

    invoke-virtual {v0, v2, v1}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onNavigationEvent(I)V
    .locals 3

    iget-object v0, p0, Lo/zzh;->extraCallback:Lo/setTimeout;

    .line 26000
    iget-object v0, v0, Lo/setTimeout;->onPostMessage:Lo/isSet;

    .line 27000
    new-instance v1, Lo/getInterface;

    invoke-direct {v1, v0}, Lo/getInterface;-><init>(Lo/isSet;)V

    invoke-virtual {v0, v1}, Lo/isSet;->extraCallback(Lo/removeDependent;)V

    .line 28000
    sget-object v0, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onGetSession(%d)"

    invoke-virtual {v0, p1, v1}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onNavigationEvent(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lo/zzh;->extraCallback:Lo/setTimeout;

    .line 29000
    iget-object v0, v0, Lo/setTimeout;->onPostMessage:Lo/isSet;

    .line 30000
    new-instance v1, Lo/getInterface;

    invoke-direct {v1, v0}, Lo/getInterface;-><init>(Lo/isSet;)V

    invoke-virtual {v0, v1}, Lo/isSet;->extraCallback(Lo/removeDependent;)V

    .line 31000
    sget-object v0, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "module_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "slice_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "chunk_number"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "session_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const-string p1, "onNotifyChunkTransferred(%s, %s, %d, session=%d)"

    invoke-virtual {v0, p1, v1}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onNavigationEvent(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Lo/zzh;->extraCallback:Lo/setTimeout;

    .line 10000
    iget-object p1, p1, Lo/setTimeout;->onPostMessage:Lo/isSet;

    .line 11000
    new-instance p2, Lo/getInterface;

    invoke-direct {p2, p1}, Lo/getInterface;-><init>(Lo/isSet;)V

    invoke-virtual {p1, p2}, Lo/isSet;->extraCallback(Lo/removeDependent;)V

    .line 12000
    sget-object p1, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "onGetChunkFileDescriptor"

    invoke-virtual {p1, v0, p2}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 3

    iget-object v0, p0, Lo/zzh;->extraCallback:Lo/setTimeout;

    .line 23000
    iget-object v0, v0, Lo/setTimeout;->onPostMessage:Lo/isSet;

    .line 24000
    new-instance v1, Lo/getInterface;

    invoke-direct {v1, v0}, Lo/getInterface;-><init>(Lo/isSet;)V

    invoke-virtual {v0, v1}, Lo/isSet;->extraCallback(Lo/removeDependent;)V

    .line 25000
    sget-object v0, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onCancelDownloads()"

    invoke-virtual {v0, v2, v1}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onPostMessage(I)V
    .locals 3

    iget-object v0, p0, Lo/zzh;->extraCallback:Lo/setTimeout;

    .line 20000
    iget-object v0, v0, Lo/setTimeout;->onPostMessage:Lo/isSet;

    .line 21000
    new-instance v1, Lo/getInterface;

    invoke-direct {v1, v0}, Lo/getInterface;-><init>(Lo/isSet;)V

    invoke-virtual {v0, v1}, Lo/isSet;->extraCallback(Lo/removeDependent;)V

    .line 22000
    sget-object v0, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onCancelDownload(%d)"

    invoke-virtual {v0, p1, v1}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onPostMessage(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lo/zzh;->extraCallback:Lo/setTimeout;

    .line 32000
    iget-object v0, v0, Lo/setTimeout;->onPostMessage:Lo/isSet;

    .line 33000
    new-instance v1, Lo/getInterface;

    invoke-direct {v1, v0}, Lo/getInterface;-><init>(Lo/isSet;)V

    invoke-virtual {v0, v1}, Lo/isSet;->extraCallback(Lo/removeDependent;)V

    .line 34000
    sget-object v0, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "module_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "session_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "onNotifyModuleCompleted(%s, sessionId=%d)"

    invoke-virtual {v0, p1, v1}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
