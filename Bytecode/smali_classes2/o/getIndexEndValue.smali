.class public final Lo/getIndexEndValue;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getIndexEndValue$onMessageChannelReady;
    }
.end annotation


# static fields
.field public static final synthetic extraCallback:Z


# instance fields
.field public ICustomTabsCallback:Lo/getIndexStartName;

.field private ICustomTabsCallback$Stub:Lo/generateEventsForChanges$onMessageChannelReady;

.field private final ICustomTabsCallback$Stub$Proxy:Lo/generateEventsForChanges;

.field private ICustomTabsService:Z

.field private asBinder:Lo/resolveType;

.field private final asInterface:Ljava/lang/Object;

.field private getInterfaceDescriptor:I

.field public onMessageChannelReady:Lo/changeWithPrevName;

.field public onNavigationEvent:Lo/raiseEvents;

.field public final onPostMessage:Lo/deserialize;

.field private onRelationshipValidationResult:Lo/convertInteger;

.field private onTransact:Lo/deserializeToType;

.field private warmup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    const-class v0, Lo/getIndexEndValue;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/getIndexEndValue;->extraCallback:Z

    return-void
.end method

.method public constructor <init>(Lo/deserialize;Lo/deserializeToType;Lo/convertInteger;Lo/resolveType;Ljava/lang/Object;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lo/getIndexEndValue;->onPostMessage:Lo/deserialize;

    .line 98
    iput-object p2, p0, Lo/getIndexEndValue;->onTransact:Lo/deserializeToType;

    .line 99
    iput-object p3, p0, Lo/getIndexEndValue;->onRelationshipValidationResult:Lo/convertInteger;

    .line 100
    iput-object p4, p0, Lo/getIndexEndValue;->asBinder:Lo/resolveType;

    .line 101
    new-instance p1, Lo/generateEventsForChanges;

    .line 1336
    sget-object v0, Lo/childChangedChange;->onPostMessage:Lo/childChangedChange;

    iget-object v1, p0, Lo/getIndexEndValue;->onPostMessage:Lo/deserialize;

    invoke-virtual {v0, v1}, Lo/childChangedChange;->ICustomTabsCallback(Lo/deserialize;)Lo/generateEvent;

    move-result-object v0

    .line 101
    invoke-direct {p1, p2, v0, p3, p4}, Lo/generateEventsForChanges;-><init>(Lo/deserializeToType;Lo/generateEvent;Lo/convertInteger;Lo/resolveType;)V

    iput-object p1, p0, Lo/getIndexEndValue;->ICustomTabsCallback$Stub$Proxy:Lo/generateEventsForChanges;

    .line 102
    iput-object p5, p0, Lo/getIndexEndValue;->asInterface:Ljava/lang/Object;

    return-void
.end method

.method private ICustomTabsCallback(IIIIZZ)Lo/raiseEvents;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    :goto_0
    invoke-direct/range {p0 .. p5}, Lo/getIndexEndValue;->extraCallback(IIIIZ)Lo/raiseEvents;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lo/getIndexEndValue;->onPostMessage:Lo/deserialize;

    monitor-enter v1

    .line 140
    :try_start_0
    iget v2, v0, Lo/raiseEvents;->onRelationshipValidationResult:I

    if-nez v2, :cond_0

    .line 141
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-object v0

    .line 143
    :cond_0
    monitor-exit v1

    .line 147
    invoke-virtual {v0, p6}, Lo/raiseEvents;->onMessageChannelReady(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3367
    iget-object v0, p0, Lo/getIndexEndValue;->onPostMessage:Lo/deserialize;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3369
    :try_start_1
    invoke-virtual {p0, v1, v2, v2}, Lo/getIndexEndValue;->onNavigationEvent(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 3371
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3372
    invoke-static {v1}, Lo/generateEventsForType;->extraCallback(Ljava/net/Socket;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3371
    monitor-exit v0

    throw p1

    :cond_1
    return-object v0

    :catchall_1
    move-exception p1

    .line 143
    monitor-exit v1

    throw p1
.end method

.method private extraCallback(IIIIZ)Lo/raiseEvents;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 167
    iget-object v2, v1, Lo/getIndexEndValue;->onPostMessage:Lo/deserialize;

    monitor-enter v2

    .line 168
    :try_start_0
    iget-boolean v0, v1, Lo/getIndexEndValue;->warmup:Z

    if-nez v0, :cond_16

    .line 169
    iget-object v0, v1, Lo/getIndexEndValue;->ICustomTabsCallback:Lo/getIndexStartName;

    if-nez v0, :cond_15

    .line 170
    iget-boolean v0, v1, Lo/getIndexEndValue;->ICustomTabsService:Z

    if-nez v0, :cond_14

    .line 4289
    sget-boolean v0, Lo/getIndexEndValue;->extraCallback:Z

    if-nez v0, :cond_1

    iget-object v0, v1, Lo/getIndexEndValue;->onPostMessage:Lo/deserialize;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4290
    :cond_1
    :goto_0
    iget-object v0, v1, Lo/getIndexEndValue;->onNavigationEvent:Lo/raiseEvents;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    .line 4291
    iget-boolean v0, v0, Lo/raiseEvents;->onTransact:Z

    if-eqz v0, :cond_2

    .line 4292
    invoke-virtual {v1, v5, v5, v4}, Lo/getIndexEndValue;->onNavigationEvent(ZZZ)Ljava/net/Socket;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    .line 176
    :goto_1
    iget-object v6, v1, Lo/getIndexEndValue;->onNavigationEvent:Lo/raiseEvents;

    if-eqz v6, :cond_3

    .line 178
    iget-object v6, v1, Lo/getIndexEndValue;->onNavigationEvent:Lo/raiseEvents;

    goto :goto_2

    :cond_3
    move-object v6, v3

    :goto_2
    if-nez v6, :cond_5

    .line 188
    sget-object v7, Lo/childChangedChange;->onPostMessage:Lo/childChangedChange;

    iget-object v8, v1, Lo/getIndexEndValue;->onPostMessage:Lo/deserialize;

    iget-object v9, v1, Lo/getIndexEndValue;->onTransact:Lo/deserializeToType;

    invoke-virtual {v7, v8, v9, v1, v3}, Lo/childChangedChange;->onNavigationEvent(Lo/deserialize;Lo/deserializeToType;Lo/getIndexEndValue;Lo/changeWithPrevName;)Lo/raiseEvents;

    .line 189
    iget-object v7, v1, Lo/getIndexEndValue;->onNavigationEvent:Lo/raiseEvents;

    if-eqz v7, :cond_4

    .line 191
    iget-object v6, v1, Lo/getIndexEndValue;->onNavigationEvent:Lo/raiseEvents;

    move-object v7, v3

    const/4 v8, 0x1

    goto :goto_4

    .line 193
    :cond_4
    iget-object v7, v1, Lo/getIndexEndValue;->onMessageChannelReady:Lo/changeWithPrevName;

    goto :goto_3

    :cond_5
    move-object v7, v3

    :goto_3
    const/4 v8, 0x0

    .line 196
    :goto_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 197
    invoke-static {v0}, Lo/generateEventsForType;->extraCallback(Ljava/net/Socket;)V

    if-eqz v6, :cond_6

    .line 207
    iget-object v0, v1, Lo/getIndexEndValue;->onNavigationEvent:Lo/raiseEvents;

    .line 4542
    iget-object v0, v0, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    .line 207
    iput-object v0, v1, Lo/getIndexEndValue;->onMessageChannelReady:Lo/changeWithPrevName;

    return-object v6

    :cond_6
    if-nez v7, :cond_9

    .line 213
    iget-object v0, v1, Lo/getIndexEndValue;->ICustomTabsCallback$Stub:Lo/generateEventsForChanges$onMessageChannelReady;

    if-eqz v0, :cond_8

    .line 5227
    iget v2, v0, Lo/generateEventsForChanges$onMessageChannelReady;->onNavigationEvent:I

    iget-object v0, v0, Lo/generateEventsForChanges$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_9

    .line 215
    :cond_8
    iget-object v0, v1, Lo/getIndexEndValue;->ICustomTabsCallback$Stub$Proxy:Lo/generateEventsForChanges;

    invoke-virtual {v0}, Lo/generateEventsForChanges;->onNavigationEvent()Lo/generateEventsForChanges$onMessageChannelReady;

    move-result-object v0

    iput-object v0, v1, Lo/getIndexEndValue;->ICustomTabsCallback$Stub:Lo/generateEventsForChanges$onMessageChannelReady;

    const/4 v0, 0x1

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    .line 218
    :goto_6
    iget-object v2, v1, Lo/getIndexEndValue;->onPostMessage:Lo/deserialize;

    monitor-enter v2

    .line 219
    :try_start_1
    iget-boolean v9, v1, Lo/getIndexEndValue;->ICustomTabsService:Z

    if-nez v9, :cond_13

    if-eqz v0, :cond_b

    .line 224
    iget-object v0, v1, Lo/getIndexEndValue;->ICustomTabsCallback$Stub:Lo/generateEventsForChanges$onMessageChannelReady;

    .line 5238
    new-instance v9, Ljava/util/ArrayList;

    iget-object v0, v0, Lo/generateEventsForChanges$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 225
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v0, :cond_b

    .line 226
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/changeWithPrevName;

    .line 227
    sget-object v12, Lo/childChangedChange;->onPostMessage:Lo/childChangedChange;

    iget-object v13, v1, Lo/getIndexEndValue;->onPostMessage:Lo/deserialize;

    iget-object v14, v1, Lo/getIndexEndValue;->onTransact:Lo/deserializeToType;

    invoke-virtual {v12, v13, v14, v1, v11}, Lo/childChangedChange;->onNavigationEvent(Lo/deserialize;Lo/deserializeToType;Lo/getIndexEndValue;Lo/changeWithPrevName;)Lo/raiseEvents;

    .line 228
    iget-object v12, v1, Lo/getIndexEndValue;->onNavigationEvent:Lo/raiseEvents;

    if-eqz v12, :cond_a

    .line 230
    iget-object v6, v1, Lo/getIndexEndValue;->onNavigationEvent:Lo/raiseEvents;

    .line 231
    iput-object v11, v1, Lo/getIndexEndValue;->onMessageChannelReady:Lo/changeWithPrevName;

    const/4 v8, 0x1

    goto :goto_8

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_b
    :goto_8
    if-nez v8, :cond_f

    if-nez v7, :cond_e

    .line 239
    iget-object v0, v1, Lo/getIndexEndValue;->ICustomTabsCallback$Stub:Lo/generateEventsForChanges$onMessageChannelReady;

    .line 7227
    iget v6, v0, Lo/generateEventsForChanges$onMessageChannelReady;->onNavigationEvent:I

    iget-object v7, v0, Lo/generateEventsForChanges$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_c

    const/4 v6, 0x1

    goto :goto_9

    :cond_c
    const/4 v6, 0x0

    :goto_9
    if-eqz v6, :cond_d

    .line 6234
    iget-object v6, v0, Lo/generateEventsForChanges$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    iget v7, v0, Lo/generateEventsForChanges$onMessageChannelReady;->onNavigationEvent:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v0, Lo/generateEventsForChanges$onMessageChannelReady;->onNavigationEvent:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lo/changeWithPrevName;

    goto :goto_a

    .line 6232
    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 244
    :cond_e
    :goto_a
    iput-object v7, v1, Lo/getIndexEndValue;->onMessageChannelReady:Lo/changeWithPrevName;

    .line 245
    iput v5, v1, Lo/getIndexEndValue;->getInterfaceDescriptor:I

    .line 246
    new-instance v6, Lo/raiseEvents;

    iget-object v0, v1, Lo/getIndexEndValue;->onPostMessage:Lo/deserialize;

    invoke-direct {v6, v0, v7}, Lo/raiseEvents;-><init>(Lo/deserialize;Lo/changeWithPrevName;)V

    .line 247
    invoke-virtual {v1, v6, v5}, Lo/getIndexEndValue;->onMessageChannelReady(Lo/raiseEvents;Z)V

    .line 249
    :cond_f
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v8, :cond_10

    return-object v6

    .line 258
    :cond_10
    iget-object v15, v1, Lo/getIndexEndValue;->onRelationshipValidationResult:Lo/convertInteger;

    iget-object v0, v1, Lo/getIndexEndValue;->asBinder:Lo/resolveType;

    move-object v9, v6

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v16, v0

    invoke-virtual/range {v9 .. v16}, Lo/raiseEvents;->onPostMessage(IIIIZLo/convertInteger;Lo/resolveType;)V

    .line 7336
    sget-object v0, Lo/childChangedChange;->onPostMessage:Lo/childChangedChange;

    iget-object v2, v1, Lo/getIndexEndValue;->onPostMessage:Lo/deserialize;

    invoke-virtual {v0, v2}, Lo/childChangedChange;->ICustomTabsCallback(Lo/deserialize;)Lo/generateEvent;

    move-result-object v0

    .line 7542
    iget-object v2, v6, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    .line 260
    invoke-virtual {v0, v2}, Lo/generateEvent;->onNavigationEvent(Lo/changeWithPrevName;)V

    .line 263
    iget-object v2, v1, Lo/getIndexEndValue;->onPostMessage:Lo/deserialize;

    monitor-enter v2

    .line 267
    :try_start_2
    sget-object v0, Lo/childChangedChange;->onPostMessage:Lo/childChangedChange;

    iget-object v7, v1, Lo/getIndexEndValue;->onPostMessage:Lo/deserialize;

    invoke-virtual {v0, v7, v6}, Lo/childChangedChange;->extraCallback(Lo/deserialize;Lo/raiseEvents;)V

    .line 7607
    iget-object v0, v6, Lo/raiseEvents;->onMessageChannelReady:Lo/normalizeValue;

    if-eqz v0, :cond_11

    goto :goto_b

    :cond_11
    const/4 v4, 0x0

    :goto_b
    if-eqz v4, :cond_12

    .line 272
    sget-object v0, Lo/childChangedChange;->onPostMessage:Lo/childChangedChange;

    iget-object v3, v1, Lo/getIndexEndValue;->onPostMessage:Lo/deserialize;

    iget-object v4, v1, Lo/getIndexEndValue;->onTransact:Lo/deserializeToType;

    invoke-virtual {v0, v3, v4, v1}, Lo/childChangedChange;->ICustomTabsCallback(Lo/deserialize;Lo/deserializeToType;Lo/getIndexEndValue;)Ljava/net/Socket;

    move-result-object v3

    .line 273
    iget-object v6, v1, Lo/getIndexEndValue;->onNavigationEvent:Lo/raiseEvents;

    .line 275
    :cond_12
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    invoke-static {v3}, Lo/generateEventsForType;->extraCallback(Ljava/net/Socket;)V

    return-object v6

    :catchall_0
    move-exception v0

    .line 275
    monitor-exit v2

    throw v0

    .line 219
    :cond_13
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 249
    monitor-exit v2

    throw v0

    .line 170
    :cond_14
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "codec != null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "released"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    .line 196
    monitor-exit v2

    throw v0
.end method

.method private onPostMessage(Lo/raiseEvents;)V
    .locals 3

    .line 486
    iget-object v0, p1, Lo/raiseEvents;->asInterface:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 487
    iget-object v2, p1, Lo/raiseEvents;->asInterface:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 488
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 489
    iget-object p1, p1, Lo/raiseEvents;->asInterface:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 3

    .line 367
    iget-object v0, p0, Lo/getIndexEndValue;->onPostMessage:Lo/deserialize;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 369
    :try_start_0
    invoke-virtual {p0, v1, v2, v2}, Lo/getIndexEndValue;->onNavigationEvent(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 371
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    invoke-static {v1}, Lo/generateEventsForType;->extraCallback(Ljava/net/Socket;)V

    return-void

    :catchall_0
    move-exception v1

    .line 371
    monitor-exit v0

    throw v1
.end method

.method public final asInterface()Z
    .locals 4

    .line 520
    iget-object v0, p0, Lo/getIndexEndValue;->onMessageChannelReady:Lo/changeWithPrevName;

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lo/getIndexEndValue;->ICustomTabsCallback$Stub:Lo/generateEventsForChanges$onMessageChannelReady;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 14227
    iget v3, v0, Lo/generateEventsForChanges$onMessageChannelReady;->onNavigationEvent:I

    iget-object v0, v0, Lo/generateEventsForChanges$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 521
    :cond_1
    iget-object v0, p0, Lo/getIndexEndValue;->ICustomTabsCallback$Stub$Proxy:Lo/generateEventsForChanges;

    .line 522
    invoke-virtual {v0}, Lo/generateEventsForChanges;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public final extraCallback()V
    .locals 5

    .line 350
    iget-object v0, p0, Lo/getIndexEndValue;->onPostMessage:Lo/deserialize;

    monitor-enter v0

    .line 351
    :try_start_0
    iget-object v1, p0, Lo/getIndexEndValue;->onNavigationEvent:Lo/raiseEvents;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 352
    invoke-virtual {p0, v3, v2, v3}, Lo/getIndexEndValue;->onNavigationEvent(ZZZ)Ljava/net/Socket;

    move-result-object v2

    .line 353
    iget-object v3, p0, Lo/getIndexEndValue;->onNavigationEvent:Lo/raiseEvents;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v1, v4

    .line 354
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-static {v2}, Lo/generateEventsForType;->extraCallback(Ljava/net/Socket;)V

    if-eqz v1, :cond_1

    .line 357
    sget-object v0, Lo/childChangedChange;->onPostMessage:Lo/childChangedChange;

    iget-object v1, p0, Lo/getIndexEndValue;->onRelationshipValidationResult:Lo/convertInteger;

    invoke-virtual {v0, v1, v4}, Lo/childChangedChange;->extraCallback(Lo/convertInteger;Ljava/io/IOException;)Ljava/io/IOException;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 354
    monitor-exit v0

    throw v1
.end method

.method public final extraCallback(Ljava/io/IOException;)V
    .locals 9

    .line 433
    iget-object v0, p0, Lo/getIndexEndValue;->onPostMessage:Lo/deserialize;

    monitor-enter v0

    .line 434
    :try_start_0
    instance-of v1, p1, Lokhttp3/internal/http2/StreamResetException;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 435
    check-cast p1, Lokhttp3/internal/http2/StreamResetException;

    iget-object p1, p1, Lokhttp3/internal/http2/StreamResetException;->extraCallback:Lo/getNodeFilter;

    .line 436
    sget-object v1, Lo/getNodeFilter;->onNavigationEvent:Lo/getNodeFilter;

    if-ne p1, v1, :cond_0

    .line 438
    iget p1, p0, Lo/getIndexEndValue;->getInterfaceDescriptor:I

    add-int/2addr p1, v4

    iput p1, p0, Lo/getIndexEndValue;->getInterfaceDescriptor:I

    if-le p1, v4, :cond_7

    goto :goto_1

    .line 443
    :cond_0
    sget-object v1, Lo/getNodeFilter;->asInterface:Lo/getNodeFilter;

    if-eq p1, v1, :cond_7

    .line 446
    iput-object v2, p0, Lo/getIndexEndValue;->onMessageChannelReady:Lo/changeWithPrevName;

    goto :goto_2

    .line 448
    :cond_1
    iget-object v1, p0, Lo/getIndexEndValue;->onNavigationEvent:Lo/raiseEvents;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lo/getIndexEndValue;->onNavigationEvent:Lo/raiseEvents;

    .line 9607
    iget-object v1, v1, Lo/raiseEvents;->onMessageChannelReady:Lo/normalizeValue;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 449
    instance-of v1, p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-eqz v1, :cond_7

    .line 453
    :cond_3
    iget-object v1, p0, Lo/getIndexEndValue;->onNavigationEvent:Lo/raiseEvents;

    iget v1, v1, Lo/raiseEvents;->onRelationshipValidationResult:I

    if-nez v1, :cond_6

    .line 454
    iget-object v1, p0, Lo/getIndexEndValue;->onMessageChannelReady:Lo/changeWithPrevName;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    .line 455
    iget-object v1, p0, Lo/getIndexEndValue;->ICustomTabsCallback$Stub$Proxy:Lo/generateEventsForChanges;

    iget-object v5, p0, Lo/getIndexEndValue;->onMessageChannelReady:Lo/changeWithPrevName;

    .line 11068
    iget-object v6, v5, Lo/changeWithPrevName;->ICustomTabsCallback:Ljava/net/Proxy;

    .line 10113
    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v6

    sget-object v7, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v6, v7, :cond_4

    iget-object v6, v1, Lo/generateEventsForChanges;->onNavigationEvent:Lo/deserializeToType;

    .line 11128
    iget-object v6, v6, Lo/deserializeToType;->asInterface:Ljava/net/ProxySelector;

    if-eqz v6, :cond_4

    .line 10115
    iget-object v6, v1, Lo/generateEventsForChanges;->onNavigationEvent:Lo/deserializeToType;

    .line 12128
    iget-object v6, v6, Lo/deserializeToType;->asInterface:Ljava/net/ProxySelector;

    .line 10115
    iget-object v7, v1, Lo/generateEventsForChanges;->onNavigationEvent:Lo/deserializeToType;

    .line 13093
    iget-object v7, v7, Lo/deserializeToType;->onPostMessage:Lo/isFullyInitialized;

    .line 10116
    invoke-virtual {v7}, Lo/isFullyInitialized;->ICustomTabsCallback()Ljava/net/URI;

    move-result-object v7

    .line 14068
    iget-object v8, v5, Lo/changeWithPrevName;->ICustomTabsCallback:Ljava/net/Proxy;

    .line 10116
    invoke-virtual {v8}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v8

    .line 10115
    invoke-virtual {v6, v7, v8, p1}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 10119
    :cond_4
    iget-object p1, v1, Lo/generateEventsForChanges;->ICustomTabsCallback:Lo/generateEvent;

    invoke-virtual {p1, v5}, Lo/generateEvent;->ICustomTabsCallback(Lo/changeWithPrevName;)V

    .line 457
    :cond_5
    :goto_1
    iput-object v2, p0, Lo/getIndexEndValue;->onMessageChannelReady:Lo/changeWithPrevName;

    :cond_6
    :goto_2
    const/4 p1, 0x1

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    .line 461
    :goto_3
    invoke-virtual {p0, p1, v3, v4}, Lo/getIndexEndValue;->onNavigationEvent(ZZZ)Ljava/net/Socket;

    move-result-object p1

    .line 463
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    invoke-static {p1}, Lo/generateEventsForType;->extraCallback(Ljava/net/Socket;)V

    return-void

    :catchall_0
    move-exception p1

    .line 463
    monitor-exit v0

    throw p1
.end method

.method public final onMessageChannelReady()Lo/getIndexStartName;
    .locals 2

    .line 330
    iget-object v0, p0, Lo/getIndexEndValue;->onPostMessage:Lo/deserialize;

    monitor-enter v0

    .line 331
    :try_start_0
    iget-object v1, p0, Lo/getIndexEndValue;->ICustomTabsCallback:Lo/getIndexStartName;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 332
    monitor-exit v0

    throw v1
.end method

.method public final onMessageChannelReady(Lo/raiseEvents;Z)V
    .locals 1

    .line 476
    sget-boolean p2, Lo/getIndexEndValue;->extraCallback:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lo/getIndexEndValue;->onPostMessage:Lo/deserialize;

    invoke-static {p2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 477
    :cond_1
    :goto_0
    iget-object p2, p0, Lo/getIndexEndValue;->onNavigationEvent:Lo/raiseEvents;

    if-nez p2, :cond_2

    .line 479
    iput-object p1, p0, Lo/getIndexEndValue;->onNavigationEvent:Lo/raiseEvents;

    .line 481
    iget-object p1, p1, Lo/raiseEvents;->asInterface:Ljava/util/List;

    new-instance p2, Lo/getIndexEndValue$onMessageChannelReady;

    iget-object v0, p0, Lo/getIndexEndValue;->asInterface:Ljava/lang/Object;

    invoke-direct {p2, p0, v0}, Lo/getIndexEndValue$onMessageChannelReady;-><init>(Lo/getIndexEndValue;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 477
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final onMessageChannelReady(ZLo/getIndexStartName;Ljava/io/IOException;)V
    .locals 3

    .line 303
    iget-object v0, p0, Lo/getIndexEndValue;->onPostMessage:Lo/deserialize;

    monitor-enter v0

    if-eqz p2, :cond_3

    .line 304
    :try_start_0
    iget-object v1, p0, Lo/getIndexEndValue;->ICustomTabsCallback:Lo/getIndexStartName;

    if-ne p2, v1, :cond_3

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 308
    iget-object v1, p0, Lo/getIndexEndValue;->onNavigationEvent:Lo/raiseEvents;

    iget v2, v1, Lo/raiseEvents;->onRelationshipValidationResult:I

    add-int/2addr v2, p2

    iput v2, v1, Lo/raiseEvents;->onRelationshipValidationResult:I

    :cond_0
    const/4 v1, 0x0

    .line 311
    invoke-virtual {p0, p1, v1, p2}, Lo/getIndexEndValue;->onNavigationEvent(ZZZ)Ljava/net/Socket;

    move-result-object p1

    .line 313
    iget-boolean p2, p0, Lo/getIndexEndValue;->warmup:Z

    .line 314
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    invoke-static {p1}, Lo/generateEventsForType;->extraCallback(Ljava/net/Socket;)V

    if-eqz p3, :cond_1

    .line 321
    sget-object p1, Lo/childChangedChange;->onPostMessage:Lo/childChangedChange;

    iget-object p2, p0, Lo/getIndexEndValue;->onRelationshipValidationResult:Lo/convertInteger;

    invoke-virtual {p1, p2, p3}, Lo/childChangedChange;->extraCallback(Lo/convertInteger;Ljava/io/IOException;)Ljava/io/IOException;

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 324
    sget-object p1, Lo/childChangedChange;->onPostMessage:Lo/childChangedChange;

    iget-object p2, p0, Lo/getIndexEndValue;->onRelationshipValidationResult:Lo/convertInteger;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lo/childChangedChange;->extraCallback(Lo/convertInteger;Ljava/io/IOException;)Ljava/io/IOException;

    :cond_2
    return-void

    .line 305
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "expected "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/getIndexEndValue;->ICustomTabsCallback:Lo/getIndexStartName;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 314
    monitor-exit v0

    throw p1
.end method

.method public final onNavigationEvent(ZZZ)Ljava/net/Socket;
    .locals 1

    .line 386
    sget-boolean v0, Lo/getIndexEndValue;->extraCallback:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/getIndexEndValue;->onPostMessage:Lo/deserialize;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 389
    iput-object v0, p0, Lo/getIndexEndValue;->ICustomTabsCallback:Lo/getIndexStartName;

    :cond_2
    const/4 p3, 0x1

    if-eqz p2, :cond_3

    .line 392
    iput-boolean p3, p0, Lo/getIndexEndValue;->warmup:Z

    .line 395
    :cond_3
    iget-object p2, p0, Lo/getIndexEndValue;->onNavigationEvent:Lo/raiseEvents;

    if-eqz p2, :cond_7

    if-eqz p1, :cond_4

    .line 397
    iput-boolean p3, p2, Lo/raiseEvents;->onTransact:Z

    .line 399
    :cond_4
    iget-object p1, p0, Lo/getIndexEndValue;->ICustomTabsCallback:Lo/getIndexStartName;

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lo/getIndexEndValue;->warmup:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lo/getIndexEndValue;->onNavigationEvent:Lo/raiseEvents;

    iget-boolean p1, p1, Lo/raiseEvents;->onTransact:Z

    if-eqz p1, :cond_7

    .line 400
    :cond_5
    iget-object p1, p0, Lo/getIndexEndValue;->onNavigationEvent:Lo/raiseEvents;

    invoke-direct {p0, p1}, Lo/getIndexEndValue;->onPostMessage(Lo/raiseEvents;)V

    .line 401
    iget-object p1, p0, Lo/getIndexEndValue;->onNavigationEvent:Lo/raiseEvents;

    iget-object p1, p1, Lo/raiseEvents;->asInterface:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 402
    iget-object p1, p0, Lo/getIndexEndValue;->onNavigationEvent:Lo/raiseEvents;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    iput-wide p2, p1, Lo/raiseEvents;->getInterfaceDescriptor:J

    .line 403
    sget-object p1, Lo/childChangedChange;->onPostMessage:Lo/childChangedChange;

    iget-object p2, p0, Lo/getIndexEndValue;->onPostMessage:Lo/deserialize;

    iget-object p3, p0, Lo/getIndexEndValue;->onNavigationEvent:Lo/raiseEvents;

    invoke-virtual {p1, p2, p3}, Lo/childChangedChange;->onNavigationEvent(Lo/deserialize;Lo/raiseEvents;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 404
    iget-object p1, p0, Lo/getIndexEndValue;->onNavigationEvent:Lo/raiseEvents;

    .line 8551
    iget-object p1, p1, Lo/raiseEvents;->extraCallback:Ljava/net/Socket;

    goto :goto_1

    :cond_6
    move-object p1, v0

    .line 407
    :goto_1
    iput-object v0, p0, Lo/getIndexEndValue;->onNavigationEvent:Lo/raiseEvents;

    move-object v0, p1

    :cond_7
    return-object v0
.end method

.method public final declared-synchronized onNavigationEvent()Lo/raiseEvents;
    .locals 1

    monitor-enter p0

    .line 344
    :try_start_0
    iget-object v0, p0, Lo/getIndexEndValue;->onNavigationEvent:Lo/raiseEvents;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onPostMessage(Lo/propertyName;Lo/annotatedName$onNavigationEvent;Z)Lo/getIndexStartName;
    .locals 7

    .line 107
    invoke-interface {p2}, Lo/annotatedName$onNavigationEvent;->ICustomTabsCallback()I

    move-result v1

    .line 108
    invoke-interface {p2}, Lo/annotatedName$onNavigationEvent;->onMessageChannelReady()I

    move-result v2

    .line 109
    invoke-interface {p2}, Lo/annotatedName$onNavigationEvent;->onPostMessage()I

    move-result v3

    .line 2322
    iget v4, p1, Lo/propertyName;->IPostMessageService$Stub$Proxy:I

    .line 2386
    iget-boolean v5, p1, Lo/propertyName;->IPostMessageService:Z

    move-object v0, p0

    move v6, p3

    .line 114
    :try_start_0
    invoke-direct/range {v0 .. v6}, Lo/getIndexEndValue;->ICustomTabsCallback(IIIIZZ)Lo/raiseEvents;

    move-result-object p3

    .line 2523
    iget-object v0, p3, Lo/raiseEvents;->onMessageChannelReady:Lo/normalizeValue;

    if-eqz v0, :cond_0

    .line 2524
    new-instance v0, Lo/getParams;

    iget-object p3, p3, Lo/raiseEvents;->onMessageChannelReady:Lo/normalizeValue;

    invoke-direct {v0, p1, p2, p0, p3}, Lo/getParams;-><init>(Lo/propertyName;Lo/annotatedName$onNavigationEvent;Lo/getIndexEndValue;Lo/normalizeValue;)V

    goto :goto_0

    .line 2526
    :cond_0
    iget-object v0, p3, Lo/raiseEvents;->extraCallback:Ljava/net/Socket;

    invoke-interface {p2}, Lo/annotatedName$onNavigationEvent;->onMessageChannelReady()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 2527
    iget-object v0, p3, Lo/raiseEvents;->asBinder:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object v0

    invoke-interface {p2}, Lo/annotatedName$onNavigationEvent;->onMessageChannelReady()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lo/logsDebug;->onNavigationEvent(JLjava/util/concurrent/TimeUnit;)Lo/logsDebug;

    .line 2528
    iget-object v0, p3, Lo/raiseEvents;->ICustomTabsCallback$Stub:Lo/filtersNodes;

    invoke-interface {v0}, Lo/filtersNodes;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object v0

    invoke-interface {p2}, Lo/annotatedName$onNavigationEvent;->onPostMessage()I

    move-result p2

    int-to-long v1, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p2}, Lo/logsDebug;->onNavigationEvent(JLjava/util/concurrent/TimeUnit;)Lo/logsDebug;

    .line 2529
    new-instance v0, Lo/getWireProtocolParams;

    iget-object p2, p3, Lo/raiseEvents;->asBinder:Lo/fullLimitUpdateChild;

    iget-object p3, p3, Lo/raiseEvents;->ICustomTabsCallback$Stub:Lo/filtersNodes;

    invoke-direct {v0, p1, p0, p2, p3}, Lo/getWireProtocolParams;-><init>(Lo/propertyName;Lo/getIndexEndValue;Lo/fullLimitUpdateChild;Lo/filtersNodes;)V

    .line 118
    :goto_0
    iget-object p1, p0, Lo/getIndexEndValue;->onPostMessage:Lo/deserialize;

    monitor-enter p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :try_start_1
    iput-object v0, p0, Lo/getIndexEndValue;->ICustomTabsCallback:Lo/getIndexStartName;

    .line 120
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception p2

    .line 121
    :try_start_2
    monitor-exit p1

    throw p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 123
    new-instance p2, Lokhttp3/internal/connection/RouteException;

    invoke-direct {p2, p1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public final onPostMessage()V
    .locals 3

    .line 416
    iget-object v0, p0, Lo/getIndexEndValue;->onPostMessage:Lo/deserialize;

    monitor-enter v0

    const/4 v1, 0x1

    .line 417
    :try_start_0
    iput-boolean v1, p0, Lo/getIndexEndValue;->ICustomTabsService:Z

    .line 418
    iget-object v1, p0, Lo/getIndexEndValue;->ICustomTabsCallback:Lo/getIndexStartName;

    .line 419
    iget-object v2, p0, Lo/getIndexEndValue;->onNavigationEvent:Lo/raiseEvents;

    .line 420
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 422
    invoke-interface {v1}, Lo/getIndexStartName;->onPostMessage()V

    return-void

    :cond_0
    if-eqz v2, :cond_1

    .line 9547
    iget-object v0, v2, Lo/raiseEvents;->onPostMessage:Ljava/net/Socket;

    invoke-static {v0}, Lo/generateEventsForType;->extraCallback(Ljava/net/Socket;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 420
    monitor-exit v0

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 526
    invoke-virtual {p0}, Lo/getIndexEndValue;->onNavigationEvent()Lo/raiseEvents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lo/getIndexEndValue;->onTransact:Lo/deserializeToType;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
