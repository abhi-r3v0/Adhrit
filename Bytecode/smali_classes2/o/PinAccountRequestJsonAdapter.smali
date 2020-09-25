.class public final Lo/PinAccountRequestJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/SubMenuItem;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/content/Context;

.field private final ICustomTabsCallback$Stub:Ljava/lang/Object;

.field private ICustomTabsCallback$Stub$Proxy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/PinAccountRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final ICustomTabsService:Ljava/lang/String;

.field private final asBinder:J

.field private final asInterface:J

.field private final extraCallback:Z

.field private final getInterfaceDescriptor:Z

.field private final newSession:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "Lo/PinAccountRequest;",
            ">;",
            "Lo/Bucketizer;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/setCardBackgroundView;

.field private final onNavigationEvent:Lo/LockConfigDataJsonAdapter;

.field private final onPostMessage:Lo/BankAccountData;

.field private final onRelationshipValidationResult:I

.field private onTransact:Z

.field private final warmup:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/setCardBackgroundView;Lo/BankAccountData;Lo/LockConfigDataJsonAdapter;ZZLjava/lang/String;JJIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p12, Ljava/lang/Object;

    invoke-direct {p12}, Ljava/lang/Object;-><init>()V

    iput-object p12, p0, Lo/PinAccountRequestJsonAdapter;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    const/4 p12, 0x0

    iput-boolean p12, p0, Lo/PinAccountRequestJsonAdapter;->onTransact:Z

    new-instance p12, Ljava/util/HashMap;

    invoke-direct {p12}, Ljava/util/HashMap;-><init>()V

    iput-object p12, p0, Lo/PinAccountRequestJsonAdapter;->newSession:Ljava/util/Map;

    new-instance p12, Ljava/util/ArrayList;

    invoke-direct {p12}, Ljava/util/ArrayList;-><init>()V

    iput-object p12, p0, Lo/PinAccountRequestJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    iput-object p1, p0, Lo/PinAccountRequestJsonAdapter;->ICustomTabsCallback:Landroid/content/Context;

    iput-object p2, p0, Lo/PinAccountRequestJsonAdapter;->onMessageChannelReady:Lo/setCardBackgroundView;

    iput-object p3, p0, Lo/PinAccountRequestJsonAdapter;->onPostMessage:Lo/BankAccountData;

    iput-object p4, p0, Lo/PinAccountRequestJsonAdapter;->onNavigationEvent:Lo/LockConfigDataJsonAdapter;

    iput-boolean p5, p0, Lo/PinAccountRequestJsonAdapter;->extraCallback:Z

    iput-boolean p6, p0, Lo/PinAccountRequestJsonAdapter;->getInterfaceDescriptor:Z

    iput-object p7, p0, Lo/PinAccountRequestJsonAdapter;->ICustomTabsService:Ljava/lang/String;

    iput-wide p8, p0, Lo/PinAccountRequestJsonAdapter;->asBinder:J

    iput-wide p10, p0, Lo/PinAccountRequestJsonAdapter;->asInterface:J

    const/4 p1, 0x2

    iput p1, p0, Lo/PinAccountRequestJsonAdapter;->onRelationshipValidationResult:I

    iput-boolean p13, p0, Lo/PinAccountRequestJsonAdapter;->warmup:Z

    return-void
.end method

.method private final ICustomTabsCallback(Ljava/util/List;)Lo/PinAccountRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "Lo/PinAccountRequest;",
            ">;>;)",
            "Lo/PinAccountRequest;"
        }
    .end annotation

    iget-object v0, p0, Lo/PinAccountRequestJsonAdapter;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/PinAccountRequestJsonAdapter;->onTransact:Z

    if-eqz v1, :cond_0

    new-instance p1, Lo/PinAccountRequest;

    const/4 v1, -0x1

    invoke-direct {p1, v1}, Lo/PinAccountRequest;-><init>(I)V

    monitor-exit v0

    return-object p1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/PaymentModeListResponseJsonAdapter;

    :try_start_1
    invoke-interface {v0}, Lo/PaymentModeListResponseJsonAdapter;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/PinAccountRequest;

    iget-object v2, p0, Lo/PinAccountRequestJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_1

    iget v2, v1, Lo/PinAccountRequest;->extraCallback:I

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lo/PinAccountRequestJsonAdapter;->ICustomTabsCallback(Lo/PaymentModeListResponseJsonAdapter;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v1, "Exception while processing an adapter; continuing with other adapters"

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/PinAccountRequestJsonAdapter;->ICustomTabsCallback(Lo/PaymentModeListResponseJsonAdapter;)V

    new-instance p1, Lo/PinAccountRequest;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lo/PinAccountRequest;-><init>(I)V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private final ICustomTabsCallback(Lo/PaymentModeListResponseJsonAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "Lo/PinAccountRequest;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v1, Lo/AccountTemplatePropertiesJsonAdapter;

    invoke-direct {v1, p0, p1}, Lo/AccountTemplatePropertiesJsonAdapter;-><init>(Lo/PinAccountRequestJsonAdapter;Lo/PaymentModeListResponseJsonAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/PinAccountRequestJsonAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lo/PinAccountRequestJsonAdapter;->onTransact:Z

    return p0
.end method

.method static synthetic extraCallback(Lo/PinAccountRequestJsonAdapter;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lo/PinAccountRequestJsonAdapter;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/PinAccountRequestJsonAdapter;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lo/PinAccountRequestJsonAdapter;->newSession:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/PinAccountRequestJsonAdapter;)J
    .locals 2

    iget-wide v0, p0, Lo/PinAccountRequestJsonAdapter;->asBinder:J

    return-wide v0
.end method

.method static synthetic onPostMessage(Lo/PinAccountRequestJsonAdapter;)J
    .locals 2

    iget-wide v0, p0, Lo/PinAccountRequestJsonAdapter;->asInterface:J

    return-wide v0
.end method

.method private final onPostMessage(Ljava/util/List;)Lo/PinAccountRequest;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "Lo/PinAccountRequest;",
            ">;>;)",
            "Lo/PinAccountRequest;"
        }
    .end annotation

    iget-object v0, p0, Lo/PinAccountRequestJsonAdapter;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/PinAccountRequestJsonAdapter;->onTransact:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    new-instance p1, Lo/PinAccountRequest;

    invoke-direct {p1, v2}, Lo/PinAccountRequest;-><init>(I)V

    monitor-exit v0

    return-object p1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lo/PinAccountRequestJsonAdapter;->onNavigationEvent:Lo/LockConfigDataJsonAdapter;

    iget-wide v0, v0, Lo/LockConfigDataJsonAdapter;->warmup:J

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_1

    iget-object v0, p0, Lo/PinAccountRequestJsonAdapter;->onNavigationEvent:Lo/LockConfigDataJsonAdapter;

    iget-wide v0, v0, Lo/LockConfigDataJsonAdapter;->warmup:J

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x2710

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    move-object v4, v3

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/PaymentModeListResponseJsonAdapter;

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v6

    invoke-interface {v6}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v0, v8

    if-nez v10, :cond_2

    :try_start_1
    invoke-interface {v5}, Lo/PaymentModeListResponseJsonAdapter;->isDone()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Lo/PaymentModeListResponseJsonAdapter;->get()Ljava/lang/Object;

    move-result-object v10

    :goto_2
    check-cast v10, Lo/PinAccountRequest;

    goto :goto_3

    :cond_2
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v0, v1, v10}, Lo/PaymentModeListResponseJsonAdapter;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_2

    :goto_3
    iget-object v11, p0, Lo/PinAccountRequestJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v10, :cond_3

    iget v11, v10, Lo/PinAccountRequest;->extraCallback:I

    if-nez v11, :cond_3

    iget-object v11, v10, Lo/PinAccountRequest;->onTransact:Lo/InfoJsonAdapter;

    if-eqz v11, :cond_3

    invoke-interface {v11}, Lo/InfoJsonAdapter;->onMessageChannelReady()I

    move-result v12

    if-le v12, v2, :cond_3

    invoke-interface {v11}, Lo/InfoJsonAdapter;->onMessageChannelReady()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v5

    move-object v4, v10

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception v5

    goto :goto_4

    :catch_1
    move-exception v5

    goto :goto_4

    :catch_2
    move-exception v5

    goto :goto_4

    :catch_3
    move-exception v5

    :goto_4
    :try_start_2
    const-string v10, "Exception while processing an adapter; continuing with other adapters"

    invoke-static {v10, v5}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_5
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v5

    invoke-interface {v5}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v10

    sub-long/2addr v10, v6

    sub-long/2addr v0, v10

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_1

    :goto_6
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v2

    invoke-interface {v2}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v2

    sub-long/2addr v2, v6

    sub-long/2addr v0, v2

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    throw p1

    :cond_4
    invoke-direct {p0, v3}, Lo/PinAccountRequestJsonAdapter;->ICustomTabsCallback(Lo/PaymentModeListResponseJsonAdapter;)V

    if-nez v4, :cond_5

    new-instance p1, Lo/PinAccountRequest;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lo/PinAccountRequest;-><init>(I)V

    return-object p1

    :cond_5
    return-object v4

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/PinAccountRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/PinAccountRequestJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    return-object v0
.end method

.method public final extraCallback()V
    .locals 3

    iget-object v0, p0, Lo/PinAccountRequestJsonAdapter;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lo/PinAccountRequestJsonAdapter;->onTransact:Z

    iget-object v1, p0, Lo/PinAccountRequestJsonAdapter;->newSession:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Bucketizer;

    invoke-virtual {v2}, Lo/Bucketizer;->onMessageChannelReady()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onMessageChannelReady(Ljava/util/List;)Lo/PinAccountRequest;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TabConfigResponse;",
            ">;)",
            "Lo/PinAccountRequest;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "Starting mediation."

    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lo/PinAccountRequestJsonAdapter;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v2, v2, Lo/setCardBackgroundView;->onPostMessage:Lo/setCurrentItem$default;

    const/4 v3, 0x2

    new-array v4, v3, [I

    iget-object v5, v2, Lo/setCurrentItem$default;->asInterface:[Lo/setCurrentItem$default;

    if-eqz v5, :cond_1

    invoke-static {}, Lo/getParcel;->validateRelationship()Lo/AccountTemplateProperties;

    iget-object v5, v0, Lo/PinAccountRequestJsonAdapter;->ICustomTabsService:Ljava/lang/String;

    invoke-static {v5, v4}, Lo/AccountTemplateProperties;->onNavigationEvent(Ljava/lang/String;[I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    aget v6, v4, v5

    const/4 v7, 0x1

    aget v4, v4, v7

    iget-object v7, v2, Lo/setCurrentItem$default;->asInterface:[Lo/setCurrentItem$default;

    array-length v8, v7

    :goto_0
    if-ge v5, v8, :cond_1

    aget-object v9, v7, v5

    iget v10, v9, Lo/setCurrentItem$default;->ICustomTabsCallback:I

    if-ne v6, v10, :cond_0

    iget v10, v9, Lo/setCurrentItem$default;->onNavigationEvent:I

    if-ne v4, v10, :cond_0

    move-object v2, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/TabConfigResponse;

    const-string v6, "Trying mediation network: "

    iget-object v7, v5, Lo/TabConfigResponse;->onPostMessage:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_2
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    :goto_3
    invoke-static {v6}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v6, v5, Lo/TabConfigResponse;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Ljava/lang/String;

    new-instance v7, Lo/Bucketizer;

    iget-object v10, v0, Lo/PinAccountRequestJsonAdapter;->ICustomTabsCallback:Landroid/content/Context;

    iget-object v12, v0, Lo/PinAccountRequestJsonAdapter;->onPostMessage:Lo/BankAccountData;

    iget-object v13, v0, Lo/PinAccountRequestJsonAdapter;->onNavigationEvent:Lo/LockConfigDataJsonAdapter;

    iget-object v8, v0, Lo/PinAccountRequestJsonAdapter;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v15, v8, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-object v8, v0, Lo/PinAccountRequestJsonAdapter;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v8, v8, Lo/setCardBackgroundView;->warmup:Lo/DataListJsonAdapter;

    iget-boolean v14, v0, Lo/PinAccountRequestJsonAdapter;->extraCallback:Z

    iget-boolean v9, v0, Lo/PinAccountRequestJsonAdapter;->getInterfaceDescriptor:Z

    iget-object v3, v0, Lo/PinAccountRequestJsonAdapter;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v3, v3, Lo/setCardBackgroundView;->ICustomTabsService$Stub$Proxy:Lo/activateCredProtect;

    move-object/from16 p1, v4

    iget-object v4, v0, Lo/PinAccountRequestJsonAdapter;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v4, v4, Lo/setCardBackgroundView;->newSession:Ljava/util/List;

    move-object/from16 v25, v6

    iget-object v6, v0, Lo/PinAccountRequestJsonAdapter;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v6, v6, Lo/setCardBackgroundView;->INotificationSideChannel:Ljava/util/List;

    move/from16 v16, v9

    iget-object v9, v0, Lo/PinAccountRequestJsonAdapter;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v9, v9, Lo/setCardBackgroundView;->getRoot:Ljava/util/List;

    move-object/from16 v26, v1

    iget-boolean v1, v0, Lo/PinAccountRequestJsonAdapter;->warmup:Z

    move-object/from16 v23, v9

    move/from16 v19, v16

    move-object v9, v7

    move/from16 v18, v14

    move-object v14, v5

    move-object/from16 v16, v2

    move-object/from16 v17, v8

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move/from16 v24, v1

    invoke-direct/range {v9 .. v24}, Lo/Bucketizer;-><init>(Landroid/content/Context;Ljava/lang/String;Lo/BankAccountData;Lo/LockConfigDataJsonAdapter;Lo/TabConfigResponse;Lo/setLastItem;Lo/setCurrentItem$default;Lo/DataListJsonAdapter;ZZLo/activateCredProtect;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    new-instance v1, Lo/SyncBankRequestAccountJsonAdapter;

    invoke-direct {v1, v0, v7}, Lo/SyncBankRequestAccountJsonAdapter;-><init>(Lo/PinAccountRequestJsonAdapter;Lo/Bucketizer;)V

    invoke-static {v1}, Lo/AmexLoginStatus;->onNavigationEvent(Ljava/util/concurrent/Callable;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v1

    iget-object v3, v0, Lo/PinAccountRequestJsonAdapter;->newSession:Ljava/util/Map;

    invoke-interface {v3, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v26

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p1

    move-object v1, v3

    move-object/from16 v6, v25

    const/4 v3, 0x2

    goto :goto_4

    :cond_3
    const/4 v3, 0x2

    goto/16 :goto_2

    :cond_4
    move-object v3, v1

    iget v1, v0, Lo/PinAccountRequestJsonAdapter;->onRelationshipValidationResult:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    invoke-direct {v0, v3}, Lo/PinAccountRequestJsonAdapter;->ICustomTabsCallback(Ljava/util/List;)Lo/PinAccountRequest;

    move-result-object v1

    return-object v1

    :cond_5
    invoke-direct {v0, v3}, Lo/PinAccountRequestJsonAdapter;->onPostMessage(Ljava/util/List;)Lo/PinAccountRequest;

    move-result-object v1

    return-object v1
.end method
