.class final Lo/computeSInt64SizeNoTag$25;
.super Lo/computeDoubleSize;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/computeSInt64SizeNoTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/computeDoubleSize<",
        "Lo/writeEnumNoTag;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 698
    invoke-direct {p0}, Lo/computeDoubleSize;-><init>()V

    return-void
.end method

.method private onMessageChannelReady(Lo/computeTagSize;Lo/writeEnumNoTag;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_a

    .line 2075
    instance-of v0, p2, Lo/writeSInt64NoTag;

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 3065
    :cond_0
    instance-of v0, p2, Lo/writeSFixed32NoTag;

    if-eqz v0, :cond_4

    .line 740
    invoke-virtual {p2}, Lo/writeEnumNoTag;->onNavigationEvent()Lo/writeSFixed32NoTag;

    move-result-object p2

    .line 3114
    iget-object v0, p2, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 742
    invoke-virtual {p2}, Lo/writeEnumNoTag;->ICustomTabsCallback()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/computeTagSize;->onMessageChannelReady(Ljava/lang/Number;)Lo/computeTagSize;

    return-void

    .line 4091
    :cond_1
    iget-object v0, p2, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 5091
    iget-object v0, p2, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 4102
    iget-object p2, p2, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    .line 4105
    :cond_2
    invoke-virtual {p2}, Lo/writeEnumNoTag;->onPostMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 744
    :goto_0
    invoke-virtual {p1, p2}, Lo/computeTagSize;->onMessageChannelReady(Z)Lo/computeTagSize;

    return-void

    .line 746
    :cond_3
    invoke-virtual {p2}, Lo/writeEnumNoTag;->onPostMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/computeTagSize;->extraCallback(Ljava/lang/String;)Lo/computeTagSize;

    return-void

    .line 6047
    :cond_4
    instance-of v0, p2, Lo/writeBoolNoTag;

    if-eqz v0, :cond_7

    .line 750
    invoke-virtual {p1}, Lo/computeTagSize;->ICustomTabsCallback()Lo/computeTagSize;

    if-eqz v0, :cond_6

    .line 6105
    check-cast p2, Lo/writeBoolNoTag;

    .line 751
    invoke-virtual {p2}, Lo/writeBoolNoTag;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/writeEnumNoTag;

    .line 752
    invoke-direct {p0, p1, v0}, Lo/computeSInt64SizeNoTag$25;->onMessageChannelReady(Lo/computeTagSize;Lo/writeEnumNoTag;)V

    goto :goto_1

    .line 754
    :cond_5
    invoke-virtual {p1}, Lo/computeTagSize;->onMessageChannelReady()Lo/computeTagSize;

    return-void

    .line 6107
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Not a JSON Array: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7056
    :cond_7
    instance-of v0, p2, Lo/writeSInt32NoTag;

    if-eqz v0, :cond_9

    .line 757
    invoke-virtual {p1}, Lo/computeTagSize;->onNavigationEvent()Lo/computeTagSize;

    .line 758
    invoke-virtual {p2}, Lo/writeEnumNoTag;->onMessageChannelReady()Lo/writeSInt32NoTag;

    move-result-object p2

    .line 7123
    iget-object p2, p2, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    invoke-virtual {p2}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 758
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 759
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lo/computeTagSize;->ICustomTabsCallback(Ljava/lang/String;)Lo/computeTagSize;

    .line 760
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/writeEnumNoTag;

    invoke-direct {p0, p1, v0}, Lo/computeSInt64SizeNoTag$25;->onMessageChannelReady(Lo/computeTagSize;Lo/writeEnumNoTag;)V

    goto :goto_2

    .line 762
    :cond_8
    invoke-virtual {p1}, Lo/computeTagSize;->onPostMessage()Lo/computeTagSize;

    return-void

    .line 765
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t write "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 738
    :cond_a
    :goto_3
    invoke-virtual {p1}, Lo/computeTagSize;->extraCallback()Lo/computeTagSize;

    return-void
.end method

.method private onNavigationEvent(Lo/checkNoSpaceLeft;)Lo/writeEnumNoTag;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 700
    sget-object v0, Lo/computeSInt64SizeNoTag$30;->onPostMessage:[I

    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 732
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 720
    :pswitch_0
    new-instance v0, Lo/writeSInt32NoTag;

    invoke-direct {v0}, Lo/writeSInt32NoTag;-><init>()V

    .line 721
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->onNavigationEvent()V

    .line 722
    :goto_0
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 723
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->asBinder()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lo/computeSInt64SizeNoTag$25;->onNavigationEvent(Lo/checkNoSpaceLeft;)Lo/writeEnumNoTag;

    move-result-object v2

    .line 2058
    iget-object v3, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v2, :cond_0

    sget-object v2, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_0
    invoke-virtual {v3, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 725
    :cond_1
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->onPostMessage()V

    return-object v0

    .line 712
    :pswitch_1
    new-instance v0, Lo/writeBoolNoTag;

    invoke-direct {v0}, Lo/writeBoolNoTag;-><init>()V

    .line 713
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->extraCallback()V

    .line 714
    :goto_1
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 715
    invoke-direct {p0, p1}, Lo/computeSInt64SizeNoTag$25;->onNavigationEvent(Lo/checkNoSpaceLeft;)Lo/writeEnumNoTag;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1106
    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    .line 1108
    :cond_2
    iget-object v2, v0, Lo/writeBoolNoTag;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 717
    :cond_3
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->onMessageChannelReady()V

    return-object v0

    .line 709
    :pswitch_2
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->onRelationshipValidationResult()V

    .line 710
    sget-object p1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    return-object p1

    .line 702
    :pswitch_3
    new-instance v0, Lo/writeSFixed32NoTag;

    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->onTransact()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 707
    :pswitch_4
    new-instance v0, Lo/writeSFixed32NoTag;

    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    .line 704
    :pswitch_5
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->onTransact()Ljava/lang/String;

    move-result-object p1

    .line 705
    new-instance v0, Lo/writeSFixed32NoTag;

    new-instance v1, Lo/computeSFixed64Size;

    invoke-direct {v1, p1}, Lo/computeSFixed64Size;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/Number;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final synthetic read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 698
    invoke-direct {p0, p1}, Lo/computeSInt64SizeNoTag$25;->onNavigationEvent(Lo/checkNoSpaceLeft;)Lo/writeEnumNoTag;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic write(Lo/computeTagSize;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 698
    check-cast p2, Lo/writeEnumNoTag;

    invoke-direct {p0, p1, p2}, Lo/computeSInt64SizeNoTag$25;->onMessageChannelReady(Lo/computeTagSize;Lo/writeEnumNoTag;)V

    return-void
.end method
