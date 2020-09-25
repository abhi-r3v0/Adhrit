.class public final Lo/CrashlyticsReport$Session$Event$onPostMessage;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsReport$Session$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/CrashlyticsReport$Session$Event;",
        "Lo/CrashlyticsReport$Session$Event$onPostMessage;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 630
    invoke-static {}, Lo/CrashlyticsReport$Session$Event;->access$000()Lo/CrashlyticsReport$Session$Event;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/CrashlyticsReport$Session$Event$4;)V
    .locals 0

    .line 623
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearDocuments()Lo/CrashlyticsReport$Session$Event$onPostMessage;
    .locals 1

    .line 1051
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->copyOnWrite()V

    .line 1052
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Event;->access$1600(Lo/CrashlyticsReport$Session$Event;)V

    return-object p0
.end method

.method public final clearLastLimboFreeSnapshotVersion()Lo/CrashlyticsReport$Session$Event$onPostMessage;
    .locals 1

    .line 1128
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->copyOnWrite()V

    .line 1129
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Event;->access$1900(Lo/CrashlyticsReport$Session$Event;)V

    return-object p0
.end method

.method public final clearLastListenSequenceNumber()Lo/CrashlyticsReport$Session$Event$onPostMessage;
    .locals 1

    .line 907
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->copyOnWrite()V

    .line 908
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Event;->access$1000(Lo/CrashlyticsReport$Session$Event;)V

    return-object p0
.end method

.method public final clearQuery()Lo/CrashlyticsReport$Session$Event$onPostMessage;
    .locals 1

    .line 979
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->copyOnWrite()V

    .line 980
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Event;->access$1300(Lo/CrashlyticsReport$Session$Event;)V

    return-object p0
.end method

.method public final clearResumeToken()Lo/CrashlyticsReport$Session$Event$onPostMessage;
    .locals 1

    .line 840
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->copyOnWrite()V

    .line 841
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Event;->access$800(Lo/CrashlyticsReport$Session$Event;)V

    return-object p0
.end method

.method public final clearSnapshotVersion()Lo/CrashlyticsReport$Session$Event$onPostMessage;
    .locals 1

    .line 767
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->copyOnWrite()V

    .line 768
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Event;->access$600(Lo/CrashlyticsReport$Session$Event;)V

    return-object p0
.end method

.method public final clearTargetId()Lo/CrashlyticsReport$Session$Event$onPostMessage;
    .locals 1

    .line 684
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->copyOnWrite()V

    .line 685
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Event;->access$300(Lo/CrashlyticsReport$Session$Event;)V

    return-object p0
.end method

.method public final clearTargetType()Lo/CrashlyticsReport$Session$Event$onPostMessage;
    .locals 1

    .line 640
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->copyOnWrite()V

    .line 641
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Event;->access$100(Lo/CrashlyticsReport$Session$Event;)V

    return-object p0
.end method

.method public final getDocuments()Lo/writeString$onNavigationEvent;
    .locals 1

    .line 1004
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event;->getDocuments()Lo/writeString$onNavigationEvent;

    move-result-object v0

    return-object v0
.end method

.method public final getLastLimboFreeSnapshotVersion()Lo/getCustomHeaders;
    .locals 1

    .line 1078
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event;->getLastLimboFreeSnapshotVersion()Lo/getCustomHeaders;

    move-result-object v0

    return-object v0
.end method

.method public final getLastListenSequenceNumber()J
    .locals 2

    .line 864
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event;->getLastListenSequenceNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getQuery()Lo/writeString$extraCallback;
    .locals 1

    .line 932
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event;->getQuery()Lo/writeString$extraCallback;

    move-result-object v0

    return-object v0
.end method

.method public final getResumeToken()Lo/SessionProtobufHelper;
    .locals 1

    .line 793
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event;->getResumeToken()Lo/SessionProtobufHelper;

    move-result-object v0

    return-object v0
.end method

.method public final getSnapshotVersion()Lo/getCustomHeaders;
    .locals 1

    .line 713
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event;->getSnapshotVersion()Lo/getCustomHeaders;

    move-result-object v0

    return-object v0
.end method

.method public final getTargetId()I
    .locals 1

    .line 657
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event;->getTargetId()I

    move-result v0

    return v0
.end method

.method public final getTargetTypeCase()Lo/CrashlyticsReport$Session$Event$extraCallback;
    .locals 1

    .line 636
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event;->getTargetTypeCase()Lo/CrashlyticsReport$Session$Event$extraCallback;

    move-result-object v0

    return-object v0
.end method

.method public final hasDocuments()Z
    .locals 1

    .line 993
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event;->hasDocuments()Z

    move-result v0

    return v0
.end method

.method public final hasLastLimboFreeSnapshotVersion()Z
    .locals 1

    .line 1066
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event;->hasLastLimboFreeSnapshotVersion()Z

    move-result v0

    return v0
.end method

.method public final hasQuery()Z
    .locals 1

    .line 921
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event;->hasQuery()Z

    move-result v0

    return v0
.end method

.method public final hasSnapshotVersion()Z
    .locals 1

    .line 700
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event;->hasSnapshotVersion()Z

    move-result v0

    return v0
.end method

.method public final mergeDocuments(Lo/writeString$onNavigationEvent;)Lo/CrashlyticsReport$Session$Event$onPostMessage;
    .locals 1

    .line 1039
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->copyOnWrite()V

    .line 1040
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Event;->access$1500(Lo/CrashlyticsReport$Session$Event;Lo/writeString$onNavigationEvent;)V

    return-object p0
.end method

.method public final mergeLastLimboFreeSnapshotVersion(Lo/getCustomHeaders;)Lo/CrashlyticsReport$Session$Event$onPostMessage;
    .locals 1

    .line 1116
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->copyOnWrite()V

    .line 1117
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Event;->access$1800(Lo/CrashlyticsReport$Session$Event;Lo/getCustomHeaders;)V

    return-object p0
.end method

.method public final mergeQuery(Lo/writeString$extraCallback;)Lo/CrashlyticsReport$Session$Event$onPostMessage;
    .locals 1

    .line 967
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->copyOnWrite()V

    .line 968
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Event;->access$1200(Lo/CrashlyticsReport$Session$Event;Lo/writeString$extraCallback;)V

    return-object p0
.end method

.method public final mergeSnapshotVersion(Lo/getCustomHeaders;)Lo/CrashlyticsReport$Session$Event$onPostMessage;
    .locals 1

    .line 754
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->copyOnWrite()V

    .line 755
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Event;->access$500(Lo/CrashlyticsReport$Session$Event;Lo/getCustomHeaders;)V

    return-object p0
.end method

.method public final setDocuments(Lo/writeString$onNavigationEvent$onMessageChannelReady;)Lo/CrashlyticsReport$Session$Event$onPostMessage;
    .locals 1

    .line 1027
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->copyOnWrite()V

    .line 1028
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeString$onNavigationEvent;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Event;->access$1400(Lo/CrashlyticsReport$Session$Event;Lo/writeString$onNavigationEvent;)V

    return-object p0
.end method

.method public final setDocuments(Lo/writeString$onNavigationEvent;)Lo/CrashlyticsReport$Session$Event$onPostMessage;
    .locals 1

    .line 1014
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->copyOnWrite()V

    .line 1015
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Event;->access$1400(Lo/CrashlyticsReport$Session$Event;Lo/writeString$onNavigationEvent;)V

    return-object p0
.end method

.method public final setLastLimboFreeSnapshotVersion(Lo/getCustomHeaders$onMessageChannelReady;)Lo/CrashlyticsReport$Session$Event$onPostMessage;
    .locals 1

    .line 1103
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->copyOnWrite()V

    .line 1104
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/getCustomHeaders;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Event;->access$1700(Lo/CrashlyticsReport$Session$Event;Lo/getCustomHeaders;)V

    return-object p0
.end method

.method public final setLastLimboFreeSnapshotVersion(Lo/getCustomHeaders;)Lo/CrashlyticsReport$Session$Event$onPostMessage;
    .locals 1

    .line 1089
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->copyOnWrite()V

    .line 1090
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Event;->access$1700(Lo/CrashlyticsReport$Session$Event;Lo/getCustomHeaders;)V

    return-object p0
.end method

.method public final setLastListenSequenceNumber(J)Lo/CrashlyticsReport$Session$Event$onPostMessage;
    .locals 1

    .line 885
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->copyOnWrite()V

    .line 886
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0, p1, p2}, Lo/CrashlyticsReport$Session$Event;->access$900(Lo/CrashlyticsReport$Session$Event;J)V

    return-object p0
.end method

.method public final setQuery(Lo/writeString$extraCallback$onPostMessage;)Lo/CrashlyticsReport$Session$Event$onPostMessage;
    .locals 1

    .line 955
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->copyOnWrite()V

    .line 956
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeString$extraCallback;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Event;->access$1100(Lo/CrashlyticsReport$Session$Event;Lo/writeString$extraCallback;)V

    return-object p0
.end method

.method public final setQuery(Lo/writeString$extraCallback;)Lo/CrashlyticsReport$Session$Event$onPostMessage;
    .locals 1

    .line 942
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->copyOnWrite()V

    .line 943
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Event;->access$1100(Lo/CrashlyticsReport$Session$Event;Lo/writeString$extraCallback;)V

    return-object p0
.end method

.method public final setResumeToken(Lo/SessionProtobufHelper;)Lo/CrashlyticsReport$Session$Event$onPostMessage;
    .locals 1

    .line 816
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->copyOnWrite()V

    .line 817
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Event;->access$700(Lo/CrashlyticsReport$Session$Event;Lo/SessionProtobufHelper;)V

    return-object p0
.end method

.method public final setSnapshotVersion(Lo/getCustomHeaders$onMessageChannelReady;)Lo/CrashlyticsReport$Session$Event$onPostMessage;
    .locals 1

    .line 740
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->copyOnWrite()V

    .line 741
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/getCustomHeaders;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Event;->access$400(Lo/CrashlyticsReport$Session$Event;Lo/getCustomHeaders;)V

    return-object p0
.end method

.method public final setSnapshotVersion(Lo/getCustomHeaders;)Lo/CrashlyticsReport$Session$Event$onPostMessage;
    .locals 1

    .line 725
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->copyOnWrite()V

    .line 726
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Event;->access$400(Lo/CrashlyticsReport$Session$Event;Lo/getCustomHeaders;)V

    return-object p0
.end method

.method public final setTargetId(I)Lo/CrashlyticsReport$Session$Event$onPostMessage;
    .locals 1

    .line 670
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$onPostMessage;->copyOnWrite()V

    .line 671
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/CrashlyticsReport$Session$Event;

    invoke-static {v0, p1}, Lo/CrashlyticsReport$Session$Event;->access$200(Lo/CrashlyticsReport$Session$Event;I)V

    return-object p0
.end method
