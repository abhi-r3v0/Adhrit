.class public final Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCodedOutput$onRelationshipValidationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/getCodedOutput$onRelationshipValidationResult;",
        "Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 453
    invoke-static {}, Lo/getCodedOutput$onRelationshipValidationResult;->access$000()Lo/getCodedOutput$onRelationshipValidationResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/getCodedOutput$4;)V
    .locals 0

    .line 446
    invoke-direct {p0}, Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final addAllAppliedResource(Ljava/lang/Iterable;)Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/getCodedOutput$asBinder;",
            ">;)",
            "Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;"
        }
    .end annotation

    .line 726
    invoke-virtual {p0}, Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;->copyOnWrite()V

    .line 727
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v0, p1}, Lo/getCodedOutput$onRelationshipValidationResult;->access$1600(Lo/getCodedOutput$onRelationshipValidationResult;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final addAppliedResource(ILo/getCodedOutput$asBinder$extraCallback;)Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;
    .locals 1

    .line 716
    invoke-virtual {p0}, Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;->copyOnWrite()V

    .line 717
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    .line 718
    invoke-virtual {p2}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p2

    check-cast p2, Lo/getCodedOutput$asBinder;

    .line 717
    invoke-static {v0, p1, p2}, Lo/getCodedOutput$onRelationshipValidationResult;->access$1500(Lo/getCodedOutput$onRelationshipValidationResult;ILo/getCodedOutput$asBinder;)V

    return-object p0
.end method

.method public final addAppliedResource(ILo/getCodedOutput$asBinder;)Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;
    .locals 1

    .line 698
    invoke-virtual {p0}, Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;->copyOnWrite()V

    .line 699
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v0, p1, p2}, Lo/getCodedOutput$onRelationshipValidationResult;->access$1500(Lo/getCodedOutput$onRelationshipValidationResult;ILo/getCodedOutput$asBinder;)V

    return-object p0
.end method

.method public final addAppliedResource(Lo/getCodedOutput$asBinder$extraCallback;)Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;
    .locals 1

    .line 707
    invoke-virtual {p0}, Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;->copyOnWrite()V

    .line 708
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/getCodedOutput$asBinder;

    invoke-static {v0, p1}, Lo/getCodedOutput$onRelationshipValidationResult;->access$1400(Lo/getCodedOutput$onRelationshipValidationResult;Lo/getCodedOutput$asBinder;)V

    return-object p0
.end method

.method public final addAppliedResource(Lo/getCodedOutput$asBinder;)Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;
    .locals 1

    .line 689
    invoke-virtual {p0}, Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;->copyOnWrite()V

    .line 690
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v0, p1}, Lo/getCodedOutput$onRelationshipValidationResult;->access$1400(Lo/getCodedOutput$onRelationshipValidationResult;Lo/getCodedOutput$asBinder;)V

    return-object p0
.end method

.method public final clearActiveConfigHolder()Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;
    .locals 1

    .line 546
    invoke-virtual {p0}, Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;->copyOnWrite()V

    .line 547
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v0}, Lo/getCodedOutput$onRelationshipValidationResult;->access$600(Lo/getCodedOutput$onRelationshipValidationResult;)V

    return-object p0
.end method

.method public final clearAppliedResource()Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;
    .locals 1

    .line 734
    invoke-virtual {p0}, Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;->copyOnWrite()V

    .line 735
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v0}, Lo/getCodedOutput$onRelationshipValidationResult;->access$1700(Lo/getCodedOutput$onRelationshipValidationResult;)V

    return-object p0
.end method

.method public final clearDefaultsConfigHolder()Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;
    .locals 1

    .line 593
    invoke-virtual {p0}, Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;->copyOnWrite()V

    .line 594
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v0}, Lo/getCodedOutput$onRelationshipValidationResult;->access$900(Lo/getCodedOutput$onRelationshipValidationResult;)V

    return-object p0
.end method

.method public final clearFetchedConfigHolder()Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;
    .locals 1

    .line 499
    invoke-virtual {p0}, Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;->copyOnWrite()V

    .line 500
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v0}, Lo/getCodedOutput$onRelationshipValidationResult;->access$300(Lo/getCodedOutput$onRelationshipValidationResult;)V

    return-object p0
.end method

.method public final clearMetadata()Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;
    .locals 1

    .line 640
    invoke-virtual {p0}, Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;->copyOnWrite()V

    .line 641
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v0}, Lo/getCodedOutput$onRelationshipValidationResult;->access$1200(Lo/getCodedOutput$onRelationshipValidationResult;)V

    return-object p0
.end method

.method public final getActiveConfigHolder()Lo/getCodedOutput$onPostMessage;
    .locals 1

    .line 516
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-virtual {v0}, Lo/getCodedOutput$onRelationshipValidationResult;->getActiveConfigHolder()Lo/getCodedOutput$onPostMessage;

    move-result-object v0

    return-object v0
.end method

.method public final getAppliedResource(I)Lo/getCodedOutput$asBinder;
    .locals 1

    .line 664
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-virtual {v0, p1}, Lo/getCodedOutput$onRelationshipValidationResult;->getAppliedResource(I)Lo/getCodedOutput$asBinder;

    move-result-object p1

    return-object p1
.end method

.method public final getAppliedResourceCount()I
    .locals 1

    .line 658
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-virtual {v0}, Lo/getCodedOutput$onRelationshipValidationResult;->getAppliedResourceCount()I

    move-result v0

    return v0
.end method

.method public final getAppliedResourceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/getCodedOutput$asBinder;",
            ">;"
        }
    .end annotation

    .line 650
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    .line 651
    invoke-virtual {v0}, Lo/getCodedOutput$onRelationshipValidationResult;->getAppliedResourceList()Ljava/util/List;

    move-result-object v0

    .line 650
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultsConfigHolder()Lo/getCodedOutput$onPostMessage;
    .locals 1

    .line 563
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-virtual {v0}, Lo/getCodedOutput$onRelationshipValidationResult;->getDefaultsConfigHolder()Lo/getCodedOutput$onPostMessage;

    move-result-object v0

    return-object v0
.end method

.method public final getFetchedConfigHolder()Lo/getCodedOutput$onPostMessage;
    .locals 1

    .line 469
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-virtual {v0}, Lo/getCodedOutput$onRelationshipValidationResult;->getFetchedConfigHolder()Lo/getCodedOutput$onPostMessage;

    move-result-object v0

    return-object v0
.end method

.method public final getMetadata()Lo/getCodedOutput$onMessageChannelReady;
    .locals 1

    .line 610
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-virtual {v0}, Lo/getCodedOutput$onRelationshipValidationResult;->getMetadata()Lo/getCodedOutput$onMessageChannelReady;

    move-result-object v0

    return-object v0
.end method

.method public final hasActiveConfigHolder()Z
    .locals 1

    .line 509
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-virtual {v0}, Lo/getCodedOutput$onRelationshipValidationResult;->hasActiveConfigHolder()Z

    move-result v0

    return v0
.end method

.method public final hasDefaultsConfigHolder()Z
    .locals 1

    .line 556
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-virtual {v0}, Lo/getCodedOutput$onRelationshipValidationResult;->hasDefaultsConfigHolder()Z

    move-result v0

    return v0
.end method

.method public final hasFetchedConfigHolder()Z
    .locals 1

    .line 462
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-virtual {v0}, Lo/getCodedOutput$onRelationshipValidationResult;->hasFetchedConfigHolder()Z

    move-result v0

    return v0
.end method

.method public final hasMetadata()Z
    .locals 1

    .line 603
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-virtual {v0}, Lo/getCodedOutput$onRelationshipValidationResult;->hasMetadata()Z

    move-result v0

    return v0
.end method

.method public final mergeActiveConfigHolder(Lo/getCodedOutput$onPostMessage;)Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;
    .locals 1

    .line 539
    invoke-virtual {p0}, Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;->copyOnWrite()V

    .line 540
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v0, p1}, Lo/getCodedOutput$onRelationshipValidationResult;->access$500(Lo/getCodedOutput$onRelationshipValidationResult;Lo/getCodedOutput$onPostMessage;)V

    return-object p0
.end method

.method public final mergeDefaultsConfigHolder(Lo/getCodedOutput$onPostMessage;)Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;
    .locals 1

    .line 586
    invoke-virtual {p0}, Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;->copyOnWrite()V

    .line 587
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v0, p1}, Lo/getCodedOutput$onRelationshipValidationResult;->access$800(Lo/getCodedOutput$onRelationshipValidationResult;Lo/getCodedOutput$onPostMessage;)V

    return-object p0
.end method

.method public final mergeFetchedConfigHolder(Lo/getCodedOutput$onPostMessage;)Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;
    .locals 1

    .line 492
    invoke-virtual {p0}, Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;->copyOnWrite()V

    .line 493
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v0, p1}, Lo/getCodedOutput$onRelationshipValidationResult;->access$200(Lo/getCodedOutput$onRelationshipValidationResult;Lo/getCodedOutput$onPostMessage;)V

    return-object p0
.end method

.method public final mergeMetadata(Lo/getCodedOutput$onMessageChannelReady;)Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;
    .locals 1

    .line 633
    invoke-virtual {p0}, Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;->copyOnWrite()V

    .line 634
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v0, p1}, Lo/getCodedOutput$onRelationshipValidationResult;->access$1100(Lo/getCodedOutput$onRelationshipValidationResult;Lo/getCodedOutput$onMessageChannelReady;)V

    return-object p0
.end method

.method public final removeAppliedResource(I)Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;
    .locals 1

    .line 742
    invoke-virtual {p0}, Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;->copyOnWrite()V

    .line 743
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v0, p1}, Lo/getCodedOutput$onRelationshipValidationResult;->access$1800(Lo/getCodedOutput$onRelationshipValidationResult;I)V

    return-object p0
.end method

.method public final setActiveConfigHolder(Lo/getCodedOutput$onPostMessage$extraCallback;)Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;
    .locals 1

    .line 531
    invoke-virtual {p0}, Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;->copyOnWrite()V

    .line 532
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/getCodedOutput$onPostMessage;

    invoke-static {v0, p1}, Lo/getCodedOutput$onRelationshipValidationResult;->access$400(Lo/getCodedOutput$onRelationshipValidationResult;Lo/getCodedOutput$onPostMessage;)V

    return-object p0
.end method

.method public final setActiveConfigHolder(Lo/getCodedOutput$onPostMessage;)Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;
    .locals 1

    .line 522
    invoke-virtual {p0}, Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;->copyOnWrite()V

    .line 523
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v0, p1}, Lo/getCodedOutput$onRelationshipValidationResult;->access$400(Lo/getCodedOutput$onRelationshipValidationResult;Lo/getCodedOutput$onPostMessage;)V

    return-object p0
.end method

.method public final setAppliedResource(ILo/getCodedOutput$asBinder$extraCallback;)Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;
    .locals 1

    .line 680
    invoke-virtual {p0}, Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;->copyOnWrite()V

    .line 681
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    .line 682
    invoke-virtual {p2}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p2

    check-cast p2, Lo/getCodedOutput$asBinder;

    .line 681
    invoke-static {v0, p1, p2}, Lo/getCodedOutput$onRelationshipValidationResult;->access$1300(Lo/getCodedOutput$onRelationshipValidationResult;ILo/getCodedOutput$asBinder;)V

    return-object p0
.end method

.method public final setAppliedResource(ILo/getCodedOutput$asBinder;)Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;
    .locals 1

    .line 671
    invoke-virtual {p0}, Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;->copyOnWrite()V

    .line 672
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v0, p1, p2}, Lo/getCodedOutput$onRelationshipValidationResult;->access$1300(Lo/getCodedOutput$onRelationshipValidationResult;ILo/getCodedOutput$asBinder;)V

    return-object p0
.end method

.method public final setDefaultsConfigHolder(Lo/getCodedOutput$onPostMessage$extraCallback;)Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;
    .locals 1

    .line 578
    invoke-virtual {p0}, Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;->copyOnWrite()V

    .line 579
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/getCodedOutput$onPostMessage;

    invoke-static {v0, p1}, Lo/getCodedOutput$onRelationshipValidationResult;->access$700(Lo/getCodedOutput$onRelationshipValidationResult;Lo/getCodedOutput$onPostMessage;)V

    return-object p0
.end method

.method public final setDefaultsConfigHolder(Lo/getCodedOutput$onPostMessage;)Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;
    .locals 1

    .line 569
    invoke-virtual {p0}, Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;->copyOnWrite()V

    .line 570
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v0, p1}, Lo/getCodedOutput$onRelationshipValidationResult;->access$700(Lo/getCodedOutput$onRelationshipValidationResult;Lo/getCodedOutput$onPostMessage;)V

    return-object p0
.end method

.method public final setFetchedConfigHolder(Lo/getCodedOutput$onPostMessage$extraCallback;)Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;
    .locals 1

    .line 484
    invoke-virtual {p0}, Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;->copyOnWrite()V

    .line 485
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/getCodedOutput$onPostMessage;

    invoke-static {v0, p1}, Lo/getCodedOutput$onRelationshipValidationResult;->access$100(Lo/getCodedOutput$onRelationshipValidationResult;Lo/getCodedOutput$onPostMessage;)V

    return-object p0
.end method

.method public final setFetchedConfigHolder(Lo/getCodedOutput$onPostMessage;)Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;
    .locals 1

    .line 475
    invoke-virtual {p0}, Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;->copyOnWrite()V

    .line 476
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v0, p1}, Lo/getCodedOutput$onRelationshipValidationResult;->access$100(Lo/getCodedOutput$onRelationshipValidationResult;Lo/getCodedOutput$onPostMessage;)V

    return-object p0
.end method

.method public final setMetadata(Lo/getCodedOutput$onMessageChannelReady$onNavigationEvent;)Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;
    .locals 1

    .line 625
    invoke-virtual {p0}, Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;->copyOnWrite()V

    .line 626
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/getCodedOutput$onMessageChannelReady;

    invoke-static {v0, p1}, Lo/getCodedOutput$onRelationshipValidationResult;->access$1000(Lo/getCodedOutput$onRelationshipValidationResult;Lo/getCodedOutput$onMessageChannelReady;)V

    return-object p0
.end method

.method public final setMetadata(Lo/getCodedOutput$onMessageChannelReady;)Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;
    .locals 1

    .line 616
    invoke-virtual {p0}, Lo/getCodedOutput$onRelationshipValidationResult$onNavigationEvent;->copyOnWrite()V

    .line 617
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onRelationshipValidationResult;

    invoke-static {v0, p1}, Lo/getCodedOutput$onRelationshipValidationResult;->access$1000(Lo/getCodedOutput$onRelationshipValidationResult;Lo/getCodedOutput$onMessageChannelReady;)V

    return-object p0
.end method
