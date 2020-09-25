.class public final Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsReport$Session$Device$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/CrashlyticsReport$Session$Device$Builder;",
        "Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 590
    invoke-static {}, Lo/CrashlyticsReport$Session$Device$Builder;->access$000()Lo/CrashlyticsReport$Session$Device$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/CrashlyticsReport$Session$Device$Builder$4;)V
    .locals 0

    .line 583
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final addAllBaseWrites(Ljava/lang/Iterable;)Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/writeSInt32;",
            ">;)",
            "Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;"
        }
    .end annotation

    .line 1059
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 1060
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Device$Builder;->access$1500(Lo/CrashlyticsReport$Session$Device$Builder;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final addAllWrites(Ljava/lang/Iterable;)Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/writeSInt32;",
            ">;)",
            "Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;"
        }
    .end annotation

    .line 758
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 759
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Device$Builder;->access$600(Lo/CrashlyticsReport$Session$Device$Builder;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final addBaseWrites(ILo/writeSInt32$onPostMessage;)Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;
    .locals 1

    .line 1037
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 1038
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    .line 1039
    invoke-virtual {p2}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p2

    check-cast p2, Lo/writeSInt32;

    .line 1038
    invoke-static {v0, p1, p2}, Lo/CrashlyticsReport$Session$Device$Builder;->access$1400(Lo/CrashlyticsReport$Session$Device$Builder;ILo/writeSInt32;)V

    return-object p0
.end method

.method public final addBaseWrites(ILo/writeSInt32;)Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;
    .locals 1

    .line 995
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 996
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-static {v0, p1, p2}, Lo/CrashlyticsReport$Session$Device$Builder;->access$1400(Lo/CrashlyticsReport$Session$Device$Builder;ILo/writeSInt32;)V

    return-object p0
.end method

.method public final addBaseWrites(Lo/writeSInt32$onPostMessage;)Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;
    .locals 1

    .line 1016
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 1017
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeSInt32;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Device$Builder;->access$1300(Lo/CrashlyticsReport$Session$Device$Builder;Lo/writeSInt32;)V

    return-object p0
.end method

.method public final addBaseWrites(Lo/writeSInt32;)Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;
    .locals 1

    .line 974
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 975
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Device$Builder;->access$1300(Lo/CrashlyticsReport$Session$Device$Builder;Lo/writeSInt32;)V

    return-object p0
.end method

.method public final addWrites(ILo/writeSInt32$onPostMessage;)Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;
    .locals 1

    .line 744
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 745
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    .line 746
    invoke-virtual {p2}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p2

    check-cast p2, Lo/writeSInt32;

    .line 745
    invoke-static {v0, p1, p2}, Lo/CrashlyticsReport$Session$Device$Builder;->access$500(Lo/CrashlyticsReport$Session$Device$Builder;ILo/writeSInt32;)V

    return-object p0
.end method

.method public final addWrites(ILo/writeSInt32;)Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;
    .locals 1

    .line 718
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 719
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-static {v0, p1, p2}, Lo/CrashlyticsReport$Session$Device$Builder;->access$500(Lo/CrashlyticsReport$Session$Device$Builder;ILo/writeSInt32;)V

    return-object p0
.end method

.method public final addWrites(Lo/writeSInt32$onPostMessage;)Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;
    .locals 1

    .line 731
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 732
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeSInt32;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Device$Builder;->access$400(Lo/CrashlyticsReport$Session$Device$Builder;Lo/writeSInt32;)V

    return-object p0
.end method

.method public final addWrites(Lo/writeSInt32;)Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;
    .locals 1

    .line 705
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 706
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Device$Builder;->access$400(Lo/CrashlyticsReport$Session$Device$Builder;Lo/writeSInt32;)V

    return-object p0
.end method

.method public final clearBaseWrites()Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;
    .locals 1

    .line 1079
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 1080
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Device$Builder;->access$1600(Lo/CrashlyticsReport$Session$Device$Builder;)V

    return-object p0
.end method

.method public final clearBatchId()Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;
    .locals 1

    .line 632
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 633
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Device$Builder;->access$200(Lo/CrashlyticsReport$Session$Device$Builder;)V

    return-object p0
.end method

.method public final clearLocalWriteTime()Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;
    .locals 1

    .line 853
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 854
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Device$Builder;->access$1100(Lo/CrashlyticsReport$Session$Device$Builder;)V

    return-object p0
.end method

.method public final clearWrites()Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;
    .locals 1

    .line 770
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 771
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Device$Builder;->access$700(Lo/CrashlyticsReport$Session$Device$Builder;)V

    return-object p0
.end method

.method public final getBaseWrites(I)Lo/writeSInt32;
    .locals 1

    .line 913
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$Session$Device$Builder;->getBaseWrites(I)Lo/writeSInt32;

    move-result-object p1

    return-object p1
.end method

.method public final getBaseWritesCount()I
    .locals 1

    .line 895
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Device$Builder;->getBaseWritesCount()I

    move-result v0

    return v0
.end method

.method public final getBaseWritesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/writeSInt32;",
            ">;"
        }
    .end annotation

    .line 875
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    .line 876
    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Device$Builder;->getBaseWritesList()Ljava/util/List;

    move-result-object v0

    .line 875
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getBatchId()I
    .locals 1

    .line 605
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Device$Builder;->getBatchId()I

    move-result v0

    return v0
.end method

.method public final getLocalWriteTime()Lo/getCustomHeaders;
    .locals 1

    .line 807
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Device$Builder;->getLocalWriteTime()Lo/getCustomHeaders;

    move-result-object v0

    return-object v0
.end method

.method public final getWrites(I)Lo/writeSInt32;
    .locals 1

    .line 668
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$Session$Device$Builder;->getWrites(I)Lo/writeSInt32;

    move-result-object p1

    return-object p1
.end method

.method public final getWritesCount()I
    .locals 1

    .line 658
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Device$Builder;->getWritesCount()I

    move-result v0

    return v0
.end method

.method public final getWritesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/writeSInt32;",
            ">;"
        }
    .end annotation

    .line 646
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    .line 647
    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Device$Builder;->getWritesList()Ljava/util/List;

    move-result-object v0

    .line 646
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final hasLocalWriteTime()Z
    .locals 1

    .line 796
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Device$Builder;->hasLocalWriteTime()Z

    move-result v0

    return v0
.end method

.method public final mergeLocalWriteTime(Lo/getCustomHeaders;)Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;
    .locals 1

    .line 842
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 843
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Device$Builder;->access$1000(Lo/CrashlyticsReport$Session$Device$Builder;Lo/getCustomHeaders;)V

    return-object p0
.end method

.method public final removeBaseWrites(I)Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;
    .locals 1

    .line 1099
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 1100
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Device$Builder;->access$1700(Lo/CrashlyticsReport$Session$Device$Builder;I)V

    return-object p0
.end method

.method public final removeWrites(I)Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;
    .locals 1

    .line 782
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 783
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Device$Builder;->access$800(Lo/CrashlyticsReport$Session$Device$Builder;I)V

    return-object p0
.end method

.method public final setBaseWrites(ILo/writeSInt32$onPostMessage;)Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;
    .locals 1

    .line 953
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 954
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    .line 955
    invoke-virtual {p2}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p2

    check-cast p2, Lo/writeSInt32;

    .line 954
    invoke-static {v0, p1, p2}, Lo/CrashlyticsReport$Session$Device$Builder;->access$1200(Lo/CrashlyticsReport$Session$Device$Builder;ILo/writeSInt32;)V

    return-object p0
.end method

.method public final setBaseWrites(ILo/writeSInt32;)Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;
    .locals 1

    .line 932
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 933
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-static {v0, p1, p2}, Lo/CrashlyticsReport$Session$Device$Builder;->access$1200(Lo/CrashlyticsReport$Session$Device$Builder;ILo/writeSInt32;)V

    return-object p0
.end method

.method public final setBatchId(I)Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;
    .locals 1

    .line 618
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 619
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Device$Builder;->access$100(Lo/CrashlyticsReport$Session$Device$Builder;I)V

    return-object p0
.end method

.method public final setLocalWriteTime(Lo/getCustomHeaders$onMessageChannelReady;)Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;
    .locals 1

    .line 830
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 831
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/getCustomHeaders;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Device$Builder;->access$900(Lo/CrashlyticsReport$Session$Device$Builder;Lo/getCustomHeaders;)V

    return-object p0
.end method

.method public final setLocalWriteTime(Lo/getCustomHeaders;)Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;
    .locals 1

    .line 817
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 818
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Device$Builder;->access$900(Lo/CrashlyticsReport$Session$Device$Builder;Lo/getCustomHeaders;)V

    return-object p0
.end method

.method public final setWrites(ILo/writeSInt32$onPostMessage;)Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;
    .locals 1

    .line 692
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 693
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    .line 694
    invoke-virtual {p2}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p2

    check-cast p2, Lo/writeSInt32;

    .line 693
    invoke-static {v0, p1, p2}, Lo/CrashlyticsReport$Session$Device$Builder;->access$300(Lo/CrashlyticsReport$Session$Device$Builder;ILo/writeSInt32;)V

    return-object p0
.end method

.method public final setWrites(ILo/writeSInt32;)Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;
    .locals 1

    .line 679
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Device$Builder$onMessageChannelReady;->copyOnWrite()V

    .line 680
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Device$Builder;

    invoke-static {v0, p1, p2}, Lo/CrashlyticsReport$Session$Device$Builder;->access$300(Lo/CrashlyticsReport$Session$Device$Builder;ILo/writeSInt32;)V

    return-object p0
.end method
