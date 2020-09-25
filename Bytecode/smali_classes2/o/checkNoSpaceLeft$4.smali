.class final Lo/checkNoSpaceLeft$4;
.super Lo/computeSInt32Size;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/checkNoSpaceLeft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1590
    invoke-direct {p0}, Lo/computeSInt32Size;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/checkNoSpaceLeft;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1592
    instance-of v0, p1, Lo/computeInt32SizeNoTag;

    if-eqz v0, :cond_0

    .line 1593
    check-cast p1, Lo/computeInt32SizeNoTag;

    .line 2277
    sget-object v0, Lo/writeRawBytes;->onNavigationEvent:Lo/writeRawBytes;

    invoke-virtual {p1, v0}, Lo/computeInt32SizeNoTag;->ICustomTabsCallback(Lo/writeRawBytes;)V

    .line 3151
    iget-object v0, p1, Lo/computeInt32SizeNoTag;->ICustomTabsCallback:[Ljava/lang/Object;

    iget v1, p1, Lo/computeInt32SizeNoTag;->extraCallback:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 2278
    check-cast v0, Ljava/util/Iterator;

    .line 2279
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2280
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/computeInt32SizeNoTag;->onNavigationEvent(Ljava/lang/Object;)V

    .line 2281
    new-instance v1, Lo/writeSFixed32NoTag;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lo/computeInt32SizeNoTag;->onNavigationEvent(Ljava/lang/Object;)V

    return-void

    .line 1596
    :cond_0
    iget v0, p1, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    if-nez v0, :cond_1

    .line 1598
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->requestPostMessageChannel()I

    move-result v0

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    const/16 v0, 0x9

    .line 1601
    iput v0, p1, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    return-void

    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    const/16 v0, 0x8

    .line 1603
    iput v0, p1, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    return-void

    :cond_3
    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    const/16 v0, 0xa

    .line 1605
    iput v0, p1, Lo/checkNoSpaceLeft;->onNavigationEvent:I

    return-void

    .line 1607
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1608
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->extraCommand()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
