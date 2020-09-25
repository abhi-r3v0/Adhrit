.class Lcom/freshchat/consumer/sdk/d/a$1;
.super Lo/computeDoubleSize;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/computeDoubleSize<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic ew:Ljava/util/Map;

.field final synthetic ex:Ljava/util/Map;

.field final synthetic ey:Lcom/freshchat/consumer/sdk/d/a;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/d/a;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/d/a$1;->ey:Lcom/freshchat/consumer/sdk/d/a;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/d/a$1;->ew:Ljava/util/Map;

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/d/a$1;->ex:Ljava/util/Map;

    invoke-direct {p0}, Lo/computeDoubleSize;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/checkNoSpaceLeft;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lo/computeUInt64SizeNoTag;->onPostMessage(Lo/checkNoSpaceLeft;)Lo/writeEnumNoTag;

    move-result-object p1

    invoke-virtual {p1}, Lo/writeEnumNoTag;->onMessageChannelReady()Lo/writeSInt32NoTag;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/d/a$1;->ey:Lcom/freshchat/consumer/sdk/d/a;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/d/a;->a(Lcom/freshchat/consumer/sdk/d/a;)Ljava/lang/String;

    move-result-object v1

    .line 1162
    iget-object v0, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/writeEnumNoTag;

    const-string v1, "cannot deserialize "

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lo/writeEnumNoTag;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/d/a$1;->ey:Lcom/freshchat/consumer/sdk/d/a;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/d/a;->b(Lcom/freshchat/consumer/sdk/d/a;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " subtype named "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; did you forget to register a subtype?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/d/a$1;->ey:Lcom/freshchat/consumer/sdk/d/a;

    invoke-static {v2, v0}, Lcom/freshchat/consumer/sdk/d/a;->a(Lcom/freshchat/consumer/sdk/d/a;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lo/writeEnumNoTag;->onMessageChannelReady()Lo/writeSInt32NoTag;

    move-result-object v0

    invoke-virtual {p1}, Lo/writeEnumNoTag;->onMessageChannelReady()Lo/writeSInt32NoTag;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2080
    sget-object v2, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_0

    :cond_0
    new-instance v3, Lo/writeSFixed32NoTag;

    invoke-direct {v3, v2}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 3058
    :goto_0
    iget-object v0, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v2, :cond_1

    sget-object v2, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_1
    const-string v3, "rawJsonOfUnsupportedType"

    invoke-virtual {v0, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FRESHCHAT_WARNING"

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/ai;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RuntimeTypeAdapterFactory.UNKNOWN_TYPE_LABEL"

    :cond_2
    iget-object v2, p0, Lcom/freshchat/consumer/sdk/d/a$1;->ew:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/computeDoubleSize;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lo/computeDoubleSize;->fromJsonTree(Lo/writeEnumNoTag;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Lcom/google/gson/JsonParseException;

    invoke-direct {p1, v1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1162
    :cond_4
    new-instance p1, Lcom/google/gson/JsonParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/d/a$1;->ey:Lcom/freshchat/consumer/sdk/d/a;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/d/a;->b(Lcom/freshchat/consumer/sdk/d/a;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " because it does not define a field named "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/d/a$1;->ey:Lcom/freshchat/consumer/sdk/d/a;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/d/a;->a(Lcom/freshchat/consumer/sdk/d/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lo/computeTagSize;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/computeTagSize;",
            "TR;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/d/a$1;->ey:Lcom/freshchat/consumer/sdk/d/a;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/d/a;->c(Lcom/freshchat/consumer/sdk/d/a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/d/a$1;->ex:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/computeDoubleSize;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p2}, Lo/computeDoubleSize;->toJsonTree(Ljava/lang/Object;)Lo/writeEnumNoTag;

    move-result-object p2

    invoke-virtual {p2}, Lo/writeEnumNoTag;->onMessageChannelReady()Lo/writeSInt32NoTag;

    move-result-object p2

    new-instance v0, Lo/writeSInt32NoTag;

    invoke-direct {v0}, Lo/writeSInt32NoTag;-><init>()V

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/d/a$1;->ey:Lcom/freshchat/consumer/sdk/d/a;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/d/a;->a(Lcom/freshchat/consumer/sdk/d/a;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lo/writeSFixed32NoTag;

    invoke-direct {v3, v1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    .line 4058
    iget-object v1, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    invoke-virtual {v1, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4123
    iget-object p2, p2, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    invoke-virtual {p2}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/writeEnumNoTag;

    .line 5058
    iget-object v3, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v1, :cond_0

    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_0
    invoke-virtual {v3, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5072
    :cond_1
    sget-object p2, Lo/computeSInt64SizeNoTag;->cancel:Lo/computeDoubleSize;

    invoke-virtual {p2, p1, v0}, Lo/computeDoubleSize;->write(Lo/computeTagSize;Ljava/lang/Object;)V

    return-void

    .line 0
    :cond_2
    new-instance p1, Lcom/google/gson/JsonParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "cannot serialize "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; did you forget to register a subtype?"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
