.class public final Lo/getPreviousName;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/annotatedName;


# instance fields
.field private ICustomTabsCallback:Lo/changeComparator;


# direct methods
.method public constructor <init>(Lo/changeComparator;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lo/getPreviousName;->ICustomTabsCallback:Lo/changeComparator;

    return-void
.end method

.method private static extraCallback(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Connection"

    .line 248
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    .line 249
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    .line 250
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    .line 251
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    .line 252
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    .line 253
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    .line 254
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    .line 255
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static onMessageChannelReady(Lo/shouldIncludeField;Lo/shouldIncludeField;)Lo/shouldIncludeField;
    .locals 11

    .line 219
    new-instance v0, Lo/shouldIncludeField$onMessageChannelReady;

    invoke-direct {v0}, Lo/shouldIncludeField$onMessageChannelReady;-><init>()V

    .line 47077
    iget-object v1, p0, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-string v4, "Content-Type"

    const-string v5, "Content-Encoding"

    const-string v6, "Content-Length"

    const/4 v7, 0x1

    if-ge v3, v1, :cond_5

    .line 47082
    iget-object v8, p0, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    shl-int/lit8 v9, v3, 0x1

    aget-object v8, v8, v9

    .line 47087
    iget-object v10, p0, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    add-int/2addr v9, v7

    aget-object v9, v10, v9

    const-string v10, "Warning"

    .line 224
    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 47263
    :cond_0
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 47264
    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 47265
    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :cond_2
    :goto_1
    if-nez v7, :cond_3

    .line 227
    invoke-static {v8}, Lo/getPreviousName;->extraCallback(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 48063
    iget-object v4, p1, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    invoke-static {v4, v8}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 229
    :cond_3
    sget-object v4, Lo/childChangedChange;->onPostMessage:Lo/childChangedChange;

    invoke-virtual {v4, v0, v8, v9}, Lo/childChangedChange;->onNavigationEvent(Lo/shouldIncludeField$onMessageChannelReady;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 48077
    :cond_5
    iget-object p0, p1, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    array-length p0, p0

    div-int/lit8 p0, p0, 0x2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p0, :cond_9

    .line 48082
    iget-object v3, p1, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    shl-int/lit8 v8, v1, 0x1

    aget-object v3, v3, v8

    .line 48263
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 48264
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 48265
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v9, 0x1

    :goto_4
    if-nez v9, :cond_8

    .line 235
    invoke-static {v3}, Lo/getPreviousName;->extraCallback(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 236
    sget-object v9, Lo/childChangedChange;->onPostMessage:Lo/childChangedChange;

    .line 49087
    iget-object v10, p1, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    add-int/lit8 v8, v8, 0x1

    aget-object v8, v10, v8

    .line 236
    invoke-virtual {v9, v0, v3, v8}, Lo/childChangedChange;->onNavigationEvent(Lo/shouldIncludeField$onMessageChannelReady;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 49401
    :cond_9
    new-instance p0, Lo/shouldIncludeField;

    invoke-direct {p0, v0}, Lo/shouldIncludeField;-><init>(Lo/shouldIncludeField$onMessageChannelReady;)V

    return-object p0
.end method


# virtual methods
.method public final extraCallback(Lo/annotatedName$onNavigationEvent;)Lo/childAddedChange;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 53
    iget-object v0, v1, Lo/getPreviousName;->ICustomTabsCallback:Lo/changeComparator;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 54
    invoke-interface/range {p1 .. p1}, Lo/annotatedName$onNavigationEvent;->onNavigationEvent()Lo/isCompleteForChild;

    move-result-object v3

    invoke-interface {v0, v3}, Lo/changeComparator;->ICustomTabsCallback(Lo/isCompleteForChild;)Lo/childAddedChange;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 57
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 59
    new-instance v0, Lo/getEventType$ICustomTabsCallback;

    invoke-interface/range {p1 .. p1}, Lo/annotatedName$onNavigationEvent;->onNavigationEvent()Lo/isCompleteForChild;

    move-result-object v6

    invoke-direct {v0, v4, v5, v6, v3}, Lo/getEventType$ICustomTabsCallback;-><init>(JLo/isCompleteForChild;Lo/childAddedChange;)V

    .line 1186
    iget-object v4, v0, Lo/getEventType$ICustomTabsCallback;->onNavigationEvent:Lo/childAddedChange;

    if-nez v4, :cond_1

    .line 1187
    new-instance v4, Lo/getEventType;

    iget-object v5, v0, Lo/getEventType$ICustomTabsCallback;->ICustomTabsCallback:Lo/isCompleteForChild;

    invoke-direct {v4, v5, v2}, Lo/getEventType;-><init>(Lo/isCompleteForChild;Lo/childAddedChange;)V

    :goto_1
    move-object/from16 v17, v3

    goto/16 :goto_14

    .line 1191
    :cond_1
    iget-object v4, v0, Lo/getEventType$ICustomTabsCallback;->ICustomTabsCallback:Lo/isCompleteForChild;

    .line 2106
    iget-object v4, v4, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 2397
    iget-object v4, v4, Lo/isFullyInitialized;->onNavigationEvent:Ljava/lang/String;

    const-string v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1191
    iget-object v4, v0, Lo/getEventType$ICustomTabsCallback;->onNavigationEvent:Lo/childAddedChange;

    .line 3119
    iget-object v4, v4, Lo/childAddedChange;->onPostMessage:Lo/isSetterOverride;

    if-nez v4, :cond_2

    .line 1192
    new-instance v4, Lo/getEventType;

    iget-object v5, v0, Lo/getEventType$ICustomTabsCallback;->ICustomTabsCallback:Lo/isCompleteForChild;

    invoke-direct {v4, v5, v2}, Lo/getEventType;-><init>(Lo/isCompleteForChild;Lo/childAddedChange;)V

    goto :goto_1

    .line 1198
    :cond_2
    iget-object v4, v0, Lo/getEventType$ICustomTabsCallback;->onNavigationEvent:Lo/childAddedChange;

    iget-object v5, v0, Lo/getEventType$ICustomTabsCallback;->ICustomTabsCallback:Lo/isCompleteForChild;

    invoke-static {v4, v5}, Lo/getEventType;->onMessageChannelReady(Lo/childAddedChange;Lo/isCompleteForChild;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1199
    new-instance v4, Lo/getEventType;

    iget-object v5, v0, Lo/getEventType$ICustomTabsCallback;->ICustomTabsCallback:Lo/isCompleteForChild;

    invoke-direct {v4, v5, v2}, Lo/getEventType;-><init>(Lo/isCompleteForChild;Lo/childAddedChange;)V

    goto :goto_1

    .line 1202
    :cond_3
    iget-object v4, v0, Lo/getEventType$ICustomTabsCallback;->ICustomTabsCallback:Lo/isCompleteForChild;

    .line 4101
    iget-object v5, v4, Lo/isCompleteForChild;->asInterface:Lo/loadOrCreateBeanMapperForClass;

    if-eqz v5, :cond_4

    goto :goto_2

    .line 4102
    :cond_4
    iget-object v5, v4, Lo/isCompleteForChild;->onPostMessage:Lo/shouldIncludeField;

    invoke-static {v5}, Lo/loadOrCreateBeanMapperForClass;->onNavigationEvent(Lo/shouldIncludeField;)Lo/loadOrCreateBeanMapperForClass;

    move-result-object v5

    iput-object v5, v4, Lo/isCompleteForChild;->asInterface:Lo/loadOrCreateBeanMapperForClass;

    .line 5087
    :goto_2
    iget-boolean v4, v5, Lo/loadOrCreateBeanMapperForClass;->onPostMessage:Z

    if-nez v4, :cond_20

    .line 1203
    iget-object v4, v0, Lo/getEventType$ICustomTabsCallback;->ICustomTabsCallback:Lo/isCompleteForChild;

    .line 6061
    iget-object v6, v4, Lo/isCompleteForChild;->onPostMessage:Lo/shouldIncludeField;

    .line 6063
    iget-object v6, v6, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    const-string v7, "If-Modified-Since"

    invoke-static {v6, v7}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "If-None-Match"

    if-nez v6, :cond_6

    .line 7061
    iget-object v4, v4, Lo/isCompleteForChild;->onPostMessage:Lo/shouldIncludeField;

    .line 7063
    iget-object v4, v4, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    invoke-static {v4, v9}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v4, 0x1

    :goto_4
    if-eqz v4, :cond_7

    goto/16 :goto_13

    .line 1207
    :cond_7
    iget-object v4, v0, Lo/getEventType$ICustomTabsCallback;->onNavigationEvent:Lo/childAddedChange;

    .line 7255
    iget-object v6, v4, Lo/childAddedChange;->warmup:Lo/loadOrCreateBeanMapperForClass;

    if-eqz v6, :cond_8

    goto :goto_5

    .line 7256
    :cond_8
    iget-object v6, v4, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    invoke-static {v6}, Lo/loadOrCreateBeanMapperForClass;->onNavigationEvent(Lo/shouldIncludeField;)Lo/loadOrCreateBeanMapperForClass;

    move-result-object v6

    iput-object v6, v4, Lo/childAddedChange;->warmup:Lo/loadOrCreateBeanMapperForClass;

    .line 7298
    :goto_5
    iget-object v4, v0, Lo/getEventType$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/Date;

    const-wide/16 v11, 0x0

    if-eqz v4, :cond_9

    .line 7299
    iget-wide v13, v0, Lo/getEventType$ICustomTabsCallback;->asInterface:J

    iget-object v4, v0, Lo/getEventType$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    sub-long/2addr v13, v15

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    goto :goto_6

    :cond_9
    move-wide v13, v11

    .line 7301
    :goto_6
    iget v4, v0, Lo/getEventType$ICustomTabsCallback;->ICustomTabsCallback$Stub$Proxy:I

    const/4 v15, -0x1

    if-eq v4, v15, :cond_a

    .line 7302
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v8, v0, Lo/getEventType$ICustomTabsCallback;->ICustomTabsCallback$Stub$Proxy:I

    move-object/from16 v17, v3

    int-to-long v2, v8

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    goto :goto_7

    :cond_a
    move-object/from16 v17, v3

    .line 7304
    :goto_7
    iget-wide v2, v0, Lo/getEventType$ICustomTabsCallback;->asInterface:J

    iget-wide v10, v0, Lo/getEventType$ICustomTabsCallback;->onTransact:J

    sub-long/2addr v2, v10

    .line 7305
    iget-wide v10, v0, Lo/getEventType$ICustomTabsCallback;->onPostMessage:J

    move-object v8, v5

    iget-wide v4, v0, Lo/getEventType$ICustomTabsCallback;->asInterface:J

    sub-long/2addr v10, v4

    add-long/2addr v13, v2

    add-long/2addr v13, v10

    .line 8269
    iget-object v2, v0, Lo/getEventType$ICustomTabsCallback;->onNavigationEvent:Lo/childAddedChange;

    .line 9255
    iget-object v3, v2, Lo/childAddedChange;->warmup:Lo/loadOrCreateBeanMapperForClass;

    if-eqz v3, :cond_b

    goto :goto_8

    .line 9256
    :cond_b
    iget-object v3, v2, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    invoke-static {v3}, Lo/loadOrCreateBeanMapperForClass;->onNavigationEvent(Lo/shouldIncludeField;)Lo/loadOrCreateBeanMapperForClass;

    move-result-object v3

    iput-object v3, v2, Lo/childAddedChange;->warmup:Lo/loadOrCreateBeanMapperForClass;

    .line 10099
    :goto_8
    iget v2, v3, Lo/loadOrCreateBeanMapperForClass;->onMessageChannelReady:I

    if-eq v2, v15, :cond_c

    .line 8271
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11099
    iget v3, v3, Lo/loadOrCreateBeanMapperForClass;->onMessageChannelReady:I

    int-to-long v3, v3

    .line 8271
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    :goto_9
    const-wide/16 v4, 0x0

    goto :goto_d

    .line 8272
    :cond_c
    iget-object v2, v0, Lo/getEventType$ICustomTabsCallback;->asBinder:Ljava/util/Date;

    if-eqz v2, :cond_f

    .line 8273
    iget-object v2, v0, Lo/getEventType$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/Date;

    if-eqz v2, :cond_d

    .line 8274
    iget-object v2, v0, Lo/getEventType$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_a

    .line 8275
    :cond_d
    iget-wide v2, v0, Lo/getEventType$ICustomTabsCallback;->asInterface:J

    .line 8276
    :goto_a
    iget-object v4, v0, Lo/getEventType$ICustomTabsCallback;->asBinder:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/16 v4, 0x0

    cmp-long v10, v2, v4

    if-lez v10, :cond_e

    goto :goto_9

    :cond_e
    const-wide/16 v2, 0x0

    goto :goto_9

    .line 8278
    :cond_f
    iget-object v2, v0, Lo/getEventType$ICustomTabsCallback;->onRelationshipValidationResult:Ljava/util/Date;

    if-eqz v2, :cond_12

    iget-object v2, v0, Lo/getEventType$ICustomTabsCallback;->onNavigationEvent:Lo/childAddedChange;

    .line 12086
    iget-object v2, v2, Lo/childAddedChange;->onMessageChannelReady:Lo/isCompleteForChild;

    .line 13049
    iget-object v2, v2, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 13673
    iget-object v3, v2, Lo/isFullyInitialized;->ICustomTabsCallback:Ljava/util/List;

    if-nez v3, :cond_10

    const/4 v2, 0x0

    goto :goto_b

    .line 13674
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 13675
    iget-object v2, v2, Lo/isFullyInitialized;->ICustomTabsCallback:Ljava/util/List;

    invoke-static {v3, v2}, Lo/isFullyInitialized;->ICustomTabsCallback(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 13676
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_b
    if-nez v2, :cond_12

    .line 8284
    iget-object v2, v0, Lo/getEventType$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/Date;

    if-eqz v2, :cond_11

    .line 8285
    iget-object v2, v0, Lo/getEventType$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_c

    .line 8286
    :cond_11
    iget-wide v2, v0, Lo/getEventType$ICustomTabsCallback;->onTransact:J

    .line 8287
    :goto_c
    iget-object v4, v0, Lo/getEventType$ICustomTabsCallback;->onRelationshipValidationResult:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v10, v2, v4

    if-lez v10, :cond_13

    const-wide/16 v10, 0xa

    .line 8288
    div-long/2addr v2, v10

    goto :goto_d

    :cond_12
    const-wide/16 v4, 0x0

    :cond_13
    move-wide v2, v4

    .line 14099
    :goto_d
    iget v10, v8, Lo/loadOrCreateBeanMapperForClass;->onMessageChannelReady:I

    if-eq v10, v15, :cond_14

    .line 1213
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15099
    iget v11, v8, Lo/loadOrCreateBeanMapperForClass;->onMessageChannelReady:I

    int-to-long v4, v11

    .line 1213
    invoke-virtual {v10, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 15127
    :cond_14
    iget v4, v8, Lo/loadOrCreateBeanMapperForClass;->onRelationshipValidationResult:I

    if-eq v4, v15, :cond_15

    .line 1218
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16127
    iget v5, v8, Lo/loadOrCreateBeanMapperForClass;->onRelationshipValidationResult:I

    int-to-long v10, v5

    .line 1218
    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    goto :goto_e

    :cond_15
    const-wide/16 v4, 0x0

    .line 17119
    :goto_e
    iget-boolean v10, v6, Lo/loadOrCreateBeanMapperForClass;->onTransact:Z

    if-nez v10, :cond_16

    .line 17123
    iget v10, v8, Lo/loadOrCreateBeanMapperForClass;->ICustomTabsCallback$Stub:I

    if-eq v10, v15, :cond_16

    .line 1223
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 18123
    iget v8, v8, Lo/loadOrCreateBeanMapperForClass;->ICustomTabsCallback$Stub:I

    move-wide/from16 v20, v13

    int-to-long v12, v8

    .line 1223
    invoke-virtual {v10, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    move-wide/from16 v18, v12

    goto :goto_f

    :cond_16
    move-wide/from16 v20, v13

    const-wide/16 v18, 0x0

    .line 19087
    :goto_f
    iget-boolean v6, v6, Lo/loadOrCreateBeanMapperForClass;->onPostMessage:Z

    if-nez v6, :cond_1b

    add-long v13, v20, v4

    add-long v18, v2, v18

    cmp-long v4, v13, v18

    if-gez v4, :cond_1b

    .line 1227
    iget-object v4, v0, Lo/getEventType$ICustomTabsCallback;->onNavigationEvent:Lo/childAddedChange;

    .line 19181
    new-instance v5, Lo/childAddedChange$ICustomTabsCallback;

    invoke-direct {v5, v4}, Lo/childAddedChange$ICustomTabsCallback;-><init>(Lo/childAddedChange;)V

    const-string v4, "Warning"

    cmp-long v6, v13, v2

    if-ltz v6, :cond_17

    .line 19375
    iget-object v2, v5, Lo/childAddedChange$ICustomTabsCallback;->asBinder:Lo/shouldIncludeField$onMessageChannelReady;

    const-string v3, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v2, v4, v3}, Lo/shouldIncludeField$onMessageChannelReady;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Lo/shouldIncludeField$onMessageChannelReady;

    :cond_17
    const-wide/32 v2, 0x5265c00

    cmp-long v6, v20, v2

    if-lez v6, :cond_1a

    .line 20314
    iget-object v2, v0, Lo/getEventType$ICustomTabsCallback;->onNavigationEvent:Lo/childAddedChange;

    .line 21255
    iget-object v3, v2, Lo/childAddedChange;->warmup:Lo/loadOrCreateBeanMapperForClass;

    if-eqz v3, :cond_18

    goto :goto_10

    .line 21256
    :cond_18
    iget-object v3, v2, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    invoke-static {v3}, Lo/loadOrCreateBeanMapperForClass;->onNavigationEvent(Lo/shouldIncludeField;)Lo/loadOrCreateBeanMapperForClass;

    move-result-object v3

    iput-object v3, v2, Lo/childAddedChange;->warmup:Lo/loadOrCreateBeanMapperForClass;

    .line 22099
    :goto_10
    iget v2, v3, Lo/loadOrCreateBeanMapperForClass;->onMessageChannelReady:I

    if-ne v2, v15, :cond_19

    .line 20314
    iget-object v2, v0, Lo/getEventType$ICustomTabsCallback;->asBinder:Ljava/util/Date;

    if-nez v2, :cond_19

    const/4 v8, 0x1

    goto :goto_11

    :cond_19
    const/4 v8, 0x0

    :goto_11
    if-eqz v8, :cond_1a

    .line 22375
    iget-object v2, v5, Lo/childAddedChange$ICustomTabsCallback;->asBinder:Lo/shouldIncludeField$onMessageChannelReady;

    const-string v3, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v2, v4, v3}, Lo/shouldIncludeField$onMessageChannelReady;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Lo/shouldIncludeField$onMessageChannelReady;

    .line 1235
    :cond_1a
    new-instance v4, Lo/getEventType;

    invoke-virtual {v5}, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage()Lo/childAddedChange;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v4, v3, v2}, Lo/getEventType;-><init>(Lo/isCompleteForChild;Lo/childAddedChange;)V

    goto/16 :goto_14

    .line 1242
    :cond_1b
    iget-object v2, v0, Lo/getEventType$ICustomTabsCallback;->getInterfaceDescriptor:Ljava/lang/String;

    if-eqz v2, :cond_1c

    .line 1244
    iget-object v2, v0, Lo/getEventType$ICustomTabsCallback;->getInterfaceDescriptor:Ljava/lang/String;

    move-object v7, v9

    goto :goto_12

    .line 1245
    :cond_1c
    iget-object v2, v0, Lo/getEventType$ICustomTabsCallback;->onRelationshipValidationResult:Ljava/util/Date;

    if-eqz v2, :cond_1d

    .line 1247
    iget-object v2, v0, Lo/getEventType$ICustomTabsCallback;->ICustomTabsCallback$Stub:Ljava/lang/String;

    goto :goto_12

    .line 1248
    :cond_1d
    iget-object v2, v0, Lo/getEventType$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/Date;

    if-eqz v2, :cond_1f

    .line 1250
    iget-object v2, v0, Lo/getEventType$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    .line 1255
    :goto_12
    iget-object v3, v0, Lo/getEventType$ICustomTabsCallback;->ICustomTabsCallback:Lo/isCompleteForChild;

    .line 23057
    iget-object v3, v3, Lo/isCompleteForChild;->onPostMessage:Lo/shouldIncludeField;

    .line 23131
    new-instance v4, Lo/shouldIncludeField$onMessageChannelReady;

    invoke-direct {v4}, Lo/shouldIncludeField$onMessageChannelReady;-><init>()V

    .line 23132
    iget-object v5, v4, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    iget-object v3, v3, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    invoke-static {v5, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1256
    sget-object v3, Lo/childChangedChange;->onPostMessage:Lo/childChangedChange;

    invoke-virtual {v3, v4, v7, v2}, Lo/childChangedChange;->onNavigationEvent(Lo/shouldIncludeField$onMessageChannelReady;Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    iget-object v2, v0, Lo/getEventType$ICustomTabsCallback;->ICustomTabsCallback:Lo/isCompleteForChild;

    .line 24093
    new-instance v3, Lo/isCompleteForChild$ICustomTabsCallback;

    invoke-direct {v3, v2}, Lo/isCompleteForChild$ICustomTabsCallback;-><init>(Lo/isCompleteForChild;)V

    .line 24401
    new-instance v2, Lo/shouldIncludeField;

    invoke-direct {v2, v4}, Lo/shouldIncludeField;-><init>(Lo/shouldIncludeField$onMessageChannelReady;)V

    .line 26131
    new-instance v4, Lo/shouldIncludeField$onMessageChannelReady;

    invoke-direct {v4}, Lo/shouldIncludeField$onMessageChannelReady;-><init>()V

    .line 26132
    iget-object v5, v4, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    iget-object v2, v2, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    invoke-static {v5, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 25208
    iput-object v4, v3, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    .line 26292
    iget-object v2, v3, Lo/isCompleteForChild$ICustomTabsCallback;->onPostMessage:Lo/isFullyInitialized;

    if-eqz v2, :cond_1e

    .line 26293
    new-instance v2, Lo/isCompleteForChild;

    invoke-direct {v2, v3}, Lo/isCompleteForChild;-><init>(Lo/isCompleteForChild$ICustomTabsCallback;)V

    .line 1261
    new-instance v4, Lo/getEventType;

    iget-object v3, v0, Lo/getEventType$ICustomTabsCallback;->onNavigationEvent:Lo/childAddedChange;

    invoke-direct {v4, v2, v3}, Lo/getEventType;-><init>(Lo/isCompleteForChild;Lo/childAddedChange;)V

    goto :goto_14

    .line 26292
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "url == null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1252
    :cond_1f
    new-instance v4, Lo/getEventType;

    iget-object v2, v0, Lo/getEventType$ICustomTabsCallback;->ICustomTabsCallback:Lo/isCompleteForChild;

    const/4 v3, 0x0

    invoke-direct {v4, v2, v3}, Lo/getEventType;-><init>(Lo/isCompleteForChild;Lo/childAddedChange;)V

    goto :goto_14

    :cond_20
    :goto_13
    move-object/from16 v17, v3

    move-object v3, v2

    .line 1204
    new-instance v4, Lo/getEventType;

    iget-object v2, v0, Lo/getEventType$ICustomTabsCallback;->ICustomTabsCallback:Lo/isCompleteForChild;

    invoke-direct {v4, v2, v3}, Lo/getEventType;-><init>(Lo/isCompleteForChild;Lo/childAddedChange;)V

    .line 1175
    :goto_14
    iget-object v2, v4, Lo/getEventType;->onPostMessage:Lo/isCompleteForChild;

    if-eqz v2, :cond_22

    iget-object v0, v0, Lo/getEventType$ICustomTabsCallback;->ICustomTabsCallback:Lo/isCompleteForChild;

    .line 27101
    iget-object v2, v0, Lo/isCompleteForChild;->asInterface:Lo/loadOrCreateBeanMapperForClass;

    if-eqz v2, :cond_21

    goto :goto_15

    .line 27102
    :cond_21
    iget-object v2, v0, Lo/isCompleteForChild;->onPostMessage:Lo/shouldIncludeField;

    invoke-static {v2}, Lo/loadOrCreateBeanMapperForClass;->onNavigationEvent(Lo/shouldIncludeField;)Lo/loadOrCreateBeanMapperForClass;

    move-result-object v2

    iput-object v2, v0, Lo/isCompleteForChild;->asInterface:Lo/loadOrCreateBeanMapperForClass;

    .line 27137
    :goto_15
    iget-boolean v0, v2, Lo/loadOrCreateBeanMapperForClass;->asBinder:Z

    if-eqz v0, :cond_22

    .line 1177
    new-instance v4, Lo/getEventType;

    const/4 v0, 0x0

    invoke-direct {v4, v0, v0}, Lo/getEventType;-><init>(Lo/isCompleteForChild;Lo/childAddedChange;)V

    .line 60
    :cond_22
    iget-object v0, v4, Lo/getEventType;->onPostMessage:Lo/isCompleteForChild;

    .line 61
    iget-object v2, v4, Lo/getEventType;->ICustomTabsCallback:Lo/childAddedChange;

    .line 63
    iget-object v3, v1, Lo/getPreviousName;->ICustomTabsCallback:Lo/changeComparator;

    if-eqz v3, :cond_23

    .line 64
    invoke-interface {v3, v4}, Lo/changeComparator;->onNavigationEvent(Lo/getEventType;)V

    :cond_23
    if-eqz v17, :cond_24

    if-nez v2, :cond_24

    move-object/from16 v3, v17

    .line 27177
    iget-object v4, v3, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    .line 68
    invoke-static {v4}, Lo/generateEventsForType;->onNavigationEvent(Ljava/io/Closeable;)V

    goto :goto_16

    :cond_24
    move-object/from16 v3, v17

    :goto_16
    if-nez v0, :cond_25

    if-nez v2, :cond_25

    .line 73
    new-instance v0, Lo/childAddedChange$ICustomTabsCallback;

    invoke-direct {v0}, Lo/childAddedChange$ICustomTabsCallback;-><init>()V

    .line 74
    invoke-interface/range {p1 .. p1}, Lo/annotatedName$onNavigationEvent;->onNavigationEvent()Lo/isCompleteForChild;

    move-result-object v2

    .line 27337
    iput-object v2, v0, Lo/childAddedChange$ICustomTabsCallback;->onNavigationEvent:Lo/isCompleteForChild;

    .line 74
    sget-object v2, Lo/valueChange;->onPostMessage:Lo/valueChange;

    .line 27342
    iput-object v2, v0, Lo/childAddedChange$ICustomTabsCallback;->extraCallback:Lo/valueChange;

    const/16 v2, 0x1f8

    .line 27347
    iput v2, v0, Lo/childAddedChange$ICustomTabsCallback;->ICustomTabsCallback:I

    const-string v2, "Unsatisfiable Request (only-if-cached)"

    .line 27352
    iput-object v2, v0, Lo/childAddedChange$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 77
    sget-object v2, Lo/generateEventsForType;->extraCallback:Lo/getChildKey;

    .line 27391
    iput-object v2, v0, Lo/childAddedChange$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/getChildKey;

    const-wide/16 v2, -0x1

    .line 27432
    iput-wide v2, v0, Lo/childAddedChange$ICustomTabsCallback;->getInterfaceDescriptor:J

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 27437
    iput-wide v2, v0, Lo/childAddedChange$ICustomTabsCallback;->newSession:J

    .line 81
    invoke-virtual {v0}, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage()Lo/childAddedChange;

    move-result-object v0

    return-object v0

    :cond_25
    const-string v4, "cacheResponse"

    if-nez v0, :cond_28

    .line 28181
    new-instance v0, Lo/childAddedChange$ICustomTabsCallback;

    invoke-direct {v0, v2}, Lo/childAddedChange$ICustomTabsCallback;-><init>(Lo/childAddedChange;)V

    if-eqz v2, :cond_26

    .line 29177
    iget-object v3, v2, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    if-eqz v3, :cond_26

    .line 29181
    new-instance v3, Lo/childAddedChange$ICustomTabsCallback;

    invoke-direct {v3, v2}, Lo/childAddedChange$ICustomTabsCallback;-><init>(Lo/childAddedChange;)V

    const/4 v2, 0x0

    .line 29391
    iput-object v2, v3, Lo/childAddedChange$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/getChildKey;

    .line 29149
    invoke-virtual {v3}, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage()Lo/childAddedChange;

    move-result-object v2

    :cond_26
    if-eqz v2, :cond_27

    .line 29402
    invoke-static {v4, v2}, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage(Ljava/lang/String;Lo/childAddedChange;)V

    .line 29403
    :cond_27
    iput-object v2, v0, Lo/childAddedChange$ICustomTabsCallback;->asInterface:Lo/childAddedChange;

    .line 88
    invoke-virtual {v0}, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage()Lo/childAddedChange;

    move-result-object v0

    return-object v0

    :cond_28
    move-object/from16 v5, p1

    .line 93
    :try_start_0
    invoke-interface {v5, v0}, Lo/annotatedName$onNavigationEvent;->onPostMessage(Lo/isCompleteForChild;)Lo/childAddedChange;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_29

    if-eqz v3, :cond_29

    .line 30177
    iget-object v3, v3, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    .line 97
    invoke-static {v3}, Lo/generateEventsForType;->onNavigationEvent(Ljava/io/Closeable;)V

    :cond_29
    const-string v3, "networkResponse"

    if-eqz v2, :cond_2f

    .line 32098
    iget v6, v5, Lo/childAddedChange;->onNavigationEvent:I

    const/16 v7, 0x130

    if-ne v6, v7, :cond_2e

    .line 32181
    new-instance v0, Lo/childAddedChange$ICustomTabsCallback;

    invoke-direct {v0, v2}, Lo/childAddedChange$ICustomTabsCallback;-><init>(Lo/childAddedChange;)V

    .line 33136
    iget-object v6, v2, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    .line 34136
    iget-object v7, v5, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    .line 105
    invoke-static {v6, v7}, Lo/getPreviousName;->onMessageChannelReady(Lo/shouldIncludeField;Lo/shouldIncludeField;)Lo/shouldIncludeField;

    move-result-object v6

    .line 35131
    new-instance v7, Lo/shouldIncludeField$onMessageChannelReady;

    invoke-direct {v7}, Lo/shouldIncludeField$onMessageChannelReady;-><init>()V

    .line 35132
    iget-object v8, v7, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    iget-object v6, v6, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    invoke-static {v8, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 34386
    iput-object v7, v0, Lo/childAddedChange$ICustomTabsCallback;->asBinder:Lo/shouldIncludeField$onMessageChannelReady;

    .line 35265
    iget-wide v6, v5, Lo/childAddedChange;->newSession:J

    .line 35432
    iput-wide v6, v0, Lo/childAddedChange$ICustomTabsCallback;->getInterfaceDescriptor:J

    .line 36274
    iget-wide v6, v5, Lo/childAddedChange;->getInterfaceDescriptor:J

    .line 36437
    iput-wide v6, v0, Lo/childAddedChange$ICustomTabsCallback;->newSession:J

    if-eqz v2, :cond_2a

    .line 37177
    iget-object v6, v2, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    if-eqz v6, :cond_2a

    .line 37181
    new-instance v6, Lo/childAddedChange$ICustomTabsCallback;

    invoke-direct {v6, v2}, Lo/childAddedChange$ICustomTabsCallback;-><init>(Lo/childAddedChange;)V

    const/4 v7, 0x0

    .line 37391
    iput-object v7, v6, Lo/childAddedChange$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/getChildKey;

    .line 37149
    invoke-virtual {v6}, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage()Lo/childAddedChange;

    move-result-object v6

    goto :goto_17

    :cond_2a
    move-object v6, v2

    :goto_17
    if-eqz v6, :cond_2b

    .line 37402
    invoke-static {v4, v6}, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage(Ljava/lang/String;Lo/childAddedChange;)V

    .line 37403
    :cond_2b
    iput-object v6, v0, Lo/childAddedChange$ICustomTabsCallback;->asInterface:Lo/childAddedChange;

    if-eqz v5, :cond_2c

    .line 38177
    iget-object v4, v5, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    if-eqz v4, :cond_2c

    .line 38181
    new-instance v4, Lo/childAddedChange$ICustomTabsCallback;

    invoke-direct {v4, v5}, Lo/childAddedChange$ICustomTabsCallback;-><init>(Lo/childAddedChange;)V

    const/4 v6, 0x0

    .line 38391
    iput-object v6, v4, Lo/childAddedChange$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/getChildKey;

    .line 38149
    invoke-virtual {v4}, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage()Lo/childAddedChange;

    move-result-object v4

    goto :goto_18

    :cond_2c
    move-object v4, v5

    :goto_18
    if-eqz v4, :cond_2d

    .line 38396
    invoke-static {v3, v4}, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage(Ljava/lang/String;Lo/childAddedChange;)V

    .line 38397
    :cond_2d
    iput-object v4, v0, Lo/childAddedChange$ICustomTabsCallback;->onTransact:Lo/childAddedChange;

    .line 110
    invoke-virtual {v0}, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage()Lo/childAddedChange;

    move-result-object v0

    .line 39177
    iget-object v3, v5, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    .line 111
    invoke-virtual {v3}, Lo/getChildKey;->close()V

    .line 115
    iget-object v3, v1, Lo/getPreviousName;->ICustomTabsCallback:Lo/changeComparator;

    invoke-interface {v3}, Lo/changeComparator;->ICustomTabsCallback()V

    .line 116
    iget-object v3, v1, Lo/getPreviousName;->ICustomTabsCallback:Lo/changeComparator;

    invoke-interface {v3, v2, v0}, Lo/changeComparator;->onPostMessage(Lo/childAddedChange;Lo/childAddedChange;)V

    return-object v0

    .line 40177
    :cond_2e
    iget-object v6, v2, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    .line 119
    invoke-static {v6}, Lo/generateEventsForType;->onNavigationEvent(Ljava/io/Closeable;)V

    .line 40181
    :cond_2f
    new-instance v6, Lo/childAddedChange$ICustomTabsCallback;

    invoke-direct {v6, v5}, Lo/childAddedChange$ICustomTabsCallback;-><init>(Lo/childAddedChange;)V

    if-eqz v2, :cond_30

    .line 41177
    iget-object v7, v2, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    if-eqz v7, :cond_30

    .line 41181
    new-instance v7, Lo/childAddedChange$ICustomTabsCallback;

    invoke-direct {v7, v2}, Lo/childAddedChange$ICustomTabsCallback;-><init>(Lo/childAddedChange;)V

    const/4 v2, 0x0

    .line 41391
    iput-object v2, v7, Lo/childAddedChange$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/getChildKey;

    .line 41149
    invoke-virtual {v7}, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage()Lo/childAddedChange;

    move-result-object v2

    :cond_30
    if-eqz v2, :cond_31

    .line 41402
    invoke-static {v4, v2}, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage(Ljava/lang/String;Lo/childAddedChange;)V

    .line 41403
    :cond_31
    iput-object v2, v6, Lo/childAddedChange$ICustomTabsCallback;->asInterface:Lo/childAddedChange;

    if-eqz v5, :cond_32

    .line 42177
    iget-object v2, v5, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    if-eqz v2, :cond_32

    .line 42181
    new-instance v2, Lo/childAddedChange$ICustomTabsCallback;

    invoke-direct {v2, v5}, Lo/childAddedChange$ICustomTabsCallback;-><init>(Lo/childAddedChange;)V

    const/4 v4, 0x0

    .line 42391
    iput-object v4, v2, Lo/childAddedChange$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/getChildKey;

    .line 42149
    invoke-virtual {v2}, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage()Lo/childAddedChange;

    move-result-object v5

    goto :goto_19

    :cond_32
    const/4 v4, 0x0

    :goto_19
    if-eqz v5, :cond_33

    .line 42396
    invoke-static {v3, v5}, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage(Ljava/lang/String;Lo/childAddedChange;)V

    .line 42397
    :cond_33
    iput-object v5, v6, Lo/childAddedChange$ICustomTabsCallback;->onTransact:Lo/childAddedChange;

    .line 126
    invoke-virtual {v6}, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage()Lo/childAddedChange;

    move-result-object v2

    .line 128
    iget-object v3, v1, Lo/getPreviousName;->ICustomTabsCallback:Lo/changeComparator;

    if-eqz v3, :cond_38

    .line 129
    invoke-static {v2}, Lo/hasAnchoredLimit;->extraCallback(Lo/childAddedChange;)Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-static {v2, v0}, Lo/getEventType;->onMessageChannelReady(Lo/childAddedChange;Lo/isCompleteForChild;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 131
    iget-object v0, v1, Lo/getPreviousName;->ICustomTabsCallback:Lo/changeComparator;

    invoke-interface {v0, v2}, Lo/changeComparator;->ICustomTabsCallback(Lo/childAddedChange;)Lo/addValueEventListener;

    move-result-object v0

    if-nez v0, :cond_34

    return-object v2

    .line 43162
    :cond_34
    invoke-interface {v0}, Lo/addValueEventListener;->onMessageChannelReady()Lo/exceptionStacktrace;

    move-result-object v3

    if-nez v3, :cond_35

    return-object v2

    .line 44177
    :cond_35
    iget-object v5, v2, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    .line 43165
    invoke-virtual {v5}, Lo/getChildKey;->onMessageChannelReady()Lo/fullLimitUpdateChild;

    move-result-object v5

    .line 43166
    invoke-static {v3}, Lo/warn;->onPostMessage(Lo/exceptionStacktrace;)Lo/filtersNodes;

    move-result-object v3

    .line 43168
    new-instance v6, Lo/getPreviousName$1;

    invoke-direct {v6, v5, v0, v3}, Lo/getPreviousName$1;-><init>(Lo/fullLimitUpdateChild;Lo/addValueEventListener;Lo/filtersNodes;)V

    .line 45131
    iget-object v0, v2, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    .line 46063
    iget-object v0, v0, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    const-string v3, "Content-Type"

    invoke-static {v0, v3}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    goto :goto_1a

    :cond_36
    move-object v0, v4

    .line 46177
    :goto_1a
    iget-object v3, v2, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    .line 43211
    invoke-virtual {v3}, Lo/getChildKey;->ICustomTabsCallback()J

    move-result-wide v3

    .line 46181
    new-instance v5, Lo/childAddedChange$ICustomTabsCallback;

    invoke-direct {v5, v2}, Lo/childAddedChange$ICustomTabsCallback;-><init>(Lo/childAddedChange;)V

    .line 43212
    new-instance v2, Lo/hasLimit;

    .line 43213
    invoke-static {v6}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object v6

    invoke-direct {v2, v0, v3, v4, v6}, Lo/hasLimit;-><init>(Ljava/lang/String;JLo/fullLimitUpdateChild;)V

    .line 46391
    iput-object v2, v5, Lo/childAddedChange$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/getChildKey;

    .line 43214
    invoke-virtual {v5}, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage()Lo/childAddedChange;

    move-result-object v0

    return-object v0

    .line 47053
    :cond_37
    iget-object v3, v0, Lo/isCompleteForChild;->onNavigationEvent:Ljava/lang/String;

    .line 135
    invoke-static {v3}, Lo/extraCallback$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 137
    :try_start_1
    iget-object v3, v1, Lo/getPreviousName;->ICustomTabsCallback:Lo/changeComparator;

    invoke-interface {v3, v0}, Lo/changeComparator;->onMessageChannelReady(Lo/isCompleteForChild;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_38
    return-object v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v3, :cond_39

    .line 31177
    iget-object v0, v3, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    .line 97
    invoke-static {v0}, Lo/generateEventsForType;->onNavigationEvent(Ljava/io/Closeable;)V

    :cond_39
    throw v2
.end method
