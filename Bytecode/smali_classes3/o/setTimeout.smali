.class public final Lo/setTimeout;
.super Ljava/lang/Object;

# interfaces
.implements Lo/toGraph;


# static fields
.field private static final ICustomTabsCallback$Stub:Landroid/content/Intent;

.field static final onMessageChannelReady:Lo/addItemDecoration$onPostMessage;


# instance fields
.field final ICustomTabsCallback:Ljava/lang/String;

.field final asBinder:Ljava/util/concurrent/atomic/AtomicBoolean;

.field extraCallback:Lo/isSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isSet<",
            "Lo/recordException;",
            ">;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;

.field onPostMessage:Lo/isSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isSet<",
            "Lo/recordException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/addItemDecoration$onPostMessage;

    const-string v1, "AssetPackServiceImpl"

    invoke-direct {v0, v1}, Lo/addItemDecoration$onPostMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.play.core.assetmoduleservice.BIND_ASSET_MODULE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lo/setTimeout;->ICustomTabsCallback$Stub:Landroid/content/Intent;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lo/setTimeout;->asBinder:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/setTimeout;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p2, p0, Lo/setTimeout;->onNavigationEvent:Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;

    invoke-static {p1}, Lo/DependencyCycleException;->onMessageChannelReady(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lo/isSet;

    .line 1000
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    sget-object v2, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    sget-object v4, Lo/setTimeout;->ICustomTabsCallback$Stub:Landroid/content/Intent;

    sget-object v5, Lo/OrderPaymentJsonAdapter$onMessageChannelReady;->ICustomTabsCallback:Lo/optional;

    const-string v3, "AssetPackService"

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lo/isSet;-><init>(Landroid/content/Context;Lo/addItemDecoration$onPostMessage;Ljava/lang/String;Landroid/content/Intent;Lo/optional;)V

    iput-object p2, p0, Lo/setTimeout;->onPostMessage:Lo/isSet;

    new-instance p2, Lo/isSet;

    .line 2000
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v7, p1

    :goto_1
    sget-object v8, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    sget-object v10, Lo/setTimeout;->ICustomTabsCallback$Stub:Landroid/content/Intent;

    sget-object v11, Lo/getCustomAmount;->onMessageChannelReady:Lo/optional;

    const-string v9, "AssetPackService-keepAlive"

    move-object v6, p2

    invoke-direct/range {v6 .. v11}, Lo/isSet;-><init>(Landroid/content/Context;Lo/addItemDecoration$onPostMessage;Ljava/lang/String;Landroid/content/Intent;Lo/optional;)V

    iput-object p2, p0, Lo/setTimeout;->extraCallback:Lo/isSet;

    :cond_2
    sget-object p1, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "AssetPackService initiated."

    invoke-virtual {p1, v0, p2}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static onNavigationEvent()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "playcore_version_code"

    const/16 v2, 0x2a30

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const-string v2, "supported_compression_formats"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "supported_patch_formats"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private static onPostMessage()Lo/getMinidumpFile;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/getMinidumpFile<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, -0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "onError(%d)"

    invoke-virtual {v0, v3, v1}, Lo/addItemDecoration$onPostMessage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/play/core/assetpacks/AssetPackException;

    invoke-direct {v0, v2}, Lcom/google/android/play/core/assetpacks/AssetPackException;-><init>(I)V

    invoke-static {v0}, Lo/extraCallback;->onMessageChannelReady(Ljava/lang/Exception;)Lo/getMinidumpFile;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(ILjava/lang/String;Ljava/lang/String;I)Lo/getMinidumpFile;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lo/getMinidumpFile<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/setTimeout;->onPostMessage:Lo/isSet;

    if-nez v0, :cond_0

    invoke-static {}, Lo/setTimeout;->onPostMessage()Lo/getMinidumpFile;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "getChunkFileDescriptor(%s, %s, %d, session=%d)"

    invoke-virtual {v0, v2, v1}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lo/doOnboarding;

    invoke-direct {v0}, Lo/doOnboarding;-><init>()V

    iget-object v1, p0, Lo/setTimeout;->onPostMessage:Lo/isSet;

    new-instance v2, Lo/getSecret;

    move-object v3, v2

    move-object v4, p0

    move-object v5, v0

    move v6, p1

    move-object v7, p2

    move-object v8, p3

    move v9, p4

    move-object v10, v0

    invoke-direct/range {v3 .. v10}, Lo/getSecret;-><init>(Lo/setTimeout;Lo/doOnboarding;ILjava/lang/String;Ljava/lang/String;ILo/doOnboarding;)V

    .line 14000
    new-instance p1, Lo/optionalProvider;

    .line 15000
    iget-object p2, v2, Lo/removeDependent;->extraCallback:Lo/doOnboarding;

    .line 14000
    invoke-direct {p1, v1, p2, v2}, Lo/optionalProvider;-><init>(Lo/isSet;Lo/doOnboarding;Lo/removeDependent;)V

    invoke-virtual {v1, p1}, Lo/isSet;->extraCallback(Lo/removeDependent;)V

    .line 16000
    iget-object p1, v0, Lo/doOnboarding;->extraCallback:Lo/Onboarding;

    return-object p1
.end method

.method public final ICustomTabsCallback(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, p1, p2, v0}, Lo/setTimeout;->ICustomTabsCallback(ILjava/lang/String;I)V

    return-void
.end method

.method final ICustomTabsCallback(ILjava/lang/String;I)V
    .locals 10

    iget-object v0, p0, Lo/setTimeout;->onPostMessage:Lo/isSet;

    if-eqz v0, :cond_0

    sget-object v0, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "notifyModuleCompleted"

    invoke-virtual {v0, v2, v1}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v8, Lo/doOnboarding;

    invoke-direct {v8}, Lo/doOnboarding;-><init>()V

    iget-object v0, p0, Lo/setTimeout;->onPostMessage:Lo/isSet;

    new-instance v1, Lo/resolveSignIn;

    move-object v3, v1

    move-object v4, p0

    move-object v5, v8

    move v6, p1

    move-object v7, p2

    move v9, p3

    invoke-direct/range {v3 .. v9}, Lo/resolveSignIn;-><init>(Lo/setTimeout;Lo/doOnboarding;ILjava/lang/String;Lo/doOnboarding;I)V

    .line 10000
    new-instance p1, Lo/optionalProvider;

    .line 11000
    iget-object p2, v1, Lo/removeDependent;->extraCallback:Lo/doOnboarding;

    .line 10000
    invoke-direct {p1, v0, p2, v1}, Lo/optionalProvider;-><init>(Lo/isSet;Lo/doOnboarding;Lo/removeDependent;)V

    invoke-virtual {v0, p1}, Lo/isSet;->extraCallback(Lo/removeDependent;)V

    return-void

    .line 0
    :cond_0
    new-instance p2, Lo/getFactory;

    const-string p3, "The Play Store app is not installed or is an unofficial version."

    invoke-direct {p2, p3, p1}, Lo/getFactory;-><init>(Ljava/lang/String;I)V

    throw p2
.end method

.method public final extraCallback(Ljava/util/Map;)Lo/getMinidumpFile;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Lo/getMinidumpFile<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lo/setTimeout;->onPostMessage:Lo/isSet;

    if-nez v0, :cond_0

    invoke-static {}, Lo/setTimeout;->onPostMessage()Lo/getMinidumpFile;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "syncPacks"

    invoke-virtual {v0, v2, v1}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lo/doOnboarding;

    invoke-direct {v0}, Lo/doOnboarding;-><init>()V

    iget-object v1, p0, Lo/setTimeout;->onPostMessage:Lo/isSet;

    new-instance v2, Lo/getEnrolledFactors;

    invoke-direct {v2, p0, v0, p1, v0}, Lo/getEnrolledFactors;-><init>(Lo/setTimeout;Lo/doOnboarding;Ljava/util/Map;Lo/doOnboarding;)V

    .line 5000
    new-instance p1, Lo/optionalProvider;

    .line 6000
    iget-object v3, v2, Lo/removeDependent;->extraCallback:Lo/doOnboarding;

    .line 5000
    invoke-direct {p1, v1, v3, v2}, Lo/optionalProvider;-><init>(Lo/isSet;Lo/doOnboarding;Lo/removeDependent;)V

    invoke-virtual {v1, p1}, Lo/isSet;->extraCallback(Lo/removeDependent;)V

    .line 7000
    iget-object p1, v0, Lo/doOnboarding;->extraCallback:Lo/Onboarding;

    return-object p1
.end method

.method public final declared-synchronized extraCallback()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/setTimeout;->extraCallback:Lo/isSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const-string v2, "Keep alive connection manager is not initialized."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lo/addItemDecoration$onPostMessage;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const-string v2, "keepAlive"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lo/setTimeout;->asBinder:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const-string v2, "Service is already kept alive."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    new-instance v0, Lo/doOnboarding;

    invoke-direct {v0}, Lo/doOnboarding;-><init>()V

    iget-object v1, p0, Lo/setTimeout;->extraCallback:Lo/isSet;

    new-instance v2, Lo/getSmsCode;

    invoke-direct {v2, p0, v0, v0}, Lo/getSmsCode;-><init>(Lo/setTimeout;Lo/doOnboarding;Lo/doOnboarding;)V

    .line 17000
    new-instance v0, Lo/optionalProvider;

    .line 18000
    iget-object v3, v2, Lo/removeDependent;->extraCallback:Lo/doOnboarding;

    .line 17000
    invoke-direct {v0, v1, v3, v2}, Lo/optionalProvider;-><init>(Lo/isSet;Lo/doOnboarding;Lo/removeDependent;)V

    invoke-virtual {v1, v0}, Lo/isSet;->extraCallback(Lo/removeDependent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final extraCallback(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/setTimeout;->onPostMessage:Lo/isSet;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "cancelDownloads(%s)"

    invoke-virtual {v0, v2, v1}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lo/doOnboarding;

    invoke-direct {v0}, Lo/doOnboarding;-><init>()V

    iget-object v1, p0, Lo/setTimeout;->onPostMessage:Lo/isSet;

    new-instance v2, Lo/getFactorId;

    invoke-direct {v2, p0, v0, p1, v0}, Lo/getFactorId;-><init>(Lo/setTimeout;Lo/doOnboarding;Ljava/util/List;Lo/doOnboarding;)V

    .line 3000
    new-instance p1, Lo/optionalProvider;

    .line 4000
    iget-object v0, v2, Lo/removeDependent;->extraCallback:Lo/doOnboarding;

    .line 3000
    invoke-direct {p1, v1, v0, v2}, Lo/optionalProvider;-><init>(Lo/isSet;Lo/doOnboarding;Lo/removeDependent;)V

    invoke-virtual {v1, p1}, Lo/isSet;->extraCallback(Lo/removeDependent;)V

    return-void
.end method

.method public final onNavigationEvent(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 11

    iget-object v0, p0, Lo/setTimeout;->onPostMessage:Lo/isSet;

    if-eqz v0, :cond_0

    sget-object v0, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "notifyChunkTransferred"

    invoke-virtual {v0, v2, v1}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v10, Lo/doOnboarding;

    invoke-direct {v10}, Lo/doOnboarding;-><init>()V

    iget-object v0, p0, Lo/setTimeout;->onPostMessage:Lo/isSet;

    new-instance v1, Lo/getHints;

    move-object v3, v1

    move-object v4, p0

    move-object v5, v10

    move v6, p1

    move-object v7, p2

    move-object v8, p3

    move v9, p4

    invoke-direct/range {v3 .. v10}, Lo/getHints;-><init>(Lo/setTimeout;Lo/doOnboarding;ILjava/lang/String;Ljava/lang/String;ILo/doOnboarding;)V

    .line 8000
    new-instance p1, Lo/optionalProvider;

    .line 9000
    iget-object p2, v1, Lo/removeDependent;->extraCallback:Lo/doOnboarding;

    .line 8000
    invoke-direct {p1, v0, p2, v1}, Lo/optionalProvider;-><init>(Lo/isSet;Lo/doOnboarding;Lo/removeDependent;)V

    invoke-virtual {v0, p1}, Lo/isSet;->extraCallback(Lo/removeDependent;)V

    return-void

    .line 0
    :cond_0
    new-instance p2, Lo/getFactory;

    const-string p3, "The Play Store app is not installed or is an unofficial version."

    invoke-direct {p2, p3, p1}, Lo/getFactory;-><init>(Ljava/lang/String;I)V

    throw p2
.end method

.method public final onPostMessage(I)V
    .locals 3

    iget-object v0, p0, Lo/setTimeout;->onPostMessage:Lo/isSet;

    if-eqz v0, :cond_0

    sget-object v0, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "notifySessionFailed"

    invoke-virtual {v0, v2, v1}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lo/doOnboarding;

    invoke-direct {v0}, Lo/doOnboarding;-><init>()V

    iget-object v1, p0, Lo/setTimeout;->onPostMessage:Lo/isSet;

    new-instance v2, Lo/getFirebaseAuth;

    invoke-direct {v2, p0, v0, p1, v0}, Lo/getFirebaseAuth;-><init>(Lo/setTimeout;Lo/doOnboarding;ILo/doOnboarding;)V

    .line 12000
    new-instance p1, Lo/optionalProvider;

    .line 13000
    iget-object v0, v2, Lo/removeDependent;->extraCallback:Lo/doOnboarding;

    .line 12000
    invoke-direct {p1, v1, v0, v2}, Lo/optionalProvider;-><init>(Lo/isSet;Lo/doOnboarding;Lo/removeDependent;)V

    invoke-virtual {v1, p1}, Lo/isSet;->extraCallback(Lo/removeDependent;)V

    return-void

    .line 0
    :cond_0
    new-instance v0, Lo/getFactory;

    const-string v1, "The Play Store app is not installed or is an unofficial version."

    invoke-direct {v0, v1, p1}, Lo/getFactory;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
