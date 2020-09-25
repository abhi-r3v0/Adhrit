.class public final Lo/computeBytesSizeNoTag;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/computeFloatSize;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/computeBytesSizeNoTag$extraCallback;,
        Lo/computeBytesSizeNoTag$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/computeFixed64Size;

.field private final onMessageChannelReady:Lo/spaceLeft;

.field private final onNavigationEvent:Lo/writeUInt32NoTag;

.field private final onPostMessage:Lo/computeSFixed32Size;


# direct methods
.method public constructor <init>(Lo/computeFixed64Size;Lo/writeUInt32NoTag;Lo/computeSFixed32Size;Lo/computeBoolSizeNoTag;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Lo/spaceLeft;->onNavigationEvent()Lo/spaceLeft;

    move-result-object p4

    iput-object p4, p0, Lo/computeBytesSizeNoTag;->onMessageChannelReady:Lo/spaceLeft;

    .line 58
    iput-object p1, p0, Lo/computeBytesSizeNoTag;->extraCallback:Lo/computeFixed64Size;

    .line 59
    iput-object p2, p0, Lo/computeBytesSizeNoTag;->onNavigationEvent:Lo/writeUInt32NoTag;

    .line 60
    iput-object p3, p0, Lo/computeBytesSizeNoTag;->onPostMessage:Lo/computeSFixed32Size;

    return-void
.end method

.method private onMessageChannelReady(Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    const-class v0, Lo/computeStringSize;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lo/computeStringSize;

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lo/computeBytesSizeNoTag;->onNavigationEvent:Lo/writeUInt32NoTag;

    invoke-interface {v0, p1}, Lo/writeUInt32NoTag;->onPostMessage(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 80
    :cond_0
    invoke-interface {v0}, Lo/computeStringSize;->extraCallback()Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-interface {v0}, Lo/computeStringSize;->ICustomTabsCallback()[Ljava/lang/String;

    move-result-object v0

    .line 82
    array-length v1, v0

    if-nez v1, :cond_1

    .line 83
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 86
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    array-length p1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    aget-object v3, v0, v2

    .line 89
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private onMessageChannelReady(Lo/writeStringNoTag;Lo/writeRawByte;Ljava/lang/Class;)Ljava/util/Map;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/writeStringNoTag;",
            "Lo/writeRawByte<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/computeBytesSizeNoTag$onMessageChannelReady;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    .line 145
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 146
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v12

    :cond_0
    move-object/from16 v1, p2

    .line 3101
    iget-object v13, v1, Lo/writeRawByte;->onNavigationEvent:Ljava/lang/reflect/Type;

    move-object/from16 v15, p3

    move-object v14, v1

    .line 151
    :goto_0
    const-class v1, Ljava/lang/Object;

    if-eq v15, v1, :cond_c

    .line 152
    invoke-virtual {v15}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    .line 153
    array-length v9, v10

    const/4 v8, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v9, :cond_b

    aget-object v6, v10, v7

    const/4 v5, 0x1

    .line 154
    invoke-direct {v0, v6, v5}, Lo/computeBytesSizeNoTag;->onNavigationEvent(Ljava/lang/reflect/Field;Z)Z

    move-result v1

    .line 155
    invoke-direct {v0, v6, v8}, Lo/computeBytesSizeNoTag;->onNavigationEvent(Ljava/lang/reflect/Field;Z)Z

    move-result v16

    if-nez v1, :cond_2

    if-eqz v16, :cond_1

    goto :goto_2

    :cond_1
    move/from16 v29, v7

    move/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 p3, v14

    move-object/from16 p2, v15

    const/16 v21, 0x0

    goto/16 :goto_8

    .line 159
    :cond_2
    :goto_2
    iget-object v2, v0, Lo/computeBytesSizeNoTag;->onMessageChannelReady:Lo/spaceLeft;

    invoke-virtual {v2, v6}, Lo/spaceLeft;->extraCallback(Ljava/lang/reflect/AccessibleObject;)V

    .line 4101
    iget-object v2, v14, Lo/writeRawByte;->onNavigationEvent:Ljava/lang/reflect/Type;

    .line 160
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v2, v15, v3}, Lo/computeFixed32Size;->ICustomTabsCallback(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v17

    .line 161
    invoke-direct {v0, v6}, Lo/computeBytesSizeNoTag;->onMessageChannelReady(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v4

    .line 163
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/16 v18, 0x0

    move-object/from16 p2, v15

    move-object/from16 v15, v18

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_9

    .line 164
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 p3, v14

    move-object/from16 v14, v19

    check-cast v14, Ljava/lang/String;

    if-eqz v2, :cond_3

    const/16 v19, 0x0

    goto :goto_4

    :cond_3
    move/from16 v19, v1

    .line 167
    :goto_4
    invoke-static/range {v17 .. v17}, Lo/writeRawByte;->extraCallback(Ljava/lang/reflect/Type;)Lo/writeRawByte;

    move-result-object v1

    .line 5094
    iget-object v5, v1, Lo/writeRawByte;->onMessageChannelReady:Ljava/lang/Class;

    .line 6034
    instance-of v8, v5, Ljava/lang/Class;

    if-eqz v8, :cond_4

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v22, 0x1

    goto :goto_5

    :cond_4
    const/16 v22, 0x0

    .line 4110
    :goto_5
    const-class v5, Lo/computeUInt64Size;

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lo/computeUInt64Size;

    if-eqz v5, :cond_5

    .line 4113
    iget-object v8, v0, Lo/computeBytesSizeNoTag;->extraCallback:Lo/computeFixed64Size;

    invoke-static {v8, v11, v1, v5}, Lo/computeBoolSizeNoTag;->onMessageChannelReady(Lo/computeFixed64Size;Lo/writeStringNoTag;Lo/writeRawByte;Lo/computeUInt64Size;)Lo/computeDoubleSize;

    move-result-object v5

    goto :goto_6

    :cond_5
    move-object/from16 v5, v18

    :goto_6
    if-eqz v5, :cond_6

    const/4 v8, 0x1

    goto :goto_7

    :cond_6
    const/4 v8, 0x0

    :goto_7
    if-nez v5, :cond_7

    .line 4117
    invoke-virtual {v11, v1}, Lo/writeStringNoTag;->onPostMessage(Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object v5

    :cond_7
    move-object/from16 v23, v5

    .line 4120
    new-instance v5, Lo/computeBytesSizeNoTag$5;

    move-object/from16 v24, v1

    move-object v1, v5

    move/from16 v25, v2

    move-object v2, v14

    move/from16 v26, v3

    move/from16 v3, v19

    move-object/from16 v27, v4

    move/from16 v4, v16

    move-object v0, v5

    const/16 v20, 0x1

    move-object v5, v6

    move-object/from16 v28, v6

    move v6, v8

    move/from16 v29, v7

    move-object/from16 v7, v23

    const/16 v21, 0x0

    move-object/from16 v8, p1

    move/from16 v23, v9

    move-object/from16 v9, v24

    move-object/from16 v24, v10

    move/from16 v10, v22

    invoke-direct/range {v1 .. v10}, Lo/computeBytesSizeNoTag$5;-><init>(Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLo/computeDoubleSize;Lo/writeStringNoTag;Lo/writeRawByte;Z)V

    .line 168
    invoke-interface {v12, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/computeBytesSizeNoTag$onMessageChannelReady;

    if-nez v15, :cond_8

    move-object v15, v0

    :cond_8
    add-int/lit8 v2, v25, 0x1

    move-object/from16 v14, p3

    move/from16 v1, v19

    move/from16 v9, v23

    move-object/from16 v10, v24

    move/from16 v3, v26

    move-object/from16 v4, v27

    move-object/from16 v6, v28

    move/from16 v7, v29

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_3

    :cond_9
    move/from16 v29, v7

    move/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 p3, v14

    const/16 v21, 0x0

    if-nez v15, :cond_a

    :goto_8
    add-int/lit8 v7, v29, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    move/from16 v9, v23

    move-object/from16 v10, v24

    goto/16 :goto_1

    .line 172
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declares multiple JSON fields named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lo/computeBytesSizeNoTag$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object v1, v14

    move-object/from16 p2, v15

    .line 6101
    iget-object v0, v1, Lo/writeRawByte;->onNavigationEvent:Ljava/lang/reflect/Type;

    .line 176
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-static {v0, v2, v1}, Lo/computeFixed32Size;->ICustomTabsCallback(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lo/writeRawByte;->extraCallback(Ljava/lang/reflect/Type;)Lo/writeRawByte;

    move-result-object v14

    .line 7094
    iget-object v15, v14, Lo/writeRawByte;->onMessageChannelReady:Ljava/lang/Class;

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_c
    return-object v12
.end method

.method private onNavigationEvent(Ljava/lang/reflect/Field;Z)Z
    .locals 9

    .line 65
    iget-object v0, p0, Lo/computeBytesSizeNoTag;->onPostMessage:Lo/computeSFixed32Size;

    .line 1069
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 1210
    invoke-virtual {v0, v1}, Lo/computeSFixed32Size;->ICustomTabsCallback(Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 1211
    invoke-virtual {v0, v1, p2}, Lo/computeSFixed32Size;->extraCallback(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_d

    .line 2152
    iget v1, v0, Lo/computeSFixed32Size;->onPostMessage:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    :goto_2
    const/4 p1, 0x1

    goto/16 :goto_7

    .line 2156
    :cond_2
    iget-wide v1, v0, Lo/computeSFixed32Size;->extraCallback:D

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    cmpl-double v7, v1, v5

    if-eqz v7, :cond_6

    const-class v1, Lo/computeBytesSize;

    .line 2157
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lo/computeBytesSize;

    const-class v2, Lo/computeBoolSize;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lo/computeBoolSize;

    if-eqz v1, :cond_3

    .line 2243
    invoke-interface {v1}, Lo/computeBytesSize;->extraCallback()D

    move-result-wide v5

    .line 2244
    iget-wide v7, v0, Lo/computeSFixed32Size;->extraCallback:D

    cmpl-double v1, v5, v7

    if-lez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_5

    if-eqz v2, :cond_4

    .line 2253
    invoke-interface {v2}, Lo/computeBoolSize;->onMessageChannelReady()D

    move-result-wide v1

    .line 2254
    iget-wide v5, v0, Lo/computeSFixed32Size;->extraCallback:D

    cmpg-double v7, v1, v5

    if-gtz v7, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    const/4 v1, 0x1

    :goto_4
    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    if-nez v1, :cond_6

    goto :goto_2

    .line 2161
    :cond_6
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    .line 2172
    :cond_7
    iget-boolean v1, v0, Lo/computeSFixed32Size;->onNavigationEvent:Z

    if-nez v1, :cond_8

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lo/computeSFixed32Size;->onPostMessage(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    .line 2176
    :cond_8
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lo/computeSFixed32Size;->onNavigationEvent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_2

    :cond_9
    if-eqz p2, :cond_a

    .line 2180
    iget-object p2, v0, Lo/computeSFixed32Size;->onMessageChannelReady:Ljava/util/List;

    goto :goto_6

    :cond_a
    iget-object p2, v0, Lo/computeSFixed32Size;->onTransact:Ljava/util/List;

    .line 2181
    :goto_6
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2182
    new-instance v0, Lo/writeInt32NoTag;

    invoke-direct {v0, p1}, Lo/writeInt32NoTag;-><init>(Ljava/lang/reflect/Field;)V

    .line 2183
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/writeFloatNoTag;

    .line 2184
    invoke-interface {p2, v0}, Lo/writeFloatNoTag;->shouldSkipField(Lo/writeInt32NoTag;)Z

    move-result p2

    if-eqz p2, :cond_b

    goto/16 :goto_2

    :cond_c
    const/4 p1, 0x0

    :goto_7
    if-nez p1, :cond_d

    return v4

    :cond_d
    return v3
.end method


# virtual methods
.method public final create(Lo/writeStringNoTag;Lo/writeRawByte;)Lo/computeDoubleSize;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/writeStringNoTag;",
            "Lo/writeRawByte<",
            "TT;>;)",
            "Lo/computeDoubleSize<",
            "TT;>;"
        }
    .end annotation

    .line 3094
    iget-object v0, p2, Lo/writeRawByte;->onMessageChannelReady:Ljava/lang/Class;

    .line 97
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 101
    :cond_0
    iget-object v1, p0, Lo/computeBytesSizeNoTag;->extraCallback:Lo/computeFixed64Size;

    invoke-virtual {v1, p2}, Lo/computeFixed64Size;->ICustomTabsCallback(Lo/writeRawByte;)Lo/computeDoubleSizeNoTag;

    move-result-object v1

    .line 102
    new-instance v2, Lo/computeBytesSizeNoTag$extraCallback;

    invoke-direct {p0, p1, p2, v0}, Lo/computeBytesSizeNoTag;->onMessageChannelReady(Lo/writeStringNoTag;Lo/writeRawByte;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lo/computeBytesSizeNoTag$extraCallback;-><init>(Lo/computeDoubleSizeNoTag;Ljava/util/Map;)V

    return-object v2
.end method
