.class public final Lo/BankAccountDataJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/SubMenuItem;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/BankAccountData;

.field private final ICustomTabsCallback$Stub:Z

.field private ICustomTabsCallback$Stub$Proxy:Z

.field private final ICustomTabsService:Z

.field private final asBinder:Lo/setCanReverse;

.field private final asInterface:J

.field private final extraCallback:Ljava/lang/Object;

.field private getInterfaceDescriptor:Lo/Bucketizer;

.field private final newSession:Ljava/lang/String;

.field private final onMessageChannelReady:Landroid/content/Context;

.field private final onNavigationEvent:Lo/setCardBackgroundView;

.field private final onPostMessage:Lo/LockConfigDataJsonAdapter;

.field private final onRelationshipValidationResult:J

.field private final onTransact:Z

.field private warmup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/PinAccountRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/setCardBackgroundView;Lo/BankAccountData;Lo/LockConfigDataJsonAdapter;ZZLjava/lang/String;JJLo/setCanReverse;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/BankAccountDataJsonAdapter;->extraCallback:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/BankAccountDataJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/BankAccountDataJsonAdapter;->warmup:Ljava/util/List;

    iput-object p1, p0, Lo/BankAccountDataJsonAdapter;->onMessageChannelReady:Landroid/content/Context;

    iput-object p2, p0, Lo/BankAccountDataJsonAdapter;->onNavigationEvent:Lo/setCardBackgroundView;

    iput-object p3, p0, Lo/BankAccountDataJsonAdapter;->ICustomTabsCallback:Lo/BankAccountData;

    iput-object p4, p0, Lo/BankAccountDataJsonAdapter;->onPostMessage:Lo/LockConfigDataJsonAdapter;

    iput-boolean p5, p0, Lo/BankAccountDataJsonAdapter;->onTransact:Z

    iput-boolean p6, p0, Lo/BankAccountDataJsonAdapter;->ICustomTabsCallback$Stub:Z

    iput-object p7, p0, Lo/BankAccountDataJsonAdapter;->newSession:Ljava/lang/String;

    iput-wide p8, p0, Lo/BankAccountDataJsonAdapter;->onRelationshipValidationResult:J

    iput-wide p10, p0, Lo/BankAccountDataJsonAdapter;->asInterface:J

    iput-object p12, p0, Lo/BankAccountDataJsonAdapter;->asBinder:Lo/setCanReverse;

    iput-boolean p13, p0, Lo/BankAccountDataJsonAdapter;->ICustomTabsService:Z

    return-void
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

    iget-object v0, p0, Lo/BankAccountDataJsonAdapter;->warmup:Ljava/util/List;

    return-object v0
.end method

.method public final extraCallback()V
    .locals 2

    iget-object v0, p0, Lo/BankAccountDataJsonAdapter;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lo/BankAccountDataJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    iget-object v1, p0, Lo/BankAccountDataJsonAdapter;->getInterfaceDescriptor:Lo/Bucketizer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/BankAccountDataJsonAdapter;->getInterfaceDescriptor:Lo/Bucketizer;

    invoke-virtual {v1}, Lo/Bucketizer;->onMessageChannelReady()V

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
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TabConfigResponse;",
            ">;)",
            "Lo/PinAccountRequest;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "Starting mediation."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Lo/BankAccountDataJsonAdapter;->asBinder:Lo/setCanReverse;

    invoke-virtual {v2}, Lo/setCanReverse;->onNavigationEvent()Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    move-result-object v2

    iget-object v3, v1, Lo/BankAccountDataJsonAdapter;->onNavigationEvent:Lo/setCardBackgroundView;

    iget-object v3, v3, Lo/setCardBackgroundView;->onPostMessage:Lo/setCurrentItem$default;

    const/4 v4, 0x2

    new-array v4, v4, [I

    iget-object v5, v3, Lo/setCurrentItem$default;->asInterface:[Lo/setCurrentItem$default;

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-static {}, Lo/getParcel;->validateRelationship()Lo/AccountTemplateProperties;

    iget-object v5, v1, Lo/BankAccountDataJsonAdapter;->newSession:Ljava/lang/String;

    invoke-static {v5, v4}, Lo/AccountTemplateProperties;->onNavigationEvent(Ljava/lang/String;[I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    aget v7, v4, v5

    aget v4, v4, v6

    iget-object v8, v3, Lo/setCurrentItem$default;->asInterface:[Lo/setCurrentItem$default;

    array-length v9, v8

    :goto_0
    if-ge v5, v9, :cond_1

    aget-object v10, v8, v5

    iget v11, v10, Lo/setCurrentItem$default;->ICustomTabsCallback:I

    if-ne v7, v11, :cond_0

    iget v11, v10, Lo/setCurrentItem$default;->onNavigationEvent:I

    if-ne v4, v11, :cond_0

    move-object v3, v10

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/TabConfigResponse;

    const-string v7, "Trying mediation network: "

    iget-object v8, v5, Lo/TabConfigResponse;->onPostMessage:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    :goto_2
    invoke-static {v7}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v7, v5, Lo/TabConfigResponse;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, v1, Lo/BankAccountDataJsonAdapter;->asBinder:Lo/setCanReverse;

    invoke-virtual {v9}, Lo/setCanReverse;->onNavigationEvent()Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    move-result-object v9

    iget-object v15, v1, Lo/BankAccountDataJsonAdapter;->extraCallback:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    iget-boolean v10, v1, Lo/BankAccountDataJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v10, :cond_4

    new-instance v0, Lo/PinAccountRequest;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Lo/PinAccountRequest;-><init>(I)V

    monitor-exit v15

    return-object v0

    :cond_4
    new-instance v14, Lo/Bucketizer;

    iget-object v11, v1, Lo/BankAccountDataJsonAdapter;->onMessageChannelReady:Landroid/content/Context;

    iget-object v13, v1, Lo/BankAccountDataJsonAdapter;->ICustomTabsCallback:Lo/BankAccountData;

    iget-object v12, v1, Lo/BankAccountDataJsonAdapter;->onPostMessage:Lo/LockConfigDataJsonAdapter;

    iget-object v10, v1, Lo/BankAccountDataJsonAdapter;->onNavigationEvent:Lo/setCardBackgroundView;

    iget-object v10, v10, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-object v6, v1, Lo/BankAccountDataJsonAdapter;->onNavigationEvent:Lo/setCardBackgroundView;

    iget-object v6, v6, Lo/setCardBackgroundView;->warmup:Lo/DataListJsonAdapter;

    move-object/from16 p1, v4

    iget-boolean v4, v1, Lo/BankAccountDataJsonAdapter;->onTransact:Z

    move-object/from16 v26, v7

    iget-boolean v7, v1, Lo/BankAccountDataJsonAdapter;->ICustomTabsCallback$Stub:Z

    move-object/from16 v16, v10

    iget-object v10, v1, Lo/BankAccountDataJsonAdapter;->onNavigationEvent:Lo/setCardBackgroundView;

    iget-object v10, v10, Lo/setCardBackgroundView;->ICustomTabsService$Stub$Proxy:Lo/activateCredProtect;

    move-object/from16 v17, v10

    iget-object v10, v1, Lo/BankAccountDataJsonAdapter;->onNavigationEvent:Lo/setCardBackgroundView;

    iget-object v10, v10, Lo/setCardBackgroundView;->newSession:Ljava/util/List;

    move-object/from16 v18, v10

    iget-object v10, v1, Lo/BankAccountDataJsonAdapter;->onNavigationEvent:Lo/setCardBackgroundView;

    iget-object v10, v10, Lo/setCardBackgroundView;->INotificationSideChannel:Ljava/util/List;

    move-object/from16 v19, v10

    iget-object v10, v1, Lo/BankAccountDataJsonAdapter;->onNavigationEvent:Lo/setCardBackgroundView;

    iget-object v10, v10, Lo/setCardBackgroundView;->getRoot:Ljava/util/List;

    move-object/from16 v27, v2

    iget-boolean v2, v1, Lo/BankAccountDataJsonAdapter;->ICustomTabsService:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v24, v10

    move-object/from16 v21, v17

    move-object/from16 v22, v18

    move-object/from16 v23, v19

    move-object v10, v14

    move-object/from16 v17, v12

    move-object v12, v8

    move-object/from16 v28, v9

    move-object v9, v14

    move-object/from16 v14, v17

    move-object/from16 v29, v15

    move-object v15, v5

    move-object/from16 v17, v3

    move-object/from16 v18, v6

    move/from16 v19, v4

    move/from16 v20, v7

    move/from16 v25, v2

    :try_start_1
    invoke-direct/range {v10 .. v25}, Lo/Bucketizer;-><init>(Landroid/content/Context;Ljava/lang/String;Lo/BankAccountData;Lo/LockConfigDataJsonAdapter;Lo/TabConfigResponse;Lo/setLastItem;Lo/setCurrentItem$default;Lo/DataListJsonAdapter;ZZLo/activateCredProtect;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    iput-object v9, v1, Lo/BankAccountDataJsonAdapter;->getInterfaceDescriptor:Lo/Bucketizer;

    monitor-exit v29
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-wide v6, v1, Lo/BankAccountDataJsonAdapter;->onRelationshipValidationResult:J

    iget-wide v10, v1, Lo/BankAccountDataJsonAdapter;->asInterface:J

    invoke-virtual {v9, v6, v7, v10, v11}, Lo/Bucketizer;->onNavigationEvent(JJ)Lo/PinAccountRequest;

    move-result-object v2

    iget-object v4, v1, Lo/BankAccountDataJsonAdapter;->warmup:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v4, v2, Lo/PinAccountRequest;->extraCallback:I

    if-nez v4, :cond_6

    const-string v3, "Adapter succeeded."

    invoke-static {v3}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    iget-object v3, v1, Lo/BankAccountDataJsonAdapter;->asBinder:Lo/setCanReverse;

    const-string v4, "mediation_network_succeed"

    invoke-virtual {v3, v4, v8}, Lo/setCanReverse;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v1, Lo/BankAccountDataJsonAdapter;->asBinder:Lo/setCanReverse;

    const-string v4, ","

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "mediation_networks_fail"

    invoke-virtual {v3, v4, v0}, Lo/setCanReverse;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, v1, Lo/BankAccountDataJsonAdapter;->asBinder:Lo/setCanReverse;

    const-string v3, "mls"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v28

    invoke-virtual {v0, v4, v3}, Lo/setCanReverse;->onMessageChannelReady(Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;[Ljava/lang/String;)Z

    iget-object v0, v1, Lo/BankAccountDataJsonAdapter;->asBinder:Lo/setCanReverse;

    const-string v3, "ttm"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    move-object/from16 v6, v27

    invoke-virtual {v0, v6, v3}, Lo/setCanReverse;->onMessageChannelReady(Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;[Ljava/lang/String;)Z

    return-object v2

    :cond_6
    move-object/from16 v6, v27

    move-object/from16 v4, v28

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v1, Lo/BankAccountDataJsonAdapter;->asBinder:Lo/setCanReverse;

    const-string v8, "mlf"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Lo/setCanReverse;->onMessageChannelReady(Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;[Ljava/lang/String;)Z

    iget-object v4, v2, Lo/PinAccountRequest;->onMessageChannelReady:Lo/Info;

    if-eqz v4, :cond_7

    sget-object v4, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v7, Lo/BankAccountsResponse;

    invoke-direct {v7, v1, v2}, Lo/BankAccountsResponse;-><init>(Lo/BankAccountDataJsonAdapter;Lo/PinAccountRequest;)V

    invoke-virtual {v4, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    move-object/from16 v4, p1

    move-object v2, v6

    move-object/from16 v7, v26

    const/4 v6, 0x1

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v29, v15

    :goto_4
    :try_start_2
    monitor-exit v29
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v1, Lo/BankAccountDataJsonAdapter;->asBinder:Lo/setCanReverse;

    const-string v3, ","

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "mediation_networks_fail"

    invoke-virtual {v2, v3, v0}, Lo/setCanReverse;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    new-instance v0, Lo/PinAccountRequest;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lo/PinAccountRequest;-><init>(I)V

    return-object v0
.end method
