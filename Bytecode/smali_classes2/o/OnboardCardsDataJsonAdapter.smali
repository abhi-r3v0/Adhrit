.class public final Lo/OnboardCardsDataJsonAdapter;
.super Ljava/lang/Object;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getStart;",
            ">;"
        }
    .end annotation
.end field

.field private asBinder:Lo/SubmitScoreRequest;

.field private final asInterface:Lo/MoshiGradientOrientationAdapter;

.field private final extraCallback:Lo/LoanStatusResponse$BreakDownDetails;

.field private final onMessageChannelReady:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final onPostMessage:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final onRelationshipValidationResult:[Lo/WinRaffleTicketResponse;

.field private final onTransact:Lo/WinDetailsItemJsonAdapter;


# direct methods
.method public constructor <init>(Lo/LoanStatusResponse$BreakDownDetails;Lo/WinDetailsItemJsonAdapter;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lo/OnboardCardsDataJsonAdapter;-><init>(Lo/LoanStatusResponse$BreakDownDetails;Lo/WinDetailsItemJsonAdapter;I)V

    return-void
.end method

.method private constructor <init>(Lo/LoanStatusResponse$BreakDownDetails;Lo/WinDetailsItemJsonAdapter;I)V
    .locals 2

    new-instance p3, Lo/RewardRedeemDialogFragment$dismissAnimation$$inlined$apply$lambda$2$1;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p3, v0}, Lo/RewardRedeemDialogFragment$dismissAnimation$$inlined$apply$lambda$2$1;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0, p3}, Lo/OnboardCardsDataJsonAdapter;-><init>(Lo/LoanStatusResponse$BreakDownDetails;Lo/WinDetailsItemJsonAdapter;ILo/MoshiGradientOrientationAdapter;)V

    return-void
.end method

.method private constructor <init>(Lo/LoanStatusResponse$BreakDownDetails;Lo/WinDetailsItemJsonAdapter;ILo/MoshiGradientOrientationAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p3, p0, Lo/OnboardCardsDataJsonAdapter;->onPostMessage:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lo/OnboardCardsDataJsonAdapter;->onMessageChannelReady:Ljava/util/Set;

    new-instance p3, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object p3, p0, Lo/OnboardCardsDataJsonAdapter;->ICustomTabsCallback:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance p3, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object p3, p0, Lo/OnboardCardsDataJsonAdapter;->onNavigationEvent:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lo/OnboardCardsDataJsonAdapter;->ICustomTabsCallback$Stub:Ljava/util/List;

    iput-object p1, p0, Lo/OnboardCardsDataJsonAdapter;->extraCallback:Lo/LoanStatusResponse$BreakDownDetails;

    iput-object p2, p0, Lo/OnboardCardsDataJsonAdapter;->onTransact:Lo/WinDetailsItemJsonAdapter;

    const/4 p1, 0x4

    new-array p1, p1, [Lo/WinRaffleTicketResponse;

    iput-object p1, p0, Lo/OnboardCardsDataJsonAdapter;->onRelationshipValidationResult:[Lo/WinRaffleTicketResponse;

    iput-object p4, p0, Lo/OnboardCardsDataJsonAdapter;->asInterface:Lo/MoshiGradientOrientationAdapter;

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 6

    iget-object v0, p0, Lo/OnboardCardsDataJsonAdapter;->asBinder:Lo/SubmitScoreRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/SubmitScoreRequest;->ICustomTabsCallback()V

    :cond_0
    iget-object v0, p0, Lo/OnboardCardsDataJsonAdapter;->onRelationshipValidationResult:[Lo/WinRaffleTicketResponse;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lo/WinRaffleTicketResponse;->onPostMessage()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lo/SubmitScoreRequest;

    iget-object v1, p0, Lo/OnboardCardsDataJsonAdapter;->ICustomTabsCallback:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lo/OnboardCardsDataJsonAdapter;->onNavigationEvent:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Lo/OnboardCardsDataJsonAdapter;->extraCallback:Lo/LoanStatusResponse$BreakDownDetails;

    iget-object v5, p0, Lo/OnboardCardsDataJsonAdapter;->asInterface:Lo/MoshiGradientOrientationAdapter;

    invoke-direct {v0, v1, v3, v4, v5}, Lo/SubmitScoreRequest;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lo/LoanStatusResponse$BreakDownDetails;Lo/MoshiGradientOrientationAdapter;)V

    iput-object v0, p0, Lo/OnboardCardsDataJsonAdapter;->asBinder:Lo/SubmitScoreRequest;

    invoke-virtual {v0}, Lo/SubmitScoreRequest;->start()V

    :goto_1
    iget-object v0, p0, Lo/OnboardCardsDataJsonAdapter;->onRelationshipValidationResult:[Lo/WinRaffleTicketResponse;

    array-length v0, v0

    if-ge v2, v0, :cond_3

    new-instance v0, Lo/WinRaffleTicketResponse;

    iget-object v1, p0, Lo/OnboardCardsDataJsonAdapter;->onNavigationEvent:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lo/OnboardCardsDataJsonAdapter;->onTransact:Lo/WinDetailsItemJsonAdapter;

    iget-object v4, p0, Lo/OnboardCardsDataJsonAdapter;->extraCallback:Lo/LoanStatusResponse$BreakDownDetails;

    iget-object v5, p0, Lo/OnboardCardsDataJsonAdapter;->asInterface:Lo/MoshiGradientOrientationAdapter;

    invoke-direct {v0, v1, v3, v4, v5}, Lo/WinRaffleTicketResponse;-><init>(Ljava/util/concurrent/BlockingQueue;Lo/WinDetailsItemJsonAdapter;Lo/LoanStatusResponse$BreakDownDetails;Lo/MoshiGradientOrientationAdapter;)V

    iget-object v1, p0, Lo/OnboardCardsDataJsonAdapter;->onRelationshipValidationResult:[Lo/WinRaffleTicketResponse;

    aput-object v0, v1, v2

    invoke-virtual {v0}, Lo/WinRaffleTicketResponse;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method final onMessageChannelReady(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/OnboardCardsDataJsonAdapter;->onMessageChannelReady:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/OnboardCardsDataJsonAdapter;->onMessageChannelReady:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lo/OnboardCardsDataJsonAdapter;->ICustomTabsCallback$Stub:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lo/OnboardCardsDataJsonAdapter;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getStart;

    invoke-interface {v2, p1}, Lo/getStart;->onNavigationEvent(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;)V

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final onPostMessage(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;)Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1<",
            "TT;>;)",
            "Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->extraCallback(Lo/OnboardCardsDataJsonAdapter;)Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;

    iget-object v0, p0, Lo/OnboardCardsDataJsonAdapter;->onMessageChannelReady:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/OnboardCardsDataJsonAdapter;->onMessageChannelReady:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lo/OnboardCardsDataJsonAdapter;->onPostMessage:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onNavigationEvent(I)Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;

    const-string v0, "add-to-queue"

    invoke-virtual {p1, v0}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/OnboardCardsDataJsonAdapter;->onNavigationEvent:Ljava/util/concurrent/PriorityBlockingQueue;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_0
    iget-object v0, p0, Lo/OnboardCardsDataJsonAdapter;->ICustomTabsCallback:Ljava/util/concurrent/PriorityBlockingQueue;

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
