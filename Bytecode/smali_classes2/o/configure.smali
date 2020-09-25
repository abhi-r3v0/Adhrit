.class final Lo/configure;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/QueueFile$Element;
.implements Lo/getLogBytes;


# instance fields
.field private active:Z

.field private childContext:Lo/configure;

.field private final fallbackEncoder:Lo/QueueFile$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/QueueFile$1<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final ignoreNullValues:Z

.field private final jsonWriter:Landroid/util/JsonWriter;

.field private final objectEncoders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/QueueFile$1<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final valueEncoders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/QueueFile$ElementInputStream<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Lo/QueueFile$1;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/QueueFile$1<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/QueueFile$ElementInputStream<",
            "*>;>;",
            "Lo/QueueFile$1<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lo/configure;->childContext:Lo/configure;

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lo/configure;->active:Z

    .line 48
    new-instance v0, Landroid/util/JsonWriter;

    invoke-direct {v0, p1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    .line 49
    iput-object p2, p0, Lo/configure;->objectEncoders:Ljava/util/Map;

    .line 50
    iput-object p3, p0, Lo/configure;->valueEncoders:Ljava/util/Map;

    .line 51
    iput-object p4, p0, Lo/configure;->fallbackEncoder:Lo/QueueFile$1;

    .line 52
    iput-boolean p5, p0, Lo/configure;->ignoreNullValues:Z

    return-void
.end method

.method private constructor <init>(Lo/configure;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lo/configure;->childContext:Lo/configure;

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lo/configure;->active:Z

    .line 56
    iget-object v0, p1, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    iput-object v0, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    .line 57
    iget-object v0, p1, Lo/configure;->objectEncoders:Ljava/util/Map;

    iput-object v0, p0, Lo/configure;->objectEncoders:Ljava/util/Map;

    .line 58
    iget-object v0, p1, Lo/configure;->valueEncoders:Ljava/util/Map;

    iput-object v0, p0, Lo/configure;->valueEncoders:Ljava/util/Map;

    .line 59
    iget-object v0, p1, Lo/configure;->fallbackEncoder:Lo/QueueFile$1;

    iput-object v0, p0, Lo/configure;->fallbackEncoder:Lo/QueueFile$1;

    .line 60
    iget-boolean p1, p1, Lo/configure;->ignoreNullValues:Z

    iput-boolean p1, p0, Lo/configure;->ignoreNullValues:Z

    return-void
.end method

.method private cannotBeInline(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 284
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/util/Collection;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/util/Date;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Enum;

    if-nez v0, :cond_1

    instance-of p1, p1, Ljava/lang/Number;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private internalAdd(Ljava/lang/String;Ljava/lang/Object;)Lo/configure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/firebase/encoders/EncodingException;
        }
    .end annotation

    .line 311
    invoke-direct {p0}, Lo/configure;->maybeUnNest()V

    .line 312
    iget-object v0, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    if-nez p2, :cond_0

    .line 314
    iget-object p1, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 317
    invoke-virtual {p0, p2, p1}, Lo/configure;->add(Ljava/lang/Object;Z)Lo/configure;

    move-result-object p1

    return-object p1
.end method

.method private internalAddIgnoreNullValues(Ljava/lang/String;Ljava/lang/Object;)Lo/configure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/firebase/encoders/EncodingException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p0

    .line 325
    :cond_0
    invoke-direct {p0}, Lo/configure;->maybeUnNest()V

    .line 326
    iget-object v0, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    const/4 p1, 0x0

    .line 327
    invoke-virtual {p0, p2, p1}, Lo/configure;->add(Ljava/lang/Object;Z)Lo/configure;

    move-result-object p1

    return-object p1
.end method

.method private maybeUnNest()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    iget-boolean v0, p0, Lo/configure;->active:Z

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lo/configure;->childContext:Lo/configure;

    if-eqz v0, :cond_0

    .line 302
    invoke-direct {v0}, Lo/configure;->maybeUnNest()V

    .line 303
    iget-object v0, p0, Lo/configure;->childContext:Lo/configure;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/configure;->active:Z

    const/4 v0, 0x0

    .line 304
    iput-object v0, p0, Lo/configure;->childContext:Lo/configure;

    .line 305
    iget-object v0, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    :cond_0
    return-void

    .line 298
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Parent context used since this context was created. Cannot use this context anymore."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final bridge synthetic add(Ljava/lang/String;D)Lo/QueueFile$Element;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lo/configure;->add(Ljava/lang/String;D)Lo/configure;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic add(Ljava/lang/String;I)Lo/QueueFile$Element;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1, p2}, Lo/configure;->add(Ljava/lang/String;I)Lo/configure;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic add(Ljava/lang/String;J)Lo/QueueFile$Element;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lo/configure;->add(Ljava/lang/String;J)Lo/configure;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic add(Ljava/lang/String;Ljava/lang/Object;)Lo/QueueFile$Element;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1, p2}, Lo/configure;->add(Ljava/lang/String;Ljava/lang/Object;)Lo/configure;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic add(Ljava/lang/String;Z)Lo/QueueFile$Element;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1, p2}, Lo/configure;->add(Ljava/lang/String;Z)Lo/configure;

    move-result-object p1

    return-object p1
.end method

.method public final add(D)Lo/configure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Lo/configure;->maybeUnNest()V

    .line 133
    iget-object v0, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1, p2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    return-object p0
.end method

.method public final add(I)Lo/configure;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    invoke-direct {p0}, Lo/configure;->maybeUnNest()V

    .line 141
    iget-object v0, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    return-object p0
.end method

.method public final add(J)Lo/configure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Lo/configure;->maybeUnNest()V

    .line 149
    iget-object v0, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1, p2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    return-object p0
.end method

.method final add(Ljava/lang/Object;Z)Lo/configure;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 175
    invoke-direct {p0, p1}, Lo/configure;->cannotBeInline(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    new-instance p2, Lcom/google/firebase/encoders/EncodingException;

    new-array v0, v0, [Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    aput-object p1, v0, v1

    const-string p1, "%s cannot be encoded inline"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    if-nez p1, :cond_2

    .line 180
    iget-object p1, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    return-object p0

    .line 183
    :cond_2
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_3

    .line 184
    iget-object p2, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p2, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    return-object p0

    .line 188
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 191
    instance-of p2, p1, [B

    if-eqz p2, :cond_4

    .line 192
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lo/configure;->add([B)Lo/configure;

    move-result-object p1

    return-object p1

    .line 195
    :cond_4
    iget-object p2, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 196
    instance-of p2, p1, [I

    if-eqz p2, :cond_5

    .line 197
    check-cast p1, [I

    array-length p2, p1

    :goto_1
    if-ge v1, p2, :cond_a

    aget v0, p1, v1

    .line 198
    iget-object v2, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 200
    :cond_5
    instance-of p2, p1, [J

    if-eqz p2, :cond_6

    .line 201
    check-cast p1, [J

    array-length p2, p1

    :goto_2
    if-ge v1, p2, :cond_a

    aget-wide v2, p1, v1

    .line 202
    invoke-virtual {p0, v2, v3}, Lo/configure;->add(J)Lo/configure;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 204
    :cond_6
    instance-of p2, p1, [D

    if-eqz p2, :cond_7

    .line 205
    check-cast p1, [D

    array-length p2, p1

    :goto_3
    if-ge v1, p2, :cond_a

    aget-wide v2, p1, v1

    .line 206
    iget-object v0, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 208
    :cond_7
    instance-of p2, p1, [Z

    if-eqz p2, :cond_8

    .line 209
    check-cast p1, [Z

    array-length p2, p1

    :goto_4
    if-ge v1, p2, :cond_a

    aget-boolean v0, p1, v1

    .line 210
    iget-object v2, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 212
    :cond_8
    instance-of p2, p1, [Ljava/lang/Number;

    if-eqz p2, :cond_9

    .line 213
    check-cast p1, [Ljava/lang/Number;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p2, :cond_a

    aget-object v2, p1, v0

    .line 214
    invoke-virtual {p0, v2, v1}, Lo/configure;->add(Ljava/lang/Object;Z)Lo/configure;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 218
    :cond_9
    check-cast p1, [Ljava/lang/Object;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p2, :cond_a

    aget-object v2, p1, v0

    .line 219
    invoke-virtual {p0, v2, v1}, Lo/configure;->add(Ljava/lang/Object;Z)Lo/configure;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 222
    :cond_a
    iget-object p1, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-object p0

    .line 225
    :cond_b
    instance-of v2, p1, Ljava/util/Collection;

    if-eqz v2, :cond_d

    .line 226
    check-cast p1, Ljava/util/Collection;

    .line 227
    iget-object p2, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 228
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 229
    invoke-virtual {p0, p2, v1}, Lo/configure;->add(Ljava/lang/Object;Z)Lo/configure;

    goto :goto_7

    .line 231
    :cond_c
    iget-object p1, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-object p0

    .line 234
    :cond_d
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_f

    .line 236
    check-cast p1, Ljava/util/Map;

    .line 237
    iget-object p2, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 238
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 239
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 241
    :try_start_0
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v3, p2}, Lo/configure;->add(Ljava/lang/String;Ljava/lang/Object;)Lo/configure;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception p1

    .line 243
    new-instance p2, Lcom/google/firebase/encoders/EncodingException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 246
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "Only String keys are currently supported in maps, got %s of type %s instead."

    .line 244
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    .line 250
    :cond_e
    iget-object p1, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-object p0

    .line 254
    :cond_f
    iget-object v0, p0, Lo/configure;->objectEncoders:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/QueueFile$1;

    if-eqz v0, :cond_10

    .line 256
    invoke-virtual {p0, v0, p1, p2}, Lo/configure;->doEncode(Lo/QueueFile$1;Ljava/lang/Object;Z)Lo/configure;

    move-result-object p1

    return-object p1

    .line 259
    :cond_10
    iget-object v0, p0, Lo/configure;->valueEncoders:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/QueueFile$ElementInputStream;

    if-eqz v0, :cond_11

    .line 261
    invoke-interface {v0, p1, p0}, Lo/QueueFile$ElementInputStream;->encode(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 266
    :cond_11
    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_12

    .line 267
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/configure;->add(Ljava/lang/String;)Lo/configure;

    return-object p0

    .line 271
    :cond_12
    iget-object v0, p0, Lo/configure;->fallbackEncoder:Lo/QueueFile$1;

    invoke-virtual {p0, v0, p1, p2}, Lo/configure;->doEncode(Lo/QueueFile$1;Ljava/lang/Object;Z)Lo/configure;

    move-result-object p1

    return-object p1
.end method

.method public final add(Ljava/lang/String;)Lo/configure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Lo/configure;->maybeUnNest()V

    .line 125
    iget-object v0, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    return-object p0
.end method

.method public final add(Ljava/lang/String;D)Lo/configure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lo/configure;->maybeUnNest()V

    .line 77
    iget-object v0, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 78
    invoke-virtual {p0, p2, p3}, Lo/configure;->add(D)Lo/configure;

    move-result-object p1

    return-object p1
.end method

.method public final add(Ljava/lang/String;I)Lo/configure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Lo/configure;->maybeUnNest()V

    .line 85
    iget-object v0, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 86
    invoke-virtual {p0, p2}, Lo/configure;->add(I)Lo/configure;

    move-result-object p1

    return-object p1
.end method

.method public final add(Ljava/lang/String;J)Lo/configure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lo/configure;->maybeUnNest()V

    .line 93
    iget-object v0, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 94
    invoke-virtual {p0, p2, p3}, Lo/configure;->add(J)Lo/configure;

    move-result-object p1

    return-object p1
.end method

.method public final add(Ljava/lang/String;Ljava/lang/Object;)Lo/configure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-boolean v0, p0, Lo/configure;->ignoreNullValues:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0, p1, p2}, Lo/configure;->internalAddIgnoreNullValues(Ljava/lang/String;Ljava/lang/Object;)Lo/configure;

    move-result-object p1

    return-object p1

    .line 70
    :cond_0
    invoke-direct {p0, p1, p2}, Lo/configure;->internalAdd(Ljava/lang/String;Ljava/lang/Object;)Lo/configure;

    move-result-object p1

    return-object p1
.end method

.method public final add(Ljava/lang/String;Z)Lo/configure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Lo/configure;->maybeUnNest()V

    .line 101
    iget-object v0, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 102
    invoke-virtual {p0, p2}, Lo/configure;->add(Z)Lo/configure;

    move-result-object p1

    return-object p1
.end method

.method public final add(Z)Lo/configure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Lo/configure;->maybeUnNest()V

    .line 157
    iget-object v0, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    return-object p0
.end method

.method public final add([B)Lo/configure;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Lo/configure;->maybeUnNest()V

    if-nez p1, :cond_0

    .line 166
    iget-object p1, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic add(D)Lo/getLogBytes;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1, p2}, Lo/configure;->add(D)Lo/configure;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic add(I)Lo/getLogBytes;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1}, Lo/configure;->add(I)Lo/configure;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic add(J)Lo/getLogBytes;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1, p2}, Lo/configure;->add(J)Lo/configure;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic add(Ljava/lang/String;)Lo/getLogBytes;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1}, Lo/configure;->add(Ljava/lang/String;)Lo/configure;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic add(Z)Lo/getLogBytes;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1}, Lo/configure;->add(Z)Lo/configure;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic add([B)Lo/getLogBytes;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1}, Lo/configure;->add([B)Lo/configure;

    move-result-object p1

    return-object p1
.end method

.method final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-direct {p0}, Lo/configure;->maybeUnNest()V

    .line 293
    iget-object v0, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->flush()V

    return-void
.end method

.method final doEncode(Lo/QueueFile$1;Ljava/lang/Object;Z)Lo/configure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/QueueFile$1<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Lo/configure;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 276
    iget-object v0, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 277
    :cond_0
    invoke-interface {p1, p2, p0}, Lo/QueueFile$1;->encode(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p3, :cond_1

    .line 278
    iget-object p1, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    :cond_1
    return-object p0
.end method

.method public final inline(Ljava/lang/Object;)Lo/QueueFile$Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 108
    invoke-virtual {p0, p1, v0}, Lo/configure;->add(Ljava/lang/Object;Z)Lo/configure;

    move-result-object p1

    return-object p1
.end method

.method public final nested(Ljava/lang/String;)Lo/QueueFile$Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lo/configure;->maybeUnNest()V

    .line 115
    new-instance v0, Lo/configure;

    invoke-direct {v0, p0}, Lo/configure;-><init>(Lo/configure;)V

    iput-object v0, p0, Lo/configure;->childContext:Lo/configure;

    .line 116
    iget-object v0, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 117
    iget-object p1, p0, Lo/configure;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 118
    iget-object p1, p0, Lo/configure;->childContext:Lo/configure;

    return-object p1
.end method
