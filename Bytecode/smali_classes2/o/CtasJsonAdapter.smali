.class public final Lo/CtasJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/StatementDetailsRequestJsonAdapter;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field private static onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private static onNavigationEvent:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;",
            ">;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub:Landroid/content/Context;

.field private ICustomTabsCallback$Stub$Proxy:Z

.field private ICustomTabsService:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final asBinder:Lo/SummaryBankProperties;

.field private asInterface:Z

.field private final extraCallback:Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;

.field private final getInterfaceDescriptor:Lo/SummaryBankJsonAdapter;

.field private newSession:Z

.field private final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final onRelationshipValidationResult:Lo/NudgeJsonAdapter;

.field private final onTransact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private postMessage:Z

.field private final warmup:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/CtasJsonAdapter;->onMessageChannelReady:Ljava/util/List;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lo/CtasJsonAdapter;->onNavigationEvent:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/DataListJsonAdapter;Lo/NudgeJsonAdapter;Ljava/lang/String;Lo/SummaryBankProperties;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/CtasJsonAdapter;->onPostMessage:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/CtasJsonAdapter;->onTransact:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/CtasJsonAdapter;->warmup:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/CtasJsonAdapter;->ICustomTabsService:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/CtasJsonAdapter;->newSession:Z

    iput-boolean v0, p0, Lo/CtasJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    iput-boolean v0, p0, Lo/CtasJsonAdapter;->postMessage:Z

    const-string v0, "SafeBrowsing config is not present."

    invoke-static {p3, v0}, Lo/extraCallback$onNavigationEvent;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lo/CtasJsonAdapter;->ICustomTabsCallback$Stub:Landroid/content/Context;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lo/CtasJsonAdapter;->ICustomTabsCallback:Ljava/util/LinkedHashMap;

    iput-object p5, p0, Lo/CtasJsonAdapter;->asBinder:Lo/SummaryBankProperties;

    iput-object p3, p0, Lo/CtasJsonAdapter;->onRelationshipValidationResult:Lo/NudgeJsonAdapter;

    iget-object p1, p3, Lo/NudgeJsonAdapter;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object p5, p0, Lo/CtasJsonAdapter;->ICustomTabsService:Ljava/util/HashSet;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lo/CtasJsonAdapter;->ICustomTabsService:Ljava/util/HashSet;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string p5, "cookie"

    invoke-virtual {p5, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    new-instance p1, Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;

    invoke-direct {p1}, Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;-><init>()V

    const/16 p3, 0x8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p1, Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/lang/Integer;

    iput-object p4, p1, Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;->extraCallback:Ljava/lang/String;

    iput-object p4, p1, Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/String;

    new-instance p3, Lo/MachinePullDownFragment$onViewCreated$4$$special$$inlined$executeOnResume$1;

    invoke-direct {p3}, Lo/MachinePullDownFragment$onViewCreated$4$$special$$inlined$executeOnResume$1;-><init>()V

    iput-object p3, p1, Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/MachinePullDownFragment$onViewCreated$4$$special$$inlined$executeOnResume$1;

    iget-object p3, p1, Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/MachinePullDownFragment$onViewCreated$4$$special$$inlined$executeOnResume$1;

    iget-object p4, p0, Lo/CtasJsonAdapter;->onRelationshipValidationResult:Lo/NudgeJsonAdapter;

    iget-object p4, p4, Lo/NudgeJsonAdapter;->onNavigationEvent:Ljava/lang/String;

    iput-object p4, p3, Lo/MachinePullDownFragment$onViewCreated$4$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/String;

    new-instance p3, Lo/CertificateResponseModelJsonAdapter;

    invoke-direct {p3}, Lo/CertificateResponseModelJsonAdapter;-><init>()V

    iget-object p2, p2, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    iput-object p2, p3, Lo/CertificateResponseModelJsonAdapter;->onMessageChannelReady:Ljava/lang/String;

    iget-object p2, p0, Lo/CtasJsonAdapter;->ICustomTabsCallback$Stub:Landroid/content/Context;

    invoke-static {p2}, Lo/preferLastSpan$onMessageChannelReady;->onMessageChannelReady(Landroid/content/Context;)Lo/component28;

    move-result-object p2

    invoke-virtual {p2}, Lo/component28;->onNavigationEvent()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p3, Lo/CertificateResponseModelJsonAdapter;->ICustomTabsCallback:Ljava/lang/Boolean;

    invoke-static {}, Lo/PaymentItem;->onNavigationEvent()Lo/PaymentItem;

    move-result-object p2

    iget-object p4, p0, Lo/CtasJsonAdapter;->ICustomTabsCallback$Stub:Landroid/content/Context;

    invoke-virtual {p2, p4}, Lo/PaymentItem;->onPostMessage(Landroid/content/Context;)I

    move-result p2

    int-to-long p4, p2

    const-wide/16 v0, 0x0

    cmp-long p2, p4, v0

    if-lez p2, :cond_2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p3, Lo/CertificateResponseModelJsonAdapter;->onPostMessage:Ljava/lang/Long;

    :cond_2
    iput-object p3, p1, Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;->onTransact:Lo/CertificateResponseModelJsonAdapter;

    iput-object p1, p0, Lo/CtasJsonAdapter;->extraCallback:Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;

    new-instance p1, Lo/SummaryBankJsonAdapter;

    iget-object p2, p0, Lo/CtasJsonAdapter;->ICustomTabsCallback$Stub:Landroid/content/Context;

    iget-object p3, p0, Lo/CtasJsonAdapter;->onRelationshipValidationResult:Lo/NudgeJsonAdapter;

    iget-object p3, p3, Lo/NudgeJsonAdapter;->onRelationshipValidationResult:Ljava/util/List;

    invoke-direct {p1, p2, p3, p0}, Lo/SummaryBankJsonAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lo/CtasJsonAdapter;)V

    iput-object p1, p0, Lo/CtasJsonAdapter;->getInterfaceDescriptor:Lo/SummaryBankJsonAdapter;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/CtasJsonAdapter;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lo/CtasJsonAdapter;->warmup:Ljava/lang/Object;

    return-object p0
.end method

.method private final ICustomTabsCallback$Stub()Lo/PaymentModeListResponseJsonAdapter;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lo/CtasJsonAdapter;->asInterface:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CtasJsonAdapter;->onRelationshipValidationResult:Lo/NudgeJsonAdapter;

    iget-boolean v0, v0, Lo/NudgeJsonAdapter;->asBinder:Z

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lo/CtasJsonAdapter;->postMessage:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/CtasJsonAdapter;->onRelationshipValidationResult:Lo/NudgeJsonAdapter;

    iget-boolean v0, v0, Lo/NudgeJsonAdapter;->asInterface:Z

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lo/CtasJsonAdapter;->asInterface:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lo/CtasJsonAdapter;->onRelationshipValidationResult:Lo/NudgeJsonAdapter;

    iget-boolean v0, v0, Lo/NudgeJsonAdapter;->onPostMessage:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    if-nez v0, :cond_4

    invoke-static {v3}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Ljava/lang/Object;)Lo/PayNowBottomSheetResponseJsonAdapter;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v0, p0, Lo/CtasJsonAdapter;->warmup:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v4, p0, Lo/CtasJsonAdapter;->extraCallback:Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;

    iget-object v5, p0, Lo/CtasJsonAdapter;->ICustomTabsCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    new-array v5, v5, [Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;

    iput-object v5, v4, Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:[Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;

    iget-object v4, p0, Lo/CtasJsonAdapter;->ICustomTabsCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    iget-object v5, p0, Lo/CtasJsonAdapter;->extraCallback:Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;

    iget-object v5, v5, Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:[Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v4, p0, Lo/CtasJsonAdapter;->extraCallback:Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;

    iget-object v5, p0, Lo/CtasJsonAdapter;->onPostMessage:Ljava/util/List;

    new-array v6, v2, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, v4, Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;->asBinder:[Ljava/lang/String;

    iget-object v4, p0, Lo/CtasJsonAdapter;->extraCallback:Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;

    iget-object v5, p0, Lo/CtasJsonAdapter;->onTransact:Ljava/util/List;

    new-array v6, v2, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, v4, Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:[Ljava/lang/String;

    invoke-static {}, Lo/StatementDetailsRequest;->onPostMessage()Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lo/CtasJsonAdapter;->extraCallback:Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;

    iget-object v5, v5, Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;->extraCallback:Ljava/lang/String;

    iget-object v6, p0, Lo/CtasJsonAdapter;->extraCallback:Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;

    iget-object v6, v6, Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;->asInterface:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x35

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Sending SB report\n  url: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n  clickUrl: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n  resources: \n"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lo/CtasJsonAdapter;->extraCallback:Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;

    iget-object v5, v5, Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:[Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;

    array-length v6, v5

    :goto_1
    if-ge v2, v6, :cond_5

    aget-object v7, v5, v2

    const-string v8, "    ["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onMessageChannelReady:[Ljava/lang/String;

    array-length v8, v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/StatementDetailsRequest;->onNavigationEvent(Ljava/lang/String;)V

    :cond_6
    iget-object v2, p0, Lo/CtasJsonAdapter;->extraCallback:Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;

    invoke-static {v2}, Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onNavigationEvent(Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)[B

    move-result-object v2

    iget-object v4, p0, Lo/CtasJsonAdapter;->onRelationshipValidationResult:Lo/NudgeJsonAdapter;

    iget-object v4, v4, Lo/NudgeJsonAdapter;->onMessageChannelReady:Ljava/lang/String;

    new-instance v5, Lo/getCashback_disabled;

    iget-object v6, p0, Lo/CtasJsonAdapter;->ICustomTabsCallback$Stub:Landroid/content/Context;

    invoke-direct {v5, v6}, Lo/getCashback_disabled;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1, v4, v3, v2}, Lo/getCashback_disabled;->onMessageChannelReady(ILjava/lang/String;Ljava/util/Map;[B)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v1

    invoke-static {}, Lo/StatementDetailsRequest;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lo/MyCardsResponse;

    invoke-direct {v2, p0}, Lo/MyCardsResponse;-><init>(Lo/CtasJsonAdapter;)V

    sget-object v3, Lo/AmexLoginStatus;->onNavigationEvent:Lo/Properties$$Parcelable;

    invoke-interface {v1, v2, v3}, Lo/PaymentModeListResponseJsonAdapter;->onPostMessage(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_7
    sget-object v2, Lo/Image;->onMessageChannelReady:Lo/getText3;

    sget-object v3, Lo/Properties;->onNavigationEvent:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2, v3}, Lo/InvalidPaymentAmount$$Parcelable;->onMessageChannelReady(Lo/PaymentModeListResponseJsonAdapter;Lo/getText3;Ljava/util/concurrent/Executor;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic extraCallback()Ljava/util/List;
    .locals 1

    sget-object v0, Lo/CtasJsonAdapter;->onMessageChannelReady:Ljava/util/List;

    return-object v0
.end method

.method static final synthetic onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Void;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/CtasJsonAdapter;)Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;
    .locals 0

    iget-object p0, p0, Lo/CtasJsonAdapter;->extraCallback:Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;

    return-object p0
.end method

.method private final onNavigationEvent(Ljava/lang/String;)Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;
    .locals 2

    iget-object v0, p0, Lo/CtasJsonAdapter;->warmup:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/CtasJsonAdapter;->ICustomTabsCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/NudgeJsonAdapter;
    .locals 1

    iget-object v0, p0, Lo/CtasJsonAdapter;->onRelationshipValidationResult:Lo/NudgeJsonAdapter;

    return-object v0
.end method

.method final synthetic ICustomTabsCallback(Ljava/util/Map;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_5

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "matches"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lo/CtasJsonAdapter;->warmup:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-direct {p0, v1}, Lo/CtasJsonAdapter;->onNavigationEvent(Ljava/lang/String;)Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v2, "Cannot find the corresponding resource object for "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1}, Lo/StatementDetailsRequest;->onNavigationEvent(Ljava/lang/String;)V

    :goto_2
    monitor-exit v3

    goto :goto_0

    :cond_2
    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, v5, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onMessageChannelReady:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v4, :cond_3

    iget-object v7, v5, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onMessageChannelReady:[Ljava/lang/String;

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "threat_type"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    iget-boolean v2, p0, Lo/CtasJsonAdapter;->asInterface:Z

    if-lez v4, :cond_4

    const/4 v1, 0x1

    :cond_4
    or-int/2addr v1, v2

    iput-boolean v1, p0, Lo/CtasJsonAdapter;->asInterface:Z

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_5
    iget-boolean p1, p0, Lo/CtasJsonAdapter;->asInterface:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lo/CtasJsonAdapter;->warmup:Ljava/lang/Object;

    monitor-enter p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, p0, Lo/CtasJsonAdapter;->extraCallback:Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/lang/Integer;

    monitor-exit p1

    goto :goto_4

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_6
    :goto_4
    invoke-direct {p0}, Lo/CtasJsonAdapter;->ICustomTabsCallback$Stub()Lo/PaymentModeListResponseJsonAdapter;

    move-result-object p1
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    sget-object v0, Lo/WinningTypes;->MediaMetadataCompat$BitmapKey:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Failed to get SafeBrowsing metadata"

    invoke-static {v0, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Safebrowsing report transmission failed."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lo/InvalidPaymentAmount$$Parcelable;->onPostMessage(Ljava/lang/Throwable;)Lo/LinkEmailListDialog$onBackPressed$$inlined$executeOnResume$1;

    move-result-object p1

    return-object p1
.end method

.method final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lo/CtasJsonAdapter;->warmup:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/CtasJsonAdapter;->onTransact:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lo/CtasJsonAdapter;->warmup:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lo/CtasJsonAdapter;->postMessage:Z

    :cond_0
    iget-object v2, p0, Lo/CtasJsonAdapter;->ICustomTabsCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne p3, v1, :cond_1

    iget-object p2, p0, Lo/CtasJsonAdapter;->ICustomTabsCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onPostMessage:Ljava/lang/Integer;

    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    new-instance v1, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;

    invoke-direct {v1}, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;-><init>()V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, v1, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onPostMessage:Ljava/lang/Integer;

    iget-object p3, p0, Lo/CtasJsonAdapter;->ICustomTabsCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, v1, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onNavigationEvent:Ljava/lang/Integer;

    iput-object p1, v1, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->ICustomTabsCallback:Ljava/lang/String;

    new-instance p3, Lo/MachinePullInternalFragment$machineUpdateListener$1$$special$$inlined$executeOnResume$1;

    invoke-direct {p3}, Lo/MachinePullInternalFragment$machineUpdateListener$1$$special$$inlined$executeOnResume$1;-><init>()V

    iput-object p3, v1, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->extraCallback:Lo/MachinePullInternalFragment$machineUpdateListener$1$$special$$inlined$executeOnResume$1;

    iget-object p3, p0, Lo/CtasJsonAdapter;->ICustomTabsService:Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/HashSet;->size()I

    move-result p3

    if-lez p3, :cond_7

    if-eqz p2, :cond_7

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v3, ""

    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v2, ""

    :goto_2
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lo/CtasJsonAdapter;->ICustomTabsService:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    new-instance v4, Lo/MachinePullDownFragment$setInvitedLayout$1$$special$$inlined$executeOnResume$1;

    invoke-direct {v4}, Lo/MachinePullDownFragment$setInvitedLayout$1$$special$$inlined$executeOnResume$1;-><init>()V

    const-string v5, "UTF-8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v4, Lo/MachinePullDownFragment$setInvitedLayout$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:[B

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v4, Lo/MachinePullDownFragment$setInvitedLayout$1$$special$$inlined$executeOnResume$1;->extraCallback:[B

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v2, "Cannot convert string to bytes, skip header."

    invoke-static {v2}, Lo/StatementDetailsRequest;->onNavigationEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lo/MachinePullDownFragment$setInvitedLayout$1$$special$$inlined$executeOnResume$1;

    invoke-interface {p3, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object p3, v1, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->extraCallback:Lo/MachinePullInternalFragment$machineUpdateListener$1$$special$$inlined$executeOnResume$1;

    iput-object p2, p3, Lo/MachinePullInternalFragment$machineUpdateListener$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:[Lo/MachinePullDownFragment$setInvitedLayout$1$$special$$inlined$executeOnResume$1;

    :cond_7
    iget-object p2, p0, Lo/CtasJsonAdapter;->ICustomTabsCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final extraCallback(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lo/CtasJsonAdapter;->warmup:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/CtasJsonAdapter;->extraCallback:Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;

    iput-object p1, v1, Lo/MachinePullInternalFragment$onViewCreated$4$1$$special$$inlined$executeOnResume$1;->asInterface:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onMessageChannelReady(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/CtasJsonAdapter;->onRelationshipValidationResult:Lo/NudgeJsonAdapter;

    iget-boolean v0, v0, Lo/NudgeJsonAdapter;->extraCallback:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lo/CtasJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    invoke-static {p1}, Lo/AuthSupportedResponse$MetaData;->onMessageChannelReady(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "Failed to capture the webview bitmap."

    invoke-static {p1}, Lo/StatementDetailsRequest;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/CtasJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    new-instance v0, Lo/FooterActionsJsonAdapter;

    invoke-direct {v0, p0, p1}, Lo/FooterActionsJsonAdapter;-><init>(Lo/CtasJsonAdapter;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lo/AuthSupportedResponse$MetaData;->extraCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    invoke-static {}, Lo/component20;->onRelationshipValidationResult()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CtasJsonAdapter;->onRelationshipValidationResult:Lo/NudgeJsonAdapter;

    iget-boolean v0, v0, Lo/NudgeJsonAdapter;->extraCallback:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/CtasJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onNavigationEvent()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/CtasJsonAdapter;->newSession:Z

    return-void
.end method

.method public final onNavigationEvent([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/CtasJsonAdapter;->getInterfaceDescriptor:Lo/SummaryBankJsonAdapter;

    invoke-virtual {v0, p1}, Lo/SummaryBankJsonAdapter;->extraCallback([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public final onPostMessage()V
    .locals 6

    iget-object v0, p0, Lo/CtasJsonAdapter;->warmup:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/CtasJsonAdapter;->asBinder:Lo/SummaryBankProperties;

    iget-object v2, p0, Lo/CtasJsonAdapter;->ICustomTabsCallback$Stub:Landroid/content/Context;

    iget-object v3, p0, Lo/CtasJsonAdapter;->ICustomTabsCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lo/SummaryBankProperties;->extraCallback(Landroid/content/Context;Ljava/util/Set;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v1

    new-instance v2, Lo/ImageJsonAdapter;

    invoke-direct {v2, p0}, Lo/ImageJsonAdapter;-><init>(Lo/CtasJsonAdapter;)V

    sget-object v3, Lo/Properties;->onNavigationEvent:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2, v3}, Lo/InvalidPaymentAmount$$Parcelable;->onPostMessage(Lo/PaymentModeListResponseJsonAdapter;Lo/Footer$$Parcelable;Ljava/util/concurrent/Executor;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v1

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Lo/CtasJsonAdapter;->onNavigationEvent:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v1, v2, v3, v4, v5}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Lo/PaymentModeListResponseJsonAdapter;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v2

    new-instance v3, Lo/MyCardsResponseJsonAdapter;

    invoke-direct {v3, p0, v2}, Lo/MyCardsResponseJsonAdapter;-><init>(Lo/CtasJsonAdapter;Lo/PaymentModeListResponseJsonAdapter;)V

    sget-object v4, Lo/Properties;->onNavigationEvent:Ljava/util/concurrent/Executor;

    invoke-static {v1, v3, v4}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Lo/PaymentModeListResponseJsonAdapter;Lo/getText2;Ljava/util/concurrent/Executor;)V

    sget-object v1, Lo/CtasJsonAdapter;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final onPostMessage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lo/CtasJsonAdapter;->warmup:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/CtasJsonAdapter;->onPostMessage:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
