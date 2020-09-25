.class public final Lo/removeEventListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/removeEventListener$extraCallback;
    }
.end annotation


# static fields
.field public static final onPostMessage:Lo/updateChildren;


# instance fields
.field public final ICustomTabsCallback:Lo/setLogger$extraCallback$extraCallback;

.field public ICustomTabsCallback$Stub:Z

.field public final ICustomTabsCallback$Stub$Proxy:Z

.field public ICustomTabsService:Lo/removeValue;

.field public asBinder:Lo/fromException;

.field public final asInterface:Lo/fromException;

.field public final extraCallback:Lo/removeValue;

.field public final getInterfaceDescriptor:Z

.field public newSession:Lo/exceptionStacktrace;

.field public final onMessageChannelReady:Lo/setValueInternal;

.field public onNavigationEvent:Lo/addChildEventListener;

.field public final onRelationshipValidationResult:Z

.field public onTransact:J

.field public postMessage:Lo/addValueEventListener;

.field public updateVisuals:Lo/validateQueryEndpoints;

.field public warmup:Lo/removeValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    new-instance v0, Lo/removeEventListener$1;

    invoke-direct {v0}, Lo/removeEventListener$1;-><init>()V

    sput-object v0, Lo/removeEventListener;->onPostMessage:Lo/updateChildren;

    return-void
.end method

.method public constructor <init>(Lo/setValueInternal;Lo/fromException;ZZZLo/setLogger$extraCallback$extraCallback;Lo/limitToFirst;Lo/removeValue;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 174
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v3, -0x1

    .line 113
    iput-wide v3, v0, Lo/removeEventListener;->onTransact:J

    .line 175
    iput-object v1, v0, Lo/removeEventListener;->onMessageChannelReady:Lo/setValueInternal;

    .line 176
    iput-object v2, v0, Lo/removeEventListener;->asInterface:Lo/fromException;

    move/from16 v3, p3

    .line 177
    iput-boolean v3, v0, Lo/removeEventListener;->onRelationshipValidationResult:Z

    move/from16 v3, p4

    .line 178
    iput-boolean v3, v0, Lo/removeEventListener;->getInterfaceDescriptor:Z

    move/from16 v3, p5

    .line 179
    iput-boolean v3, v0, Lo/removeEventListener;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz p6, :cond_0

    move-object/from16 v3, p6

    goto :goto_1

    .line 180
    :cond_0
    new-instance v3, Lo/setLogger$extraCallback$extraCallback;

    .line 1411
    iget-object v4, v1, Lo/setValueInternal;->extraCommand:Lo/exists;

    .line 2107
    iget-object v5, v2, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    .line 2352
    iget-object v5, v5, Lo/fromCode;->ICustomTabsCallback:Ljava/lang/String;

    const-string v6, "https"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 3350
    iget-object v6, v1, Lo/setValueInternal;->newSession:Ljavax/net/ssl/SSLSocketFactory;

    .line 3365
    iget-object v5, v1, Lo/setValueInternal;->ICustomTabsCallback$Stub$Proxy:Ljavax/net/ssl/HostnameVerifier;

    .line 3380
    iget-object v7, v1, Lo/setValueInternal;->updateVisuals:Lo/onChildChanged;

    move-object v14, v5

    move-object v13, v6

    move-object v15, v7

    goto :goto_0

    :cond_1
    move-object v13, v6

    move-object v14, v13

    move-object v15, v14

    .line 1982
    :goto_0
    new-instance v5, Lo/serializeSessionApp;

    .line 4048
    iget-object v6, v2, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    .line 4391
    iget-object v9, v6, Lo/fromCode;->extraCallback:Ljava/lang/String;

    .line 5048
    iget-object v2, v2, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    .line 5400
    iget v10, v2, Lo/fromCode;->onMessageChannelReady:I

    .line 6318
    iget-object v11, v1, Lo/setValueInternal;->requestPostMessageChannel:Lo/hasNext;

    .line 6336
    iget-object v12, v1, Lo/setValueInternal;->getInterfaceDescriptor:Ljavax/net/SocketFactory;

    .line 6396
    iget-object v2, v1, Lo/setValueInternal;->postMessage:Lo/onChildMoved;

    .line 7250
    iget-object v6, v1, Lo/setValueInternal;->onNavigationEvent:Ljava/net/Proxy;

    .line 7529
    iget-object v7, v1, Lo/setValueInternal;->extraCallback:Ljava/util/List;

    .line 7538
    iget-object v8, v1, Lo/setValueInternal;->asInterface:Ljava/util/List;

    .line 8268
    iget-object v1, v1, Lo/setValueInternal;->onTransact:Ljava/net/ProxySelector;

    move-object/from16 v19, v8

    move-object v8, v5

    move-object/from16 v16, v2

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v20, v1

    .line 1985
    invoke-direct/range {v8 .. v20}, Lo/serializeSessionApp;-><init>(Ljava/lang/String;ILo/hasNext;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lo/onChildChanged;Lo/onChildMoved;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 182
    invoke-direct {v3, v4, v5}, Lo/setLogger$extraCallback$extraCallback;-><init>(Lo/exists;Lo/serializeSessionApp;)V

    :goto_1
    iput-object v3, v0, Lo/removeEventListener;->ICustomTabsCallback:Lo/setLogger$extraCallback$extraCallback;

    move-object/from16 v1, p7

    .line 183
    iput-object v1, v0, Lo/removeEventListener;->newSession:Lo/exceptionStacktrace;

    move-object/from16 v1, p8

    .line 184
    iput-object v1, v0, Lo/removeEventListener;->extraCallback:Lo/removeValue;

    return-void
.end method

.method public static ICustomTabsCallback(Lo/removeValue;)Lo/removeValue;
    .locals 2

    if-eqz p0, :cond_0

    .line 9130
    iget-object v0, p0, Lo/removeValue;->onRelationshipValidationResult:Lo/updateChildren;

    if-eqz v0, :cond_0

    .line 9134
    new-instance v0, Lo/removeValue$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/removeValue$onPostMessage;-><init>(Lo/removeValue;B)V

    const/4 p0, 0x0

    .line 9305
    iput-object p0, v0, Lo/removeValue$onPostMessage;->ICustomTabsCallback$Stub:Lo/updateChildren;

    .line 288
    invoke-virtual {v0}, Lo/removeValue$onPostMessage;->extraCallback()Lo/removeValue;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static ICustomTabsCallback(Lo/fromException;)Z
    .locals 0

    .line 10070
    iget-object p0, p0, Lo/fromException;->extraCallback:Ljava/lang/String;

    .line 303
    invoke-static {p0}, Lo/extraCallback;->asBinder(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic extraCallback(Lo/removeEventListener;Lo/fromException;)Lo/fromException;
    .locals 0

    .line 87
    iput-object p1, p0, Lo/removeEventListener;->asBinder:Lo/fromException;

    return-object p1
.end method

.method public static extraCallback(Lo/getRef;Lo/getRef;)Lo/getRef;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 849
    new-instance v0, Lo/getRef$ICustomTabsCallback;

    invoke-direct {v0}, Lo/getRef$ICustomTabsCallback;-><init>()V

    .line 31076
    iget-object v1, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_7

    shl-int/lit8 v5, v3, 0x1

    if-ltz v5, :cond_1

    .line 31082
    iget-object v6, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v6, v6

    if-lt v5, v6, :cond_0

    goto :goto_1

    .line 31085
    :cond_0
    iget-object v6, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    aget-object v6, v6, v5

    goto :goto_2

    :cond_1
    :goto_1
    move-object v6, v4

    :goto_2
    add-int/lit8 v5, v5, 0x1

    if-ltz v5, :cond_3

    .line 31091
    iget-object v7, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v7, v7

    if-lt v5, v7, :cond_2

    goto :goto_3

    .line 31094
    :cond_2
    iget-object v4, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    aget-object v4, v4, v5

    :cond_3
    :goto_3
    const-string v5, "Warning"

    .line 854
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 857
    :cond_4
    invoke-static {v6}, Lo/removeEventRegistration;->onPostMessage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 32061
    iget-object v5, p1, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    invoke-static {v5, v6}, Lo/getRef;->onMessageChannelReady([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    .line 858
    :cond_5
    invoke-virtual {v0, v6, v4}, Lo/getRef$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Lo/getRef$ICustomTabsCallback;

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 32076
    :cond_7
    iget-object p0, p1, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length p0, p0

    div-int/lit8 p0, p0, 0x2

    const/4 v1, 0x0

    :goto_4
    if-ge v1, p0, :cond_d

    shl-int/lit8 v3, v1, 0x1

    if-ltz v3, :cond_9

    .line 32082
    iget-object v5, p1, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v5, v5

    if-lt v3, v5, :cond_8

    goto :goto_5

    .line 32085
    :cond_8
    iget-object v5, p1, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    aget-object v5, v5, v3

    goto :goto_6

    :cond_9
    :goto_5
    move-object v5, v4

    :goto_6
    const-string v6, "Content-Length"

    .line 864
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 867
    invoke-static {v5}, Lo/removeEventRegistration;->onPostMessage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    add-int/lit8 v3, v3, 0x1

    if-ltz v3, :cond_b

    .line 32091
    iget-object v6, p1, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v6, v6

    if-lt v3, v6, :cond_a

    goto :goto_7

    .line 32094
    :cond_a
    iget-object v6, p1, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    aget-object v3, v6, v3

    goto :goto_8

    :cond_b
    :goto_7
    move-object v3, v4

    .line 868
    :goto_8
    invoke-virtual {v0, v5, v3}, Lo/getRef$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Lo/getRef$ICustomTabsCallback;

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 32312
    :cond_d
    new-instance p0, Lo/getRef;

    invoke-direct {p0, v0, v2}, Lo/getRef;-><init>(Lo/getRef$ICustomTabsCallback;B)V

    return-object p0
.end method

.method static synthetic extraCallback(Lo/removeEventListener;)Lo/removeValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lo/removeEventListener;->extraCallback()Lo/removeValue;

    move-result-object p0

    return-object p0
.end method

.method public static onMessageChannelReady(Lo/removeValue;Lo/removeValue;)Z
    .locals 4

    .line 27088
    iget v0, p1, Lo/removeValue;->ICustomTabsCallback:I

    const/4 v1, 0x1

    const/16 v2, 0x130

    if-ne v0, v2, :cond_0

    return v1

    .line 27126
    :cond_0
    iget-object p0, p0, Lo/removeValue;->asInterface:Lo/getRef;

    .line 29061
    iget-object p0, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    const-string v0, "Last-Modified"

    invoke-static {p0, v0}, Lo/getRef;->onMessageChannelReady([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 28071
    invoke-static {p0}, Lo/addListenerForSingleValueEvent;->extraCallback(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v2

    :goto_0
    if-eqz p0, :cond_3

    .line 29126
    iget-object p1, p1, Lo/removeValue;->asInterface:Lo/getRef;

    .line 31061
    iget-object p1, p1, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    invoke-static {p1, v0}, Lo/getRef;->onMessageChannelReady([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 30071
    invoke-static {p1}, Lo/addListenerForSingleValueEvent;->extraCallback(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    .line 836
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    cmp-long v0, v2, p0

    if-gez v0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic onNavigationEvent(Lo/removeEventListener;)Lo/addChildEventListener;
    .locals 0

    .line 87
    iget-object p0, p0, Lo/removeEventListener;->onNavigationEvent:Lo/addChildEventListener;

    return-object p0
.end method

.method public static onNavigationEvent(Lo/removeValue;)Z
    .locals 8

    .line 18075
    iget-object v0, p0, Lo/removeValue;->extraCallback:Lo/fromException;

    .line 19070
    iget-object v0, v0, Lo/fromException;->extraCallback:Ljava/lang/String;

    const-string v1, "HEAD"

    .line 490
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 19088
    :cond_0
    iget v0, p0, Lo/removeValue;->ICustomTabsCallback:I

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_2

    :cond_1
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_2

    const/16 v2, 0x130

    if-eq v0, v2, :cond_2

    return v3

    .line 504
    :cond_2
    invoke-static {p0}, Lo/removeEventRegistration;->ICustomTabsCallback(Lo/removeValue;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    .line 19121
    iget-object p0, p0, Lo/removeValue;->asInterface:Lo/getRef;

    .line 20061
    iget-object p0, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    const-string v0, "Transfer-Encoding"

    invoke-static {p0, v0}, Lo/getRef;->onMessageChannelReady([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    const-string v0, "chunked"

    .line 505
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    return v1

    :cond_5
    :goto_1
    return v3
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/setLogger$extraCallback$extraCallback;
    .locals 3

    .line 437
    iget-object v0, p0, Lo/removeEventListener;->newSession:Lo/exceptionStacktrace;

    if-eqz v0, :cond_0

    .line 438
    invoke-static {v0}, Lo/createForTests;->onMessageChannelReady(Ljava/io/Closeable;)V

    .line 441
    :cond_0
    iget-object v0, p0, Lo/removeEventListener;->ICustomTabsService:Lo/removeValue;

    if-eqz v0, :cond_1

    .line 10130
    iget-object v0, v0, Lo/removeValue;->onRelationshipValidationResult:Lo/updateChildren;

    .line 442
    invoke-static {v0}, Lo/createForTests;->onMessageChannelReady(Ljava/io/Closeable;)V

    goto :goto_0

    .line 445
    :cond_1
    iget-object v0, p0, Lo/removeEventListener;->ICustomTabsCallback:Lo/setLogger$extraCallback$extraCallback;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 10293
    invoke-virtual {v0, v2, v1, v2}, Lo/setLogger$extraCallback$extraCallback;->extraCallback(ZZZ)V

    .line 448
    :goto_0
    iget-object v0, p0, Lo/removeEventListener;->ICustomTabsCallback:Lo/setLogger$extraCallback$extraCallback;

    return-object v0
.end method

.method public final extraCallback()Lo/removeValue;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 735
    iget-object v0, p0, Lo/removeEventListener;->onNavigationEvent:Lo/addChildEventListener;

    invoke-interface {v0}, Lo/addChildEventListener;->onNavigationEvent()V

    .line 737
    iget-object v0, p0, Lo/removeEventListener;->onNavigationEvent:Lo/addChildEventListener;

    invoke-interface {v0}, Lo/addChildEventListener;->ICustomTabsCallback()Lo/removeValue$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/removeEventListener;->asBinder:Lo/fromException;

    .line 20251
    iput-object v1, v0, Lo/removeValue$onPostMessage;->extraCallback:Lo/fromException;

    .line 738
    iget-object v1, p0, Lo/removeEventListener;->ICustomTabsCallback:Lo/setLogger$extraCallback$extraCallback;

    .line 739
    invoke-virtual {v1}, Lo/setLogger$extraCallback$extraCallback;->extraCallback()Lo/orderByChild;

    move-result-object v1

    .line 20379
    iget-object v1, v1, Lo/orderByChild;->onMessageChannelReady:Lo/getChildren;

    .line 21271
    iput-object v1, v0, Lo/removeValue$onPostMessage;->onPostMessage:Lo/getChildren;

    .line 739
    sget-object v1, Lo/removeEventRegistration;->onMessageChannelReady:Ljava/lang/String;

    iget-wide v2, p0, Lo/removeEventListener;->onTransact:J

    .line 740
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 21280
    iget-object v3, v0, Lo/removeValue$onPostMessage;->asBinder:Lo/getRef$ICustomTabsCallback;

    invoke-virtual {v3, v1, v2}, Lo/getRef$ICustomTabsCallback;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/getRef$ICustomTabsCallback;

    .line 740
    sget-object v1, Lo/removeEventRegistration;->onPostMessage:Ljava/lang/String;

    .line 741
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 22280
    iget-object v3, v0, Lo/removeValue$onPostMessage;->asBinder:Lo/getRef$ICustomTabsCallback;

    invoke-virtual {v3, v1, v2}, Lo/getRef$ICustomTabsCallback;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/getRef$ICustomTabsCallback;

    .line 742
    invoke-virtual {v0}, Lo/removeValue$onPostMessage;->extraCallback()Lo/removeValue;

    move-result-object v0

    .line 744
    iget-boolean v1, p0, Lo/removeEventListener;->ICustomTabsCallback$Stub$Proxy:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 23134
    new-instance v1, Lo/removeValue$onPostMessage;

    invoke-direct {v1, v0, v2}, Lo/removeValue$onPostMessage;-><init>(Lo/removeValue;B)V

    .line 745
    iget-object v3, p0, Lo/removeEventListener;->onNavigationEvent:Lo/addChildEventListener;

    .line 746
    invoke-interface {v3, v0}, Lo/addChildEventListener;->onPostMessage(Lo/removeValue;)Lo/updateChildren;

    move-result-object v0

    .line 23305
    iput-object v0, v1, Lo/removeValue$onPostMessage;->ICustomTabsCallback$Stub:Lo/updateChildren;

    .line 747
    invoke-virtual {v1}, Lo/removeValue$onPostMessage;->extraCallback()Lo/removeValue;

    move-result-object v0

    .line 24075
    :cond_0
    iget-object v1, v0, Lo/removeValue;->extraCallback:Lo/fromException;

    .line 24078
    iget-object v1, v1, Lo/fromException;->ICustomTabsCallback:Lo/getRef;

    .line 25061
    iget-object v1, v1, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    const-string v3, "Connection"

    invoke-static {v1, v3}, Lo/getRef;->onMessageChannelReady([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "close"

    .line 750
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 25121
    iget-object v1, v0, Lo/removeValue;->asInterface:Lo/getRef;

    .line 26061
    iget-object v1, v1, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    invoke-static {v1, v3}, Lo/getRef;->onMessageChannelReady([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 751
    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 752
    :cond_2
    iget-object v1, p0, Lo/removeEventListener;->ICustomTabsCallback:Lo/setLogger$extraCallback$extraCallback;

    const/4 v3, 0x1

    .line 26220
    invoke-virtual {v1, v3, v2, v2}, Lo/setLogger$extraCallback$extraCallback;->extraCallback(ZZZ)V

    :cond_3
    return-object v0
.end method

.method public final extraCallback(Lo/removeValue;)Lo/removeValue;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 465
    iget-boolean v0, p0, Lo/removeEventListener;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/removeEventListener;->ICustomTabsService:Lo/removeValue;

    .line 11121
    iget-object v0, v0, Lo/removeValue;->asInterface:Lo/getRef;

    .line 12061
    iget-object v0, v0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    const-string v1, "Content-Encoding"

    invoke-static {v0, v1}, Lo/getRef;->onMessageChannelReady([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "gzip"

    .line 465
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 12130
    :cond_1
    iget-object v0, p1, Lo/removeValue;->onRelationshipValidationResult:Lo/updateChildren;

    if-nez v0, :cond_2

    return-object p1

    .line 473
    :cond_2
    new-instance v0, Lo/computeStringSizeNoTag$onPostMessage;

    .line 13130
    iget-object v2, p1, Lo/removeValue;->onRelationshipValidationResult:Lo/updateChildren;

    .line 473
    invoke-virtual {v2}, Lo/updateChildren;->ICustomTabsCallback()Lo/fullLimitUpdateChild;

    move-result-object v2

    invoke-direct {v0, v2}, Lo/computeStringSizeNoTag$onPostMessage;-><init>(Lo/toLog;)V

    .line 14126
    iget-object v2, p1, Lo/removeValue;->asInterface:Lo/getRef;

    .line 15121
    new-instance v3, Lo/getRef$ICustomTabsCallback;

    invoke-direct {v3}, Lo/getRef$ICustomTabsCallback;-><init>()V

    .line 15214
    iget-object v4, v3, Lo/getRef$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    .line 15122
    iget-object v2, v2, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    invoke-static {v4, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 475
    invoke-virtual {v3, v1}, Lo/getRef$ICustomTabsCallback;->extraCallback(Ljava/lang/String;)Lo/getRef$ICustomTabsCallback;

    move-result-object v1

    const-string v2, "Content-Length"

    .line 476
    invoke-virtual {v1, v2}, Lo/getRef$ICustomTabsCallback;->extraCallback(Ljava/lang/String;)Lo/getRef$ICustomTabsCallback;

    move-result-object v1

    .line 15312
    new-instance v2, Lo/getRef;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lo/getRef;-><init>(Lo/getRef$ICustomTabsCallback;B)V

    .line 16134
    new-instance v1, Lo/removeValue$onPostMessage;

    invoke-direct {v1, p1, v3}, Lo/removeValue$onPostMessage;-><init>(Lo/removeValue;B)V

    .line 17121
    new-instance p1, Lo/getRef$ICustomTabsCallback;

    invoke-direct {p1}, Lo/getRef$ICustomTabsCallback;-><init>()V

    .line 17214
    iget-object v3, p1, Lo/getRef$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    .line 17122
    iget-object v4, v2, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 16300
    iput-object p1, v1, Lo/removeValue$onPostMessage;->asBinder:Lo/getRef$ICustomTabsCallback;

    .line 479
    new-instance p1, Lo/keepSynced;

    .line 480
    invoke-static {v0}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lo/keepSynced;-><init>(Lo/getRef;Lo/fullLimitUpdateChild;)V

    .line 17305
    iput-object p1, v1, Lo/removeValue$onPostMessage;->ICustomTabsCallback$Stub:Lo/updateChildren;

    .line 481
    invoke-virtual {v1}, Lo/removeValue$onPostMessage;->extraCallback()Lo/removeValue;

    move-result-object p1

    :cond_3
    :goto_1
    return-object p1
.end method

.method public final onMessageChannelReady(Lo/fromCode;)Z
    .locals 3

    .line 966
    iget-object v0, p0, Lo/removeEventListener;->asInterface:Lo/fromException;

    .line 33048
    iget-object v0, v0, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    .line 33391
    iget-object v1, v0, Lo/fromCode;->extraCallback:Ljava/lang/String;

    .line 34391
    iget-object v2, p1, Lo/fromCode;->extraCallback:Ljava/lang/String;

    .line 967
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34400
    iget v1, v0, Lo/fromCode;->onMessageChannelReady:I

    .line 35400
    iget v2, p1, Lo/fromCode;->onMessageChannelReady:I

    if-ne v1, v2, :cond_0

    .line 36348
    iget-object v0, v0, Lo/fromCode;->ICustomTabsCallback:Ljava/lang/String;

    .line 37348
    iget-object p1, p1, Lo/fromCode;->ICustomTabsCallback:Ljava/lang/String;

    .line 969
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
