.class final Lo/computeFixed64SizeNoTag$onNavigationEvent;
.super Lo/computeDoubleSize;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/computeFixed64SizeNoTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/computeDoubleSize<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/computeDoubleSize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/computeDoubleSize<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/computeDoubleSize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/computeDoubleSize<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/computeDoubleSizeNoTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/computeDoubleSizeNoTag<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private synthetic onPostMessage:Lo/computeFixed64SizeNoTag;


# direct methods
.method public constructor <init>(Lo/computeFixed64SizeNoTag;Lo/writeStringNoTag;Ljava/lang/reflect/Type;Lo/computeDoubleSize;Ljava/lang/reflect/Type;Lo/computeDoubleSize;Lo/computeDoubleSizeNoTag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/writeStringNoTag;",
            "Ljava/lang/reflect/Type;",
            "Lo/computeDoubleSize<",
            "TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lo/computeDoubleSize<",
            "TV;>;",
            "Lo/computeDoubleSizeNoTag<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lo/computeFixed64SizeNoTag$onNavigationEvent;->onPostMessage:Lo/computeFixed64SizeNoTag;

    invoke-direct {p0}, Lo/computeDoubleSize;-><init>()V

    .line 153
    new-instance p1, Lo/computeSInt32SizeNoTag;

    invoke-direct {p1, p2, p4, p3}, Lo/computeSInt32SizeNoTag;-><init>(Lo/writeStringNoTag;Lo/computeDoubleSize;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lo/computeFixed64SizeNoTag$onNavigationEvent;->extraCallback:Lo/computeDoubleSize;

    .line 155
    new-instance p1, Lo/computeSInt32SizeNoTag;

    invoke-direct {p1, p2, p6, p5}, Lo/computeSInt32SizeNoTag;-><init>(Lo/writeStringNoTag;Lo/computeDoubleSize;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lo/computeFixed64SizeNoTag$onNavigationEvent;->onMessageChannelReady:Lo/computeDoubleSize;

    .line 157
    iput-object p7, p0, Lo/computeFixed64SizeNoTag$onNavigationEvent;->onNavigationEvent:Lo/computeDoubleSizeNoTag;

    return-void
.end method


# virtual methods
.method public final synthetic read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1161
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object v0

    .line 1162
    sget-object v1, Lo/writeRawBytes;->onRelationshipValidationResult:Lo/writeRawBytes;

    if-ne v0, v1, :cond_0

    .line 1163
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->onRelationshipValidationResult()V

    const/4 p1, 0x0

    return-object p1

    .line 1167
    :cond_0
    iget-object v1, p0, Lo/computeFixed64SizeNoTag$onNavigationEvent;->onNavigationEvent:Lo/computeDoubleSizeNoTag;

    invoke-interface {v1}, Lo/computeDoubleSizeNoTag;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1169
    sget-object v2, Lo/writeRawBytes;->onMessageChannelReady:Lo/writeRawBytes;

    const-string v3, "duplicate key: "

    if-ne v0, v2, :cond_3

    .line 1170
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->extraCallback()V

    .line 1171
    :goto_0
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1172
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->extraCallback()V

    .line 1173
    iget-object v0, p0, Lo/computeFixed64SizeNoTag$onNavigationEvent;->extraCallback:Lo/computeDoubleSize;

    invoke-virtual {v0, p1}, Lo/computeDoubleSize;->read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;

    move-result-object v0

    .line 1174
    iget-object v2, p0, Lo/computeFixed64SizeNoTag$onNavigationEvent;->onMessageChannelReady:Lo/computeDoubleSize;

    invoke-virtual {v2, p1}, Lo/computeDoubleSize;->read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;

    move-result-object v2

    .line 1175
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1179
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->onMessageChannelReady()V

    goto :goto_0

    .line 1177
    :cond_1
    new-instance p1, Lcom/google/gson/JsonSyntaxException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1181
    :cond_2
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->onMessageChannelReady()V

    goto :goto_2

    .line 1183
    :cond_3
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->onNavigationEvent()V

    .line 1184
    :goto_1
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1185
    sget-object v0, Lo/computeSInt32Size;->ICustomTabsCallback:Lo/computeSInt32Size;

    invoke-virtual {v0, p1}, Lo/computeSInt32Size;->onNavigationEvent(Lo/checkNoSpaceLeft;)V

    .line 1186
    iget-object v0, p0, Lo/computeFixed64SizeNoTag$onNavigationEvent;->extraCallback:Lo/computeDoubleSize;

    invoke-virtual {v0, p1}, Lo/computeDoubleSize;->read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;

    move-result-object v0

    .line 1187
    iget-object v2, p0, Lo/computeFixed64SizeNoTag$onNavigationEvent;->onMessageChannelReady:Lo/computeDoubleSize;

    invoke-virtual {v2, p1}, Lo/computeDoubleSize;->read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;

    move-result-object v2

    .line 1188
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 1190
    :cond_4
    new-instance p1, Lcom/google/gson/JsonSyntaxException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1193
    :cond_5
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->onPostMessage()V

    :goto_2
    return-object v1
.end method

.method public final synthetic write(Lo/computeTagSize;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_0

    .line 1200
    invoke-virtual {p1}, Lo/computeTagSize;->extraCallback()Lo/computeTagSize;

    return-void

    .line 1204
    :cond_0
    iget-object v0, p0, Lo/computeFixed64SizeNoTag$onNavigationEvent;->onPostMessage:Lo/computeFixed64SizeNoTag;

    iget-boolean v0, v0, Lo/computeFixed64SizeNoTag;->onPostMessage:Z

    if-nez v0, :cond_2

    .line 1205
    invoke-virtual {p1}, Lo/computeTagSize;->onNavigationEvent()Lo/computeTagSize;

    .line 1206
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1207
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/computeTagSize;->ICustomTabsCallback(Ljava/lang/String;)Lo/computeTagSize;

    .line 1208
    iget-object v1, p0, Lo/computeFixed64SizeNoTag$onNavigationEvent;->onMessageChannelReady:Lo/computeDoubleSize;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lo/computeDoubleSize;->write(Lo/computeTagSize;Ljava/lang/Object;)V

    goto :goto_0

    .line 1210
    :cond_1
    invoke-virtual {p1}, Lo/computeTagSize;->onPostMessage()Lo/computeTagSize;

    return-void

    .line 1215
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1217
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1218
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1219
    iget-object v5, p0, Lo/computeFixed64SizeNoTag$onNavigationEvent;->extraCallback:Lo/computeDoubleSize;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lo/computeDoubleSize;->toJsonTree(Ljava/lang/Object;)Lo/writeEnumNoTag;

    move-result-object v5

    .line 1220
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1221
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2047
    instance-of v4, v5, Lo/writeBoolNoTag;

    if-nez v4, :cond_4

    .line 2056
    instance-of v4, v5, Lo/writeSInt32NoTag;

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    :goto_3
    or-int/2addr v3, v4

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    .line 1226
    invoke-virtual {p1}, Lo/computeTagSize;->ICustomTabsCallback()Lo/computeTagSize;

    .line 1227
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    :goto_4
    if-ge v2, p2, :cond_6

    .line 1228
    invoke-virtual {p1}, Lo/computeTagSize;->ICustomTabsCallback()Lo/computeTagSize;

    .line 1229
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/writeEnumNoTag;

    .line 2072
    sget-object v4, Lo/computeSInt64SizeNoTag;->cancel:Lo/computeDoubleSize;

    invoke-virtual {v4, p1, v3}, Lo/computeDoubleSize;->write(Lo/computeTagSize;Ljava/lang/Object;)V

    .line 1230
    iget-object v3, p0, Lo/computeFixed64SizeNoTag$onNavigationEvent;->onMessageChannelReady:Lo/computeDoubleSize;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lo/computeDoubleSize;->write(Lo/computeTagSize;Ljava/lang/Object;)V

    .line 1231
    invoke-virtual {p1}, Lo/computeTagSize;->onMessageChannelReady()Lo/computeTagSize;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1233
    :cond_6
    invoke-virtual {p1}, Lo/computeTagSize;->onMessageChannelReady()Lo/computeTagSize;

    return-void

    .line 1235
    :cond_7
    invoke-virtual {p1}, Lo/computeTagSize;->onNavigationEvent()Lo/computeTagSize;

    .line 1236
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    :goto_5
    if-ge v2, p2, :cond_e

    .line 1237
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/writeEnumNoTag;

    .line 3065
    instance-of v4, v3, Lo/writeSFixed32NoTag;

    if-eqz v4, :cond_c

    .line 2247
    invoke-virtual {v3}, Lo/writeEnumNoTag;->onNavigationEvent()Lo/writeSFixed32NoTag;

    move-result-object v3

    .line 3114
    iget-object v4, v3, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Number;

    if-eqz v4, :cond_8

    .line 2249
    invoke-virtual {v3}, Lo/writeEnumNoTag;->ICustomTabsCallback()Ljava/lang/Number;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 4091
    :cond_8
    iget-object v4, v3, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_a

    .line 5091
    iget-object v4, v3, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_9

    .line 4102
    iget-object v3, v3, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_6

    .line 4105
    :cond_9
    invoke-virtual {v3}, Lo/writeEnumNoTag;->onPostMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 2251
    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 5134
    :cond_a
    iget-object v4, v3, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 2253
    invoke-virtual {v3}, Lo/writeEnumNoTag;->onPostMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 2255
    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6075
    :cond_c
    instance-of v3, v3, Lo/writeSInt64NoTag;

    if-eqz v3, :cond_d

    const-string v3, "null"

    .line 1238
    :goto_7
    invoke-virtual {p1, v3}, Lo/computeTagSize;->ICustomTabsCallback(Ljava/lang/String;)Lo/computeTagSize;

    .line 1239
    iget-object v3, p0, Lo/computeFixed64SizeNoTag$onNavigationEvent;->onMessageChannelReady:Lo/computeDoubleSize;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lo/computeDoubleSize;->write(Lo/computeTagSize;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2260
    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1241
    :cond_e
    invoke-virtual {p1}, Lo/computeTagSize;->onPostMessage()Lo/computeTagSize;

    return-void
.end method
