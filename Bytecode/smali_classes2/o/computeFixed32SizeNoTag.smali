.class public final Lo/computeFixed32SizeNoTag;
.super Lo/computeTagSize;
.source ""


# static fields
.field private static final onRelationshipValidationResult:Lo/writeSFixed32NoTag;

.field private static final onTransact:Ljava/io/Writer;


# instance fields
.field public final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/writeEnumNoTag;",
            ">;"
        }
    .end annotation
.end field

.field private asBinder:Ljava/lang/String;

.field public onPostMessage:Lo/writeEnumNoTag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lo/computeFixed32SizeNoTag$2;

    invoke-direct {v0}, Lo/computeFixed32SizeNoTag$2;-><init>()V

    sput-object v0, Lo/computeFixed32SizeNoTag;->onTransact:Ljava/io/Writer;

    .line 46
    new-instance v0, Lo/writeSFixed32NoTag;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/computeFixed32SizeNoTag;->onRelationshipValidationResult:Lo/writeSFixed32NoTag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    sget-object v0, Lo/computeFixed32SizeNoTag;->onTransact:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lo/computeTagSize;-><init>(Ljava/io/Writer;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/computeFixed32SizeNoTag;->ICustomTabsCallback:Ljava/util/List;

    .line 55
    sget-object v0, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    iput-object v0, p0, Lo/computeFixed32SizeNoTag;->onPostMessage:Lo/writeEnumNoTag;

    return-void
.end method

.method private extraCallback(Lo/writeEnumNoTag;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lo/computeFixed32SizeNoTag;->asBinder:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1075
    instance-of v0, p1, Lo/writeSInt64NoTag;

    if-eqz v0, :cond_0

    .line 1278
    iget-boolean v0, p0, Lo/computeTagSize;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_2

    .line 2072
    :cond_0
    iget-object v0, p0, Lo/computeFixed32SizeNoTag;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/writeEnumNoTag;

    .line 78
    check-cast v0, Lo/writeSInt32NoTag;

    .line 79
    iget-object v1, p0, Lo/computeFixed32SizeNoTag;->asBinder:Ljava/lang/String;

    .line 3058
    iget-object v0, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez p1, :cond_1

    sget-object p1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_1
    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lo/computeFixed32SizeNoTag;->asBinder:Ljava/lang/String;

    return-void

    .line 82
    :cond_3
    iget-object v0, p0, Lo/computeFixed32SizeNoTag;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    iput-object p1, p0, Lo/computeFixed32SizeNoTag;->onPostMessage:Lo/writeEnumNoTag;

    return-void

    .line 3072
    :cond_4
    iget-object v0, p0, Lo/computeFixed32SizeNoTag;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/writeEnumNoTag;

    .line 86
    instance-of v1, v0, Lo/writeBoolNoTag;

    if-eqz v1, :cond_6

    .line 87
    check-cast v0, Lo/writeBoolNoTag;

    if-nez p1, :cond_5

    .line 3106
    sget-object p1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    .line 3108
    :cond_5
    iget-object v0, v0, Lo/writeBoolNoTag;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 89
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/computeTagSize;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    new-instance v0, Lo/writeBoolNoTag;

    invoke-direct {v0}, Lo/writeBoolNoTag;-><init>()V

    .line 96
    invoke-direct {p0, v0}, Lo/computeFixed32SizeNoTag;->extraCallback(Lo/writeEnumNoTag;)V

    .line 97
    iget-object v1, p0, Lo/computeFixed32SizeNoTag;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;)Lo/computeTagSize;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lo/computeFixed32SizeNoTag;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/computeFixed32SizeNoTag;->asBinder:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 6072
    iget-object v0, p0, Lo/computeFixed32SizeNoTag;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/writeEnumNoTag;

    .line 137
    instance-of v0, v0, Lo/writeSInt32NoTag;

    if-eqz v0, :cond_0

    .line 138
    iput-object p1, p0, Lo/computeFixed32SizeNoTag;->asBinder:Ljava/lang/String;

    return-object p0

    .line 141
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 134
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lo/computeFixed32SizeNoTag;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lo/computeFixed32SizeNoTag;->ICustomTabsCallback:Ljava/util/List;

    sget-object v1, Lo/computeFixed32SizeNoTag;->onRelationshipValidationResult:Lo/writeSFixed32NoTag;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 204
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final extraCallback()Lo/computeTagSize;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    sget-object v0, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    invoke-direct {p0, v0}, Lo/computeFixed32SizeNoTag;->extraCallback(Lo/writeEnumNoTag;)V

    return-object p0
.end method

.method public final extraCallback(Ljava/lang/String;)Lo/computeTagSize;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 6153
    sget-object p1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    invoke-direct {p0, p1}, Lo/computeFixed32SizeNoTag;->extraCallback(Lo/writeEnumNoTag;)V

    return-object p0

    .line 148
    :cond_0
    new-instance v0, Lo/writeSFixed32NoTag;

    invoke-direct {v0, p1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/computeFixed32SizeNoTag;->extraCallback(Lo/writeEnumNoTag;)V

    return-object p0
.end method

.method public final flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final onMessageChannelReady()Lo/computeTagSize;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lo/computeFixed32SizeNoTag;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/computeFixed32SizeNoTag;->asBinder:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 4072
    iget-object v0, p0, Lo/computeFixed32SizeNoTag;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/writeEnumNoTag;

    .line 106
    instance-of v0, v0, Lo/writeBoolNoTag;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lo/computeFixed32SizeNoTag;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 103
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final onMessageChannelReady(Ljava/lang/Number;)Lo/computeTagSize;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 8153
    sget-object p1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    invoke-direct {p0, p1}, Lo/computeFixed32SizeNoTag;->extraCallback(Lo/writeEnumNoTag;)V

    return-object p0

    .line 8243
    :cond_0
    iget-boolean v0, p0, Lo/computeTagSize;->onMessageChannelReady:Z

    if-nez v0, :cond_2

    .line 189
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 190
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 191
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_2
    :goto_0
    new-instance v0, Lo/writeSFixed32NoTag;

    invoke-direct {v0, p1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lo/computeFixed32SizeNoTag;->extraCallback(Lo/writeEnumNoTag;)V

    return-object p0
.end method

.method public final onMessageChannelReady(Z)Lo/computeTagSize;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    new-instance v0, Lo/writeSFixed32NoTag;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lo/computeFixed32SizeNoTag;->extraCallback(Lo/writeEnumNoTag;)V

    return-object p0
.end method

.method public final onNavigationEvent()Lo/computeTagSize;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    new-instance v0, Lo/writeSInt32NoTag;

    invoke-direct {v0}, Lo/writeSInt32NoTag;-><init>()V

    .line 115
    invoke-direct {p0, v0}, Lo/computeFixed32SizeNoTag;->extraCallback(Lo/writeEnumNoTag;)V

    .line 116
    iget-object v1, p0, Lo/computeFixed32SizeNoTag;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final onPostMessage()Lo/computeTagSize;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lo/computeFixed32SizeNoTag;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/computeFixed32SizeNoTag;->asBinder:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 5072
    iget-object v0, p0, Lo/computeFixed32SizeNoTag;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/writeEnumNoTag;

    .line 125
    instance-of v0, v0, Lo/writeSInt32NoTag;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lo/computeFixed32SizeNoTag;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 122
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final onPostMessage(J)Lo/computeTagSize;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    new-instance v0, Lo/writeSFixed32NoTag;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lo/computeFixed32SizeNoTag;->extraCallback(Lo/writeEnumNoTag;)V

    return-object p0
.end method

.method public final onPostMessage(Ljava/lang/Boolean;)Lo/computeTagSize;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 7153
    sget-object p1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    invoke-direct {p0, p1}, Lo/computeFixed32SizeNoTag;->extraCallback(Lo/writeEnumNoTag;)V

    return-object p0

    .line 166
    :cond_0
    new-instance v0, Lo/writeSFixed32NoTag;

    invoke-direct {v0, p1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lo/computeFixed32SizeNoTag;->extraCallback(Lo/writeEnumNoTag;)V

    return-object p0
.end method
