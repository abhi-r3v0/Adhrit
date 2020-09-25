.class public Lcom/freshchat/consumer/sdk/j/ab;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/j/ab$b;,
        Lcom/freshchat/consumer/sdk/j/ab$a;
    }
.end annotation


# instance fields
.field private final hK:Lo/writeStringNoTag;

.field private final hl:Lcom/freshchat/consumer/sdk/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/freshchat/consumer/sdk/d/a<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lo/writeFloatNoTag;

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/j/ab;-><init>([Lo/writeFloatNoTag;)V

    return-void
.end method

.method public varargs constructor <init>([Lo/writeFloatNoTag;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-class v2, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    const-string v3, "fragmentType"

    invoke-static {v2, v3}, Lcom/freshchat/consumer/sdk/d/a;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/d/a;

    move-result-object v2

    iput-object v2, v0, Lcom/freshchat/consumer/sdk/j/ab;->hl:Lcom/freshchat/consumer/sdk/d/a;

    const-class v3, Lcom/freshchat/consumer/sdk/beans/fragment/TextFragment;

    sget-object v4, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->TEXT:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v4}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/d/a;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/d/a;

    iget-object v2, v0, Lcom/freshchat/consumer/sdk/j/ab;->hl:Lcom/freshchat/consumer/sdk/d/a;

    const-class v3, Lcom/freshchat/consumer/sdk/beans/fragment/AudioFragment;

    sget-object v4, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->AUDIO:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v4}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/d/a;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/d/a;

    iget-object v2, v0, Lcom/freshchat/consumer/sdk/j/ab;->hl:Lcom/freshchat/consumer/sdk/d/a;

    const-class v3, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;

    sget-object v4, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->IMAGE:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v4}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/d/a;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/d/a;

    iget-object v2, v0, Lcom/freshchat/consumer/sdk/j/ab;->hl:Lcom/freshchat/consumer/sdk/d/a;

    const-class v3, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;

    sget-object v4, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->BUTTON:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v4}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/d/a;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/d/a;

    iget-object v2, v0, Lcom/freshchat/consumer/sdk/j/ab;->hl:Lcom/freshchat/consumer/sdk/d/a;

    const-class v3, Lcom/freshchat/consumer/sdk/beans/fragment/UnknownFragment;

    invoke-virtual {v2, v3}, Lcom/freshchat/consumer/sdk/d/a;->b(Ljava/lang/Class;)Lcom/freshchat/consumer/sdk/d/a;

    new-instance v2, Lo/dropTable;

    invoke-direct {v2}, Lo/dropTable;-><init>()V

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    .line 1433
    iput-object v3, v2, Lo/dropTable;->asBinder:Ljava/lang/String;

    .line 1434
    iget-object v3, v0, Lcom/freshchat/consumer/sdk/j/ab;->hl:Lcom/freshchat/consumer/sdk/d/a;

    .line 1523
    iget-object v4, v2, Lo/dropTable;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    .line 1524
    invoke-virtual {v2, v1}, Lo/dropTable;->ICustomTabsCallback([Lo/writeFloatNoTag;)Lo/dropTable;

    .line 1587
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, v2, Lo/dropTable;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v2, Lo/dropTable;->asInterface:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    iget-object v3, v2, Lo/dropTable;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1589
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1591
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v2, Lo/dropTable;->asInterface:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1592
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1593
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1595
    iget-object v3, v2, Lo/dropTable;->asBinder:Ljava/lang/String;

    iget v4, v2, Lo/dropTable;->onTransact:I

    iget v5, v2, Lo/dropTable;->onRelationshipValidationResult:I

    if-eqz v3, :cond_1

    .line 1611
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1612
    new-instance v4, Lo/writeUInt64NoTag;

    const-class v5, Ljava/util/Date;

    invoke-direct {v4, v5, v3}, Lo/writeUInt64NoTag;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1613
    new-instance v5, Lo/writeUInt64NoTag;

    const-class v6, Ljava/sql/Timestamp;

    invoke-direct {v5, v6, v3}, Lo/writeUInt64NoTag;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1614
    new-instance v6, Lo/writeUInt64NoTag;

    const-class v7, Ljava/sql/Date;

    invoke-direct {v6, v7, v3}, Lo/writeUInt64NoTag;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-eq v4, v3, :cond_2

    if-eq v5, v3, :cond_2

    .line 1616
    new-instance v3, Lo/writeUInt64NoTag;

    const-class v6, Ljava/util/Date;

    invoke-direct {v3, v6, v4, v5}, Lo/writeUInt64NoTag;-><init>(Ljava/lang/Class;II)V

    .line 1617
    new-instance v6, Lo/writeUInt64NoTag;

    const-class v7, Ljava/sql/Timestamp;

    invoke-direct {v6, v7, v4, v5}, Lo/writeUInt64NoTag;-><init>(Ljava/lang/Class;II)V

    .line 1618
    new-instance v7, Lo/writeUInt64NoTag;

    const-class v8, Ljava/sql/Date;

    invoke-direct {v7, v8, v4, v5}, Lo/writeUInt64NoTag;-><init>(Ljava/lang/Class;II)V

    move-object v4, v3

    move-object v5, v6

    move-object v6, v7

    .line 1623
    :goto_0
    const-class v3, Ljava/util/Date;

    invoke-static {v3, v4}, Lo/computeSInt64SizeNoTag;->onPostMessage(Ljava/lang/Class;Lo/computeDoubleSize;)Lo/computeFloatSize;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1624
    const-class v3, Ljava/sql/Timestamp;

    invoke-static {v3, v5}, Lo/computeSInt64SizeNoTag;->onPostMessage(Ljava/lang/Class;Lo/computeDoubleSize;)Lo/computeFloatSize;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1625
    const-class v3, Ljava/sql/Date;

    invoke-static {v3, v6}, Lo/computeSInt64SizeNoTag;->onPostMessage(Ljava/lang/Class;Lo/computeDoubleSize;)Lo/computeFloatSize;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1597
    :cond_2
    new-instance v3, Lo/writeStringNoTag;

    iget-object v6, v2, Lo/dropTable;->onNavigationEvent:Lo/computeSFixed32Size;

    iget-object v7, v2, Lo/dropTable;->onMessageChannelReady:Lo/writeUInt32NoTag;

    iget-object v8, v2, Lo/dropTable;->extraCallback:Ljava/util/Map;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-boolean v12, v2, Lo/dropTable;->ICustomTabsCallback$Stub:Z

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v2, v2, Lo/dropTable;->onPostMessage:Lo/computeInt32Size;

    move-object v5, v3

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    invoke-direct/range {v5 .. v17}, Lo/writeStringNoTag;-><init>(Lo/computeSFixed32Size;Lo/writeUInt32NoTag;Ljava/util/Map;ZZZZZZZLo/computeInt32Size;Ljava/util/List;)V

    iput-object v3, v0, Lcom/freshchat/consumer/sdk/j/ab;->hK:Lo/writeStringNoTag;

    return-void
.end method


# virtual methods
.method public fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/ab;->hK:Lo/writeStringNoTag;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2845
    :cond_0
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 2846
    invoke-virtual {v0, v1, p2}, Lo/writeStringNoTag;->extraCallback(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 2818
    :goto_0
    invoke-static {p2}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/ab;->hK:Lo/writeStringNoTag;

    if-nez p1, :cond_0

    .line 2616
    sget-object p1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    invoke-virtual {v0, p1}, Lo/writeStringNoTag;->onMessageChannelReady(Lo/writeEnumNoTag;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2618
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/writeStringNoTag;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
