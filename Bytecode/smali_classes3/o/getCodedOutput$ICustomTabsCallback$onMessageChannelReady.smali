.class public final Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/getCodedOutput$asInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCodedOutput$ICustomTabsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/getCodedOutput$ICustomTabsCallback;",
        "Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;",
        ">;",
        "Lo/getCodedOutput$asInterface;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1513
    invoke-static {}, Lo/getCodedOutput$ICustomTabsCallback;->access$2700()Lo/getCodedOutput$ICustomTabsCallback;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/getCodedOutput$4;)V
    .locals 0

    .line 1506
    invoke-direct {p0}, Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final addAllKeyValue(Ljava/lang/Iterable;)Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/getCodedOutput$onNavigationEvent;",
            ">;)",
            "Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;"
        }
    .end annotation

    .line 1655
    invoke-virtual {p0}, Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;->copyOnWrite()V

    .line 1656
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$ICustomTabsCallback;

    invoke-static {v0, p1}, Lo/getCodedOutput$ICustomTabsCallback;->access$3400(Lo/getCodedOutput$ICustomTabsCallback;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final addKeyValue(ILo/getCodedOutput$onNavigationEvent$ICustomTabsCallback;)Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;
    .locals 1

    .line 1645
    invoke-virtual {p0}, Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;->copyOnWrite()V

    .line 1646
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$ICustomTabsCallback;

    .line 1647
    invoke-virtual {p2}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p2

    check-cast p2, Lo/getCodedOutput$onNavigationEvent;

    .line 1646
    invoke-static {v0, p1, p2}, Lo/getCodedOutput$ICustomTabsCallback;->access$3300(Lo/getCodedOutput$ICustomTabsCallback;ILo/getCodedOutput$onNavigationEvent;)V

    return-object p0
.end method

.method public final addKeyValue(ILo/getCodedOutput$onNavigationEvent;)Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;
    .locals 1

    .line 1627
    invoke-virtual {p0}, Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;->copyOnWrite()V

    .line 1628
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$ICustomTabsCallback;

    invoke-static {v0, p1, p2}, Lo/getCodedOutput$ICustomTabsCallback;->access$3300(Lo/getCodedOutput$ICustomTabsCallback;ILo/getCodedOutput$onNavigationEvent;)V

    return-object p0
.end method

.method public final addKeyValue(Lo/getCodedOutput$onNavigationEvent$ICustomTabsCallback;)Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;
    .locals 1

    .line 1636
    invoke-virtual {p0}, Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;->copyOnWrite()V

    .line 1637
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$ICustomTabsCallback;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/getCodedOutput$onNavigationEvent;

    invoke-static {v0, p1}, Lo/getCodedOutput$ICustomTabsCallback;->access$3200(Lo/getCodedOutput$ICustomTabsCallback;Lo/getCodedOutput$onNavigationEvent;)V

    return-object p0
.end method

.method public final addKeyValue(Lo/getCodedOutput$onNavigationEvent;)Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;
    .locals 1

    .line 1618
    invoke-virtual {p0}, Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;->copyOnWrite()V

    .line 1619
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$ICustomTabsCallback;

    invoke-static {v0, p1}, Lo/getCodedOutput$ICustomTabsCallback;->access$3200(Lo/getCodedOutput$ICustomTabsCallback;Lo/getCodedOutput$onNavigationEvent;)V

    return-object p0
.end method

.method public final clearKeyValue()Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;
    .locals 1

    .line 1663
    invoke-virtual {p0}, Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;->copyOnWrite()V

    .line 1664
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$ICustomTabsCallback;

    invoke-static {v0}, Lo/getCodedOutput$ICustomTabsCallback;->access$3500(Lo/getCodedOutput$ICustomTabsCallback;)V

    return-object p0
.end method

.method public final clearNamespace()Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;
    .locals 1

    .line 1558
    invoke-virtual {p0}, Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;->copyOnWrite()V

    .line 1559
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$ICustomTabsCallback;

    invoke-static {v0}, Lo/getCodedOutput$ICustomTabsCallback;->access$2900(Lo/getCodedOutput$ICustomTabsCallback;)V

    return-object p0
.end method

.method public final getKeyValue(I)Lo/getCodedOutput$onNavigationEvent;
    .locals 1

    .line 1593
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$ICustomTabsCallback;

    invoke-virtual {v0, p1}, Lo/getCodedOutput$ICustomTabsCallback;->getKeyValue(I)Lo/getCodedOutput$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public final getKeyValueCount()I
    .locals 1

    .line 1587
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$ICustomTabsCallback;

    invoke-virtual {v0}, Lo/getCodedOutput$ICustomTabsCallback;->getKeyValueCount()I

    move-result v0

    return v0
.end method

.method public final getKeyValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/getCodedOutput$onNavigationEvent;",
            ">;"
        }
    .end annotation

    .line 1579
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$ICustomTabsCallback;

    .line 1580
    invoke-virtual {v0}, Lo/getCodedOutput$ICustomTabsCallback;->getKeyValueList()Ljava/util/List;

    move-result-object v0

    .line 1579
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getNamespace()Ljava/lang/String;
    .locals 1

    .line 1531
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$ICustomTabsCallback;

    invoke-virtual {v0}, Lo/getCodedOutput$ICustomTabsCallback;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNamespaceBytes()Lo/SessionProtobufHelper;
    .locals 1

    .line 1540
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$ICustomTabsCallback;

    invoke-virtual {v0}, Lo/getCodedOutput$ICustomTabsCallback;->getNamespaceBytes()Lo/SessionProtobufHelper;

    move-result-object v0

    return-object v0
.end method

.method public final hasNamespace()Z
    .locals 1

    .line 1523
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$ICustomTabsCallback;

    invoke-virtual {v0}, Lo/getCodedOutput$ICustomTabsCallback;->hasNamespace()Z

    move-result v0

    return v0
.end method

.method public final removeKeyValue(I)Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;
    .locals 1

    .line 1671
    invoke-virtual {p0}, Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;->copyOnWrite()V

    .line 1672
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$ICustomTabsCallback;

    invoke-static {v0, p1}, Lo/getCodedOutput$ICustomTabsCallback;->access$3600(Lo/getCodedOutput$ICustomTabsCallback;I)V

    return-object p0
.end method

.method public final setKeyValue(ILo/getCodedOutput$onNavigationEvent$ICustomTabsCallback;)Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;
    .locals 1

    .line 1609
    invoke-virtual {p0}, Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;->copyOnWrite()V

    .line 1610
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$ICustomTabsCallback;

    .line 1611
    invoke-virtual {p2}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p2

    check-cast p2, Lo/getCodedOutput$onNavigationEvent;

    .line 1610
    invoke-static {v0, p1, p2}, Lo/getCodedOutput$ICustomTabsCallback;->access$3100(Lo/getCodedOutput$ICustomTabsCallback;ILo/getCodedOutput$onNavigationEvent;)V

    return-object p0
.end method

.method public final setKeyValue(ILo/getCodedOutput$onNavigationEvent;)Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;
    .locals 1

    .line 1600
    invoke-virtual {p0}, Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;->copyOnWrite()V

    .line 1601
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$ICustomTabsCallback;

    invoke-static {v0, p1, p2}, Lo/getCodedOutput$ICustomTabsCallback;->access$3100(Lo/getCodedOutput$ICustomTabsCallback;ILo/getCodedOutput$onNavigationEvent;)V

    return-object p0
.end method

.method public final setNamespace(Ljava/lang/String;)Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;
    .locals 1

    .line 1549
    invoke-virtual {p0}, Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;->copyOnWrite()V

    .line 1550
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$ICustomTabsCallback;

    invoke-static {v0, p1}, Lo/getCodedOutput$ICustomTabsCallback;->access$2800(Lo/getCodedOutput$ICustomTabsCallback;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setNamespaceBytes(Lo/SessionProtobufHelper;)Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;
    .locals 1

    .line 1569
    invoke-virtual {p0}, Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;->copyOnWrite()V

    .line 1570
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$ICustomTabsCallback;

    invoke-static {v0, p1}, Lo/getCodedOutput$ICustomTabsCallback;->access$3000(Lo/getCodedOutput$ICustomTabsCallback;Lo/SessionProtobufHelper;)V

    return-object p0
.end method
