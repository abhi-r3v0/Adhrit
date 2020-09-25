.class public Lo/s$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/allow$onNavigationEvent;
.implements Lo/UPIJSInterface$1;
.implements Lo/w;
.implements Lo/getCardExpiry;
.implements Lo/Account;
.implements Lo/PaymentInstrumentRequestJsonAdapter$onNavigationEvent;
.implements Lo/setBaseURL;
.implements Lo/component7;
.implements Lo/w$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/s$a$onNavigationEvent;,
        Lo/s$a$onMessageChannelReady;,
        Lo/s$a$extraCallback;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/allow;

.field private final extraCallback:Lo/s$a$onMessageChannelReady;

.field private final onMessageChannelReady:Lo/CheckoutBuilder$PolingRemoteConfig;

.field private final onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lo/t$3;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/t$onMessageChannelReady;


# direct methods
.method protected constructor <init>(Lo/allow;Lo/CheckoutBuilder$PolingRemoteConfig;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 104
    iput-object p1, p0, Lo/s$a;->ICustomTabsCallback:Lo/allow;

    .line 106
    :cond_0
    invoke-static {p2}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/CheckoutBuilder$PolingRemoteConfig;

    iput-object p1, p0, Lo/s$a;->onMessageChannelReady:Lo/CheckoutBuilder$PolingRemoteConfig;

    .line 107
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 108
    new-instance p1, Lo/s$a$onMessageChannelReady;

    invoke-direct {p1}, Lo/s$a$onMessageChannelReady;-><init>()V

    iput-object p1, p0, Lo/s$a;->extraCallback:Lo/s$a$onMessageChannelReady;

    .line 109
    new-instance p1, Lo/t$onMessageChannelReady;

    invoke-direct {p1}, Lo/t$onMessageChannelReady;-><init>()V

    iput-object p1, p0, Lo/s$a;->onPostMessage:Lo/t$onMessageChannelReady;

    return-void
.end method

.method private extraCallback(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/t$3$extraCallback;
    .locals 1

    .line 667
    iget-object v0, p0, Lo/s$a;->ICustomTabsCallback:Lo/allow;

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 669
    iget-object v0, p0, Lo/s$a;->extraCallback:Lo/s$a$onMessageChannelReady;

    invoke-virtual {v0, p2}, Lo/s$a$onMessageChannelReady;->onMessageChannelReady(Lo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/s$a$onNavigationEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 671
    invoke-direct {p0, v0}, Lo/s$a;->onMessageChannelReady(Lo/s$a$onNavigationEvent;)Lo/t$3$extraCallback;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lo/t;->extraCallback:Lo/t;

    .line 672
    invoke-virtual {p0, v0, p1, p2}, Lo/s$a;->ICustomTabsCallback(Lo/t;ILo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/t$3$extraCallback;

    move-result-object p1

    return-object p1

    .line 674
    :cond_1
    iget-object p2, p0, Lo/s$a;->ICustomTabsCallback:Lo/allow;

    invoke-interface {p2}, Lo/allow;->setDefaultImpl()Lo/t;

    move-result-object p2

    .line 675
    invoke-virtual {p2}, Lo/t;->onMessageChannelReady()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    .line 676
    :cond_3
    sget-object p2, Lo/t;->extraCallback:Lo/t;

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lo/s$a;->ICustomTabsCallback(Lo/t;ILo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/t$3$extraCallback;

    move-result-object p1

    return-object p1
.end method

.method private newSession()Lo/t$3$extraCallback;
    .locals 1

    .line 658
    iget-object v0, p0, Lo/s$a;->extraCallback:Lo/s$a$onMessageChannelReady;

    invoke-virtual {v0}, Lo/s$a$onMessageChannelReady;->extraCallback()Lo/s$a$onNavigationEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/s$a;->onMessageChannelReady(Lo/s$a$onNavigationEvent;)Lo/t$3$extraCallback;

    move-result-object v0

    return-object v0
.end method

.method private onMessageChannelReady(Lo/s$a$onNavigationEvent;)Lo/t$3$extraCallback;
    .locals 2

    .line 634
    iget-object v0, p0, Lo/s$a;->ICustomTabsCallback:Lo/allow;

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_3

    .line 636
    iget-object p1, p0, Lo/s$a;->ICustomTabsCallback:Lo/allow;

    invoke-interface {p1}, Lo/allow;->extraCommand()I

    move-result p1

    .line 637
    iget-object v0, p0, Lo/s$a;->extraCallback:Lo/s$a$onMessageChannelReady;

    invoke-virtual {v0, p1}, Lo/s$a$onMessageChannelReady;->onPostMessage(I)Lo/s$a$onNavigationEvent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 639
    iget-object v0, p0, Lo/s$a;->ICustomTabsCallback:Lo/allow;

    invoke-interface {v0}, Lo/allow;->setDefaultImpl()Lo/t;

    move-result-object v0

    .line 640
    invoke-virtual {v0}, Lo/t;->onMessageChannelReady()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 641
    :cond_1
    sget-object v0, Lo/t;->extraCallback:Lo/t;

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lo/s$a;->ICustomTabsCallback(Lo/t;ILo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/t$3$extraCallback;

    move-result-object p1

    return-object p1

    :cond_2
    move-object p1, v0

    .line 645
    :cond_3
    iget-object v0, p1, Lo/s$a$onNavigationEvent;->extraCallback:Lo/t;

    iget v1, p1, Lo/s$a$onNavigationEvent;->onMessageChannelReady:I

    iget-object p1, p1, Lo/s$a$onNavigationEvent;->ICustomTabsCallback:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    invoke-virtual {p0, v0, v1, p1}, Lo/s$a;->ICustomTabsCallback(Lo/t;ILo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/t$3$extraCallback;

    move-result-object p1

    return-object p1
.end method

.method private onRelationshipValidationResult()Lo/t$3$extraCallback;
    .locals 1

    .line 654
    iget-object v0, p0, Lo/s$a;->extraCallback:Lo/s$a$onMessageChannelReady;

    invoke-virtual {v0}, Lo/s$a$onMessageChannelReady;->onNavigationEvent()Lo/s$a$onNavigationEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/s$a;->onMessageChannelReady(Lo/s$a$onNavigationEvent;)Lo/t$3$extraCallback;

    move-result-object v0

    return-object v0
.end method

.method private onTransact()Lo/t$3$extraCallback;
    .locals 1

    .line 650
    iget-object v0, p0, Lo/s$a;->extraCallback:Lo/s$a$onMessageChannelReady;

    invoke-virtual {v0}, Lo/s$a$onMessageChannelReady;->onMessageChannelReady()Lo/s$a$onNavigationEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/s$a;->onMessageChannelReady(Lo/s$a$onNavigationEvent;)Lo/t$3$extraCallback;

    move-result-object v0

    return-object v0
.end method

.method private warmup()Lo/t$3$extraCallback;
    .locals 1

    .line 662
    iget-object v0, p0, Lo/s$a;->extraCallback:Lo/s$a$onMessageChannelReady;

    invoke-virtual {v0}, Lo/s$a$onMessageChannelReady;->ICustomTabsCallback()Lo/s$a$onNavigationEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/s$a;->onMessageChannelReady(Lo/s$a$onNavigationEvent;)Lo/t$3$extraCallback;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected ICustomTabsCallback(Lo/t;ILo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/t$3$extraCallback;
    .locals 12
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "player"
        }
    .end annotation

    .line 600
    invoke-virtual {p1}, Lo/t;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v5, p3

    .line 604
    iget-object p3, p0, Lo/s$a;->onMessageChannelReady:Lo/CheckoutBuilder$PolingRemoteConfig;

    invoke-interface {p3}, Lo/CheckoutBuilder$PolingRemoteConfig;->onNavigationEvent()J

    move-result-wide v1

    .line 606
    iget-object p3, p0, Lo/s$a;->ICustomTabsCallback:Lo/allow;

    .line 607
    invoke-interface {p3}, Lo/allow;->setDefaultImpl()Lo/t;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-ne p1, p3, :cond_1

    iget-object p3, p0, Lo/s$a;->ICustomTabsCallback:Lo/allow;

    invoke-interface {p3}, Lo/allow;->extraCommand()I

    move-result p3

    if-ne p2, p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    const-wide/16 v6, 0x0

    if-eqz v5, :cond_3

    .line 608
    invoke-virtual {v5}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p3, :cond_2

    .line 609
    iget-object p3, p0, Lo/s$a;->ICustomTabsCallback:Lo/allow;

    .line 611
    invoke-interface {p3}, Lo/allow;->IPostMessageService$Stub()I

    move-result p3

    iget v4, v5, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback:I

    if-ne p3, v4, :cond_2

    iget-object p3, p0, Lo/s$a;->ICustomTabsCallback:Lo/allow;

    .line 612
    invoke-interface {p3}, Lo/allow;->IPostMessageService$Stub$Proxy()I

    move-result p3

    iget v4, v5, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->onNavigationEvent:I

    if-ne p3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    .line 614
    iget-object p3, p0, Lo/s$a;->ICustomTabsCallback:Lo/allow;

    invoke-interface {p3}, Lo/allow;->IPostMessageService()J

    move-result-wide v6

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    .line 616
    iget-object p3, p0, Lo/s$a;->ICustomTabsCallback:Lo/allow;

    invoke-interface {p3}, Lo/allow;->INotificationSideChannel()J

    move-result-wide v6

    goto :goto_2

    .line 621
    :cond_4
    invoke-virtual {p1}, Lo/t;->extraCallback()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    iget-object p3, p0, Lo/s$a;->onPostMessage:Lo/t$onMessageChannelReady;

    invoke-virtual {p1, p2, p3}, Lo/t;->onPostMessage(ILo/t$onMessageChannelReady;)Lo/t$onMessageChannelReady;

    move-result-object p3

    invoke-virtual {p3}, Lo/t$onMessageChannelReady;->onMessageChannelReady()J

    move-result-wide v6

    .line 623
    :cond_6
    :goto_2
    new-instance p3, Lo/t$3$extraCallback;

    iget-object v0, p0, Lo/s$a;->ICustomTabsCallback:Lo/allow;

    .line 629
    invoke-interface {v0}, Lo/allow;->IPostMessageService()J

    move-result-wide v8

    iget-object v0, p0, Lo/s$a;->ICustomTabsCallback:Lo/allow;

    .line 630
    invoke-interface {v0}, Lo/allow;->ICustomTabsService$Stub$Proxy()J

    move-result-wide v10

    move-object v0, p3

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v11}, Lo/t$3$extraCallback;-><init>(JLo/t;ILo/InstrumentsCompleteJsonAdapter$extraCallback;JJJ)V

    return-object p3
.end method

.method public final ICustomTabsCallback()V
    .locals 3

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/s$a;->extraCallback:Lo/s$a$onMessageChannelReady;

    .line 165
    invoke-static {v1}, Lo/s$a$onMessageChannelReady;->extraCallback(Lo/s$a$onMessageChannelReady;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 166
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/s$a$onNavigationEvent;

    .line 167
    iget v2, v1, Lo/s$a$onNavigationEvent;->onMessageChannelReady:I

    iget-object v1, v1, Lo/s$a$onNavigationEvent;->ICustomTabsCallback:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    invoke-virtual {p0, v2, v1}, Lo/s$a;->onNavigationEvent(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(I)V
    .locals 3

    .line 233
    invoke-direct {p0}, Lo/s$a;->newSession()Lo/t$3$extraCallback;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/t$3;

    .line 235
    invoke-interface {v2, v0, p1}, Lo/t$3;->onNavigationEvent(Lo/t$3$extraCallback;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)V
    .locals 1

    .line 408
    iget-object v0, p0, Lo/s$a;->extraCallback:Lo/s$a$onMessageChannelReady;

    invoke-virtual {v0, p2}, Lo/s$a$onMessageChannelReady;->onPostMessage(Lo/InstrumentsCompleteJsonAdapter$extraCallback;)V

    .line 409
    invoke-direct {p0, p1, p2}, Lo/s$a;->extraCallback(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/t$3$extraCallback;

    move-result-object p1

    .line 410
    iget-object p2, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/t$3;

    .line 411
    invoke-interface {v0, p1}, Lo/t$3;->extraCallback(Lo/t$3$extraCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(ILo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;)V
    .locals 1

    .line 362
    invoke-direct {p0, p1, p2}, Lo/s$a;->extraCallback(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/t$3$extraCallback;

    move-result-object p1

    .line 363
    iget-object p2, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/t$3;

    .line 364
    invoke-interface {v0, p1, p3, p4}, Lo/t$3;->onNavigationEvent(Lo/t$3$extraCallback;Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(Lo/getCampaign;)V
    .locals 4

    .line 296
    invoke-direct {p0}, Lo/s$a;->onTransact()Lo/t$3$extraCallback;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/t$3;

    const/4 v3, 0x2

    .line 298
    invoke-interface {v2, v0, v3, p1}, Lo/t$3;->onPostMessage(Lo/t$3$extraCallback;ILo/getCampaign;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ICustomTabsCallback(Z)V
    .locals 0

    return-void
.end method

.method public final ICustomTabsCallback$Stub()V
    .locals 3

    .line 583
    invoke-direct {p0}, Lo/s$a;->onTransact()Lo/t$3$extraCallback;

    move-result-object v0

    .line 584
    iget-object v1, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/t$3;

    .line 585
    invoke-interface {v2, v0}, Lo/t$3;->onRelationshipValidationResult(Lo/t$3$extraCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final asBinder()V
    .locals 3

    .line 551
    invoke-direct {p0}, Lo/s$a;->newSession()Lo/t$3$extraCallback;

    move-result-object v0

    .line 552
    iget-object v1, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/t$3;

    .line 553
    invoke-interface {v2, v0}, Lo/t$3;->onTransact(Lo/t$3$extraCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final asInterface()V
    .locals 3

    .line 567
    invoke-direct {p0}, Lo/s$a;->newSession()Lo/t$3$extraCallback;

    move-result-object v0

    .line 568
    iget-object v1, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/t$3;

    .line 569
    invoke-interface {v2, v0}, Lo/t$3;->ICustomTabsCallback$Stub(Lo/t$3$extraCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final extraCallback()V
    .locals 3

    .line 543
    invoke-direct {p0}, Lo/s$a;->newSession()Lo/t$3$extraCallback;

    move-result-object v0

    .line 544
    iget-object v1, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/t$3;

    .line 545
    invoke-interface {v2, v0}, Lo/t$3;->asInterface(Lo/t$3$extraCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final extraCallback(IJ)V
    .locals 3

    .line 286
    invoke-direct {p0}, Lo/s$a;->onTransact()Lo/t$3$extraCallback;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/t$3;

    .line 288
    invoke-interface {v2, v0, p1, p2, p3}, Lo/t$3;->onPostMessage(Lo/t$3$extraCallback;IJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final extraCallback(IJJ)V
    .locals 9

    .line 533
    invoke-direct {p0}, Lo/s$a;->warmup()Lo/t$3$extraCallback;

    move-result-object v7

    .line 534
    iget-object v0, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/t$3;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 535
    invoke-interface/range {v0 .. v6}, Lo/t$3;->onPostMessage(Lo/t$3$extraCallback;IJJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final extraCallback(Ljava/lang/String;JJ)V
    .locals 6

    .line 195
    invoke-direct {p0}, Lo/s$a;->newSession()Lo/t$3$extraCallback;

    move-result-object p2

    .line 196
    iget-object p3, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/t$3;

    const/4 v2, 0x1

    move-object v1, p2

    move-object v3, p1

    move-wide v4, p4

    .line 197
    invoke-interface/range {v0 .. v5}, Lo/t$3;->onPostMessage(Lo/t$3$extraCallback;ILjava/lang/String;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/callAPI;)V
    .locals 3

    .line 175
    invoke-direct {p0}, Lo/s$a;->onRelationshipValidationResult()Lo/t$3$extraCallback;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/t$3;

    .line 177
    invoke-interface {v2, v0, p1}, Lo/t$3;->extraCallback(Lo/t$3$extraCallback;Lo/callAPI;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/p$a;)V
    .locals 4

    .line 278
    invoke-direct {p0}, Lo/s$a;->newSession()Lo/t$3$extraCallback;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/t$3;

    const/4 v3, 0x2

    .line 280
    invoke-interface {v2, v0, v3, p1}, Lo/t$3;->onNavigationEvent(Lo/t$3$extraCallback;ILo/p$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/r;)V
    .locals 3

    .line 512
    invoke-direct {p0}, Lo/s$a;->onRelationshipValidationResult()Lo/t$3$extraCallback;

    move-result-object v0

    .line 513
    iget-object v1, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/t$3;

    .line 514
    invoke-interface {v2, v0, p1}, Lo/t$3;->onNavigationEvent(Lo/t$3$extraCallback;Lo/r;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final extraCallback(Z)V
    .locals 3

    .line 460
    invoke-direct {p0}, Lo/s$a;->onRelationshipValidationResult()Lo/t$3$extraCallback;

    move-result-object v0

    .line 461
    iget-object v1, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/t$3;

    .line 462
    invoke-interface {v2, v0, p1}, Lo/t$3;->onNavigationEvent(Lo/t$3$extraCallback;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(I)V
    .locals 3

    .line 476
    invoke-direct {p0}, Lo/s$a;->onRelationshipValidationResult()Lo/t$3$extraCallback;

    move-result-object v0

    .line 477
    iget-object v1, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/t$3;

    .line 478
    invoke-interface {v2, v0, p1}, Lo/t$3;->extraCallback(Lo/t$3$extraCallback;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMessageChannelReady(II)V
    .locals 3

    .line 329
    invoke-direct {p0}, Lo/s$a;->newSession()Lo/t$3$extraCallback;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/t$3;

    .line 331
    invoke-interface {v2, v0, p1, p2}, Lo/t$3;->extraCallback(Lo/t$3$extraCallback;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(IJJ)V
    .locals 9

    .line 213
    invoke-direct {p0}, Lo/s$a;->newSession()Lo/t$3$extraCallback;

    move-result-object v7

    .line 214
    iget-object v0, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/t$3;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 215
    invoke-interface/range {v0 .. v6}, Lo/t$3;->ICustomTabsCallback(Lo/t$3$extraCallback;IJJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)V
    .locals 1

    .line 339
    iget-object v0, p0, Lo/s$a;->extraCallback:Lo/s$a$onMessageChannelReady;

    invoke-virtual {v0, p1, p2}, Lo/s$a$onMessageChannelReady;->onMessageChannelReady(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)V

    .line 340
    invoke-direct {p0, p1, p2}, Lo/s$a;->extraCallback(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/t$3$extraCallback;

    move-result-object p1

    .line 341
    iget-object p2, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/t$3;

    .line 342
    invoke-interface {v0, p1}, Lo/t$3;->onNavigationEvent(Lo/t$3$extraCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(ILo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;)V
    .locals 1

    .line 374
    invoke-direct {p0, p1, p2}, Lo/s$a;->extraCallback(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/t$3$extraCallback;

    move-result-object p1

    .line 375
    iget-object p2, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/t$3;

    .line 376
    invoke-interface {v0, p1, p3, p4}, Lo/t$3;->onMessageChannelReady(Lo/t$3$extraCallback;Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Landroid/view/Surface;)V
    .locals 3

    .line 304
    invoke-direct {p0}, Lo/s$a;->newSession()Lo/t$3$extraCallback;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/t$3;

    .line 306
    invoke-interface {v2, v0, p1}, Lo/t$3;->onPostMessage(Lo/t$3$extraCallback;Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;JJ)V
    .locals 6

    .line 269
    invoke-direct {p0}, Lo/s$a;->newSession()Lo/t$3$extraCallback;

    move-result-object p2

    .line 270
    iget-object p3, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/t$3;

    const/4 v2, 0x2

    move-object v1, p2

    move-object v3, p1

    move-wide v4, p4

    .line 271
    invoke-interface/range {v0 .. v5}, Lo/t$3;->onPostMessage(Lo/t$3$extraCallback;ILjava/lang/String;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Lo/JuspaySessionToken;Lo/InstrumentDataJsonAdapter;)V
    .locals 3

    .line 452
    invoke-direct {p0}, Lo/s$a;->onRelationshipValidationResult()Lo/t$3$extraCallback;

    move-result-object v0

    .line 453
    iget-object v1, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/t$3;

    .line 454
    invoke-interface {v2, v0, p1, p2}, Lo/t$3;->onPostMessage(Lo/t$3$extraCallback;Lo/JuspaySessionToken;Lo/InstrumentDataJsonAdapter;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Lo/getCampaign;)V
    .locals 4

    .line 223
    invoke-direct {p0}, Lo/s$a;->onTransact()Lo/t$3$extraCallback;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/t$3;

    const/4 v3, 0x1

    .line 225
    invoke-interface {v2, v0, v3, p1}, Lo/t$3;->onPostMessage(Lo/t$3$extraCallback;ILo/getCampaign;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Lo/p$a;)V
    .locals 4

    .line 204
    invoke-direct {p0}, Lo/s$a;->newSession()Lo/t$3$extraCallback;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/t$3;

    const/4 v3, 0x1

    .line 206
    invoke-interface {v2, v0, v3, p1}, Lo/t$3;->onNavigationEvent(Lo/t$3$extraCallback;ILo/p$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMessageChannelReady(Lo/u$b;)V
    .locals 3

    .line 241
    invoke-direct {p0}, Lo/s$a;->newSession()Lo/t$3$extraCallback;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/t$3;

    .line 243
    invoke-interface {v2, v0, p1}, Lo/t$3;->onMessageChannelReady(Lo/t$3$extraCallback;Lo/u$b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Z)V
    .locals 3

    .line 484
    invoke-direct {p0}, Lo/s$a;->onRelationshipValidationResult()Lo/t$3$extraCallback;

    move-result-object v0

    .line 485
    iget-object v1, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/t$3;

    .line 486
    invoke-interface {v2, v0, p1}, Lo/t$3;->onMessageChannelReady(Lo/t$3$extraCallback;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(ZI)V
    .locals 3

    .line 468
    invoke-direct {p0}, Lo/s$a;->onRelationshipValidationResult()Lo/t$3$extraCallback;

    move-result-object v0

    .line 469
    iget-object v1, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/t$3;

    .line 470
    invoke-interface {v2, v0, p1, p2}, Lo/t$3;->ICustomTabsCallback(Lo/t$3$extraCallback;ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onNavigationEvent()V
    .locals 3

    .line 149
    iget-object v0, p0, Lo/s$a;->extraCallback:Lo/s$a$onMessageChannelReady;

    invoke-virtual {v0}, Lo/s$a$onMessageChannelReady;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-direct {p0}, Lo/s$a;->onRelationshipValidationResult()Lo/t$3$extraCallback;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lo/s$a;->extraCallback:Lo/s$a$onMessageChannelReady;

    invoke-virtual {v1}, Lo/s$a$onMessageChannelReady;->onRelationshipValidationResult()V

    .line 152
    iget-object v1, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/t$3;

    .line 153
    invoke-interface {v2, v0}, Lo/t$3;->onMessageChannelReady(Lo/t$3$extraCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNavigationEvent(F)V
    .locals 3

    .line 249
    invoke-direct {p0}, Lo/s$a;->newSession()Lo/t$3$extraCallback;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/t$3;

    .line 251
    invoke-interface {v2, v0, p1}, Lo/t$3;->extraCallback(Lo/t$3$extraCallback;F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(IIIF)V
    .locals 8

    .line 320
    invoke-direct {p0}, Lo/s$a;->newSession()Lo/t$3$extraCallback;

    move-result-object v6

    .line 321
    iget-object v0, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/t$3;

    move-object v1, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 322
    invoke-interface/range {v0 .. v5}, Lo/t$3;->onPostMessage(Lo/t$3$extraCallback;IIIF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)V
    .locals 1

    .line 348
    invoke-direct {p0, p1, p2}, Lo/s$a;->extraCallback(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/t$3$extraCallback;

    move-result-object p1

    .line 349
    iget-object v0, p0, Lo/s$a;->extraCallback:Lo/s$a$onMessageChannelReady;

    invoke-virtual {v0, p2}, Lo/s$a$onMessageChannelReady;->onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 350
    iget-object p2, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/t$3;

    .line 351
    invoke-interface {v0, p1}, Lo/t$3;->onPostMessage(Lo/t$3$extraCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(ILo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;Ljava/io/IOException;Z)V
    .locals 6

    .line 400
    invoke-direct {p0, p1, p2}, Lo/s$a;->extraCallback(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/t$3$extraCallback;

    move-result-object p1

    .line 401
    iget-object p2, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/t$3;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .line 402
    invoke-interface/range {v0 .. v5}, Lo/t$3;->onPostMessage(Lo/t$3$extraCallback;Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;Ljava/io/IOException;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 3

    .line 492
    iget v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->onMessageChannelReady:I

    if-nez v0, :cond_0

    .line 494
    invoke-direct {p0}, Lo/s$a;->warmup()Lo/t$3$extraCallback;

    move-result-object v0

    goto :goto_0

    .line 495
    :cond_0
    invoke-direct {p0}, Lo/s$a;->onRelationshipValidationResult()Lo/t$3$extraCallback;

    move-result-object v0

    .line 496
    :goto_0
    iget-object v1, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/t$3;

    .line 497
    invoke-interface {v2, v0, p1}, Lo/t$3;->onMessageChannelReady(Lo/t$3$extraCallback;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final onNavigationEvent(Lo/getCampaign;)V
    .locals 4

    .line 260
    invoke-direct {p0}, Lo/s$a;->onRelationshipValidationResult()Lo/t$3$extraCallback;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/t$3;

    const/4 v3, 0x2

    .line 262
    invoke-interface {v2, v0, v3, p1}, Lo/t$3;->onMessageChannelReady(Lo/t$3$extraCallback;ILo/getCampaign;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPostMessage()V
    .locals 3

    .line 520
    iget-object v0, p0, Lo/s$a;->extraCallback:Lo/s$a$onMessageChannelReady;

    invoke-virtual {v0}, Lo/s$a$onMessageChannelReady;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lo/s$a;->extraCallback:Lo/s$a$onMessageChannelReady;

    invoke-virtual {v0}, Lo/s$a$onMessageChannelReady;->asBinder()V

    .line 522
    invoke-direct {p0}, Lo/s$a;->onRelationshipValidationResult()Lo/t$3$extraCallback;

    move-result-object v0

    .line 523
    iget-object v1, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/t$3;

    .line 524
    invoke-interface {v2, v0}, Lo/t$3;->ICustomTabsCallback(Lo/t$3$extraCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPostMessage(I)V
    .locals 3

    .line 503
    iget-object v0, p0, Lo/s$a;->extraCallback:Lo/s$a$onMessageChannelReady;

    invoke-virtual {v0, p1}, Lo/s$a$onMessageChannelReady;->onNavigationEvent(I)V

    .line 504
    invoke-direct {p0}, Lo/s$a;->onRelationshipValidationResult()Lo/t$3$extraCallback;

    move-result-object v0

    .line 505
    iget-object v1, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/t$3;

    .line 506
    invoke-interface {v2, v0, p1}, Lo/t$3;->onMessageChannelReady(Lo/t$3$extraCallback;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPostMessage(ILo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/Account$ICustomTabsCallback;)V
    .locals 1

    .line 427
    invoke-direct {p0, p1, p2}, Lo/s$a;->extraCallback(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/t$3$extraCallback;

    move-result-object p1

    .line 428
    iget-object p2, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/t$3;

    .line 429
    invoke-interface {v0, p1, p3}, Lo/t$3;->onMessageChannelReady(Lo/t$3$extraCallback;Lo/Account$ICustomTabsCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPostMessage(ILo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;)V
    .locals 1

    .line 386
    invoke-direct {p0, p1, p2}, Lo/s$a;->extraCallback(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/t$3$extraCallback;

    move-result-object p1

    .line 387
    iget-object p2, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/t$3;

    .line 388
    invoke-interface {v0, p1, p3, p4}, Lo/t$3;->onPostMessage(Lo/t$3$extraCallback;Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPostMessage(Ljava/lang/Exception;)V
    .locals 3

    .line 559
    invoke-direct {p0}, Lo/s$a;->newSession()Lo/t$3$extraCallback;

    move-result-object v0

    .line 560
    iget-object v1, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/t$3;

    .line 561
    invoke-interface {v2, v0, p1}, Lo/t$3;->onNavigationEvent(Lo/t$3$extraCallback;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPostMessage(Lo/getCampaign;)V
    .locals 4

    .line 186
    invoke-direct {p0}, Lo/s$a;->onRelationshipValidationResult()Lo/t$3$extraCallback;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/t$3;

    const/4 v3, 0x1

    .line 188
    invoke-interface {v2, v0, v3, p1}, Lo/t$3;->onMessageChannelReady(Lo/t$3$extraCallback;ILo/getCampaign;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPostMessage(Lo/t;Ljava/lang/Object;I)V
    .locals 1

    .line 442
    iget-object p2, p0, Lo/s$a;->extraCallback:Lo/s$a$onMessageChannelReady;

    invoke-virtual {p2, p1}, Lo/s$a$onMessageChannelReady;->onPostMessage(Lo/t;)V

    .line 443
    invoke-direct {p0}, Lo/s$a;->onRelationshipValidationResult()Lo/t$3$extraCallback;

    move-result-object p1

    .line 444
    iget-object p2, p0, Lo/s$a;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/t$3;

    .line 445
    invoke-interface {v0, p1, p3}, Lo/t$3;->onPostMessage(Lo/t$3$extraCallback;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
