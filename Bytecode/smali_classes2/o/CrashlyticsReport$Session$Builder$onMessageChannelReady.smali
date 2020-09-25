.class public final Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsReport$Session$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/CrashlyticsReport$Session$Builder;",
        "Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 421
    invoke-static {}, Lo/CrashlyticsReport$Session$Builder;->access$000()Lo/CrashlyticsReport$Session$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/CrashlyticsReport$Session$Builder$4;)V
    .locals 0

    .line 414
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearDocument()Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;
    .locals 1

    .line 576
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 577
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Builder;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Builder;->access$700(Lo/CrashlyticsReport$Session$Builder;)V

    return-object p0
.end method

.method public final clearDocumentType()Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;
    .locals 1

    .line 431
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 432
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Builder;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Builder;->access$100(Lo/CrashlyticsReport$Session$Builder;)V

    return-object p0
.end method

.method public final clearHasCommittedMutations()Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;
    .locals 1

    .line 697
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 698
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Builder;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Builder;->access$1200(Lo/CrashlyticsReport$Session$Builder;)V

    return-object p0
.end method

.method public final clearNoDocument()Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;
    .locals 1

    .line 504
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 505
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Builder;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Builder;->access$400(Lo/CrashlyticsReport$Session$Builder;)V

    return-object p0
.end method

.method public final clearUnknownDocument()Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;
    .locals 1

    .line 648
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 649
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Builder;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Builder;->access$1000(Lo/CrashlyticsReport$Session$Builder;)V

    return-object p0
.end method

.method public final getDocument()Lo/writeDouble;
    .locals 1

    .line 529
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Builder;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Builder;->getDocument()Lo/writeDouble;

    move-result-object v0

    return-object v0
.end method

.method public final getDocumentTypeCase()Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;
    .locals 1

    .line 427
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Builder;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Builder;->getDocumentTypeCase()Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

    move-result-object v0

    return-object v0
.end method

.method public final getHasCommittedMutations()Z
    .locals 1

    .line 666
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Builder;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Builder;->getHasCommittedMutations()Z

    move-result v0

    return v0
.end method

.method public final getNoDocument()Lo/setIdentifierFromUtf8Bytes;
    .locals 1

    .line 457
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Builder;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Builder;->getNoDocument()Lo/setIdentifierFromUtf8Bytes;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownDocument()Lo/CrashlyticsReport$Session$Device;
    .locals 1

    .line 601
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Builder;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Builder;->getUnknownDocument()Lo/CrashlyticsReport$Session$Device;

    move-result-object v0

    return-object v0
.end method

.method public final hasDocument()Z
    .locals 1

    .line 518
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Builder;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Builder;->hasDocument()Z

    move-result v0

    return v0
.end method

.method public final hasNoDocument()Z
    .locals 1

    .line 446
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Builder;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Builder;->hasNoDocument()Z

    move-result v0

    return v0
.end method

.method public final hasUnknownDocument()Z
    .locals 1

    .line 590
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Builder;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Builder;->hasUnknownDocument()Z

    move-result v0

    return v0
.end method

.method public final mergeDocument(Lo/writeDouble;)Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;
    .locals 1

    .line 564
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 565
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Builder;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Builder;->access$600(Lo/CrashlyticsReport$Session$Builder;Lo/writeDouble;)V

    return-object p0
.end method

.method public final mergeNoDocument(Lo/setIdentifierFromUtf8Bytes;)Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;
    .locals 1

    .line 492
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 493
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Builder;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Builder;->access$300(Lo/CrashlyticsReport$Session$Builder;Lo/setIdentifierFromUtf8Bytes;)V

    return-object p0
.end method

.method public final mergeUnknownDocument(Lo/CrashlyticsReport$Session$Device;)Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;
    .locals 1

    .line 636
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 637
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Builder;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Builder;->access$900(Lo/CrashlyticsReport$Session$Builder;Lo/CrashlyticsReport$Session$Device;)V

    return-object p0
.end method

.method public final setDocument(Lo/writeDouble$onPostMessage;)Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;
    .locals 1

    .line 552
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 553
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Builder;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeDouble;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Builder;->access$500(Lo/CrashlyticsReport$Session$Builder;Lo/writeDouble;)V

    return-object p0
.end method

.method public final setDocument(Lo/writeDouble;)Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;
    .locals 1

    .line 539
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 540
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Builder;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Builder;->access$500(Lo/CrashlyticsReport$Session$Builder;Lo/writeDouble;)V

    return-object p0
.end method

.method public final setHasCommittedMutations(Z)Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;
    .locals 1

    .line 681
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 682
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Builder;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Builder;->access$1100(Lo/CrashlyticsReport$Session$Builder;Z)V

    return-object p0
.end method

.method public final setNoDocument(Lo/setIdentifierFromUtf8Bytes$extraCallback;)Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;
    .locals 1

    .line 480
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 481
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Builder;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/setIdentifierFromUtf8Bytes;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Builder;->access$200(Lo/CrashlyticsReport$Session$Builder;Lo/setIdentifierFromUtf8Bytes;)V

    return-object p0
.end method

.method public final setNoDocument(Lo/setIdentifierFromUtf8Bytes;)Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;
    .locals 1

    .line 467
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 468
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Builder;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Builder;->access$200(Lo/CrashlyticsReport$Session$Builder;Lo/setIdentifierFromUtf8Bytes;)V

    return-object p0
.end method

.method public final setUnknownDocument(Lo/CrashlyticsReport$Session$Device$onNavigationEvent;)Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;
    .locals 1

    .line 624
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 625
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Builder;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/CrashlyticsReport$Session$Device;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Builder;->access$800(Lo/CrashlyticsReport$Session$Builder;Lo/CrashlyticsReport$Session$Device;)V

    return-object p0
.end method

.method public final setUnknownDocument(Lo/CrashlyticsReport$Session$Device;)Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;
    .locals 1

    .line 611
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 612
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Builder;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Builder;->access$800(Lo/CrashlyticsReport$Session$Builder;Lo/CrashlyticsReport$Session$Device;)V

    return-object p0
.end method
