.class public final Lo/getParams;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getIndexStartName;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getParams$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Lo/annotatedName$onNavigationEvent;

.field private asBinder:Lo/getServerCache;

.field private final asInterface:Lo/valueChange;

.field final extraCallback:Lo/getIndexEndValue;

.field private final onMessageChannelReady:Lo/normalizeValue;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "connection"

    const-string v1, "host"

    const-string v2, "keep-alive"

    const-string v3, "proxy-connection"

    const-string v4, "te"

    const-string v5, "transfer-encoding"

    const-string v6, "encoding"

    const-string v7, "upgrade"

    const-string v8, ":method"

    const-string v9, ":path"

    const-string v10, ":scheme"

    const-string v11, ":authority"

    .line 69
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/generateEventsForType;->onPostMessage([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/getParams;->onNavigationEvent:Ljava/util/List;

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    const-string v7, "encoding"

    const-string v8, "upgrade"

    .line 82
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/generateEventsForType;->onPostMessage([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/getParams;->onPostMessage:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lo/propertyName;Lo/annotatedName$onNavigationEvent;Lo/getIndexEndValue;Lo/normalizeValue;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Lo/getParams;->ICustomTabsCallback:Lo/annotatedName$onNavigationEvent;

    .line 101
    iput-object p3, p0, Lo/getParams;->extraCallback:Lo/getIndexEndValue;

    .line 102
    iput-object p4, p0, Lo/getParams;->onMessageChannelReady:Lo/normalizeValue;

    .line 1394
    iget-object p1, p1, Lo/propertyName;->onMessageChannelReady:Ljava/util/List;

    .line 103
    sget-object p2, Lo/valueChange;->extraCallback:Lo/valueChange;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 104
    sget-object p1, Lo/valueChange;->extraCallback:Lo/valueChange;

    goto :goto_0

    .line 105
    :cond_0
    sget-object p1, Lo/valueChange;->onNavigationEvent:Lo/valueChange;

    :goto_0
    iput-object p1, p0, Lo/getParams;->asInterface:Lo/valueChange;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lo/getParams;->onMessageChannelReady:Lo/normalizeValue;

    .line 8412
    iget-object v0, v0, Lo/normalizeValue;->getInterfaceDescriptor:Lo/updateServerSnap;

    invoke-virtual {v0}, Lo/updateServerSnap;->extraCallback()V

    return-void
.end method

.method public final extraCallback(Lo/childAddedChange;)Lo/getChildKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13131
    iget-object v0, p1, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    .line 14063
    iget-object v0, v0, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    const-string v1, "Content-Type"

    invoke-static {v0, v1}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 186
    :goto_0
    invoke-static {p1}, Lo/hasAnchoredLimit;->onPostMessage(Lo/childAddedChange;)J

    move-result-wide v1

    .line 187
    new-instance p1, Lo/getParams$onNavigationEvent;

    iget-object v3, p0, Lo/getParams;->asBinder:Lo/getServerCache;

    .line 14217
    iget-object v3, v3, Lo/getServerCache;->asBinder:Lo/getServerCache$onMessageChannelReady;

    .line 187
    invoke-direct {p1, p0, v3}, Lo/getParams$onNavigationEvent;-><init>(Lo/getParams;Lo/toLog;)V

    .line 188
    new-instance v3, Lo/hasLimit;

    invoke-static {p1}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lo/hasLimit;-><init>(Ljava/lang/String;JLo/fullLimitUpdateChild;)V

    return-object v3
.end method

.method public final extraCallback()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lo/getParams;->asBinder:Lo/getServerCache;

    invoke-virtual {v0}, Lo/getServerCache;->ICustomTabsCallback()Lo/exceptionStacktrace;

    move-result-object v0

    invoke-interface {v0}, Lo/exceptionStacktrace;->close()V

    return-void
.end method

.method public final onNavigationEvent(Z)Lo/childAddedChange$ICustomTabsCallback;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lo/getParams;->asBinder:Lo/getServerCache;

    invoke-virtual {v0}, Lo/getServerCache;->onMessageChannelReady()Lo/shouldIncludeField;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lo/getParams;->asInterface:Lo/valueChange;

    .line 9164
    new-instance v2, Lo/shouldIncludeField$onMessageChannelReady;

    invoke-direct {v2}, Lo/shouldIncludeField$onMessageChannelReady;-><init>()V

    .line 10077
    iget-object v3, v0, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v4

    :goto_0
    if-ge v5, v3, :cond_2

    .line 10082
    iget-object v7, v0, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    shl-int/lit8 v8, v5, 0x1

    aget-object v7, v7, v8

    .line 10087
    iget-object v9, v0, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    add-int/lit8 v8, v8, 0x1

    aget-object v8, v9, v8

    const-string v9, ":status"

    .line 9168
    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 9169
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "HTTP/1.1 "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lo/setSearchView$onPostMessage;->extraCallback(Ljava/lang/String;)Lo/setSearchView$onPostMessage;

    move-result-object v6

    goto :goto_1

    .line 9170
    :cond_0
    sget-object v9, Lo/getParams;->onPostMessage:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 9171
    sget-object v9, Lo/childChangedChange;->onPostMessage:Lo/childChangedChange;

    invoke-virtual {v9, v2, v7, v8}, Lo/childChangedChange;->onNavigationEvent(Lo/shouldIncludeField$onMessageChannelReady;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_4

    .line 9176
    new-instance v0, Lo/childAddedChange$ICustomTabsCallback;

    invoke-direct {v0}, Lo/childAddedChange$ICustomTabsCallback;-><init>()V

    .line 10342
    iput-object v1, v0, Lo/childAddedChange$ICustomTabsCallback;->extraCallback:Lo/valueChange;

    .line 9177
    iget v1, v6, Lo/setSearchView$onPostMessage;->onMessageChannelReady:I

    .line 10347
    iput v1, v0, Lo/childAddedChange$ICustomTabsCallback;->ICustomTabsCallback:I

    .line 9178
    iget-object v1, v6, Lo/setSearchView$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    .line 10352
    iput-object v1, v0, Lo/childAddedChange$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 10401
    new-instance v1, Lo/shouldIncludeField;

    invoke-direct {v1, v2}, Lo/shouldIncludeField;-><init>(Lo/shouldIncludeField$onMessageChannelReady;)V

    .line 12131
    new-instance v2, Lo/shouldIncludeField$onMessageChannelReady;

    invoke-direct {v2}, Lo/shouldIncludeField$onMessageChannelReady;-><init>()V

    .line 12132
    iget-object v3, v2, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    iget-object v1, v1, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 11386
    iput-object v2, v0, Lo/childAddedChange$ICustomTabsCallback;->asBinder:Lo/shouldIncludeField$onMessageChannelReady;

    if-eqz p1, :cond_3

    .line 133
    sget-object p1, Lo/childChangedChange;->onPostMessage:Lo/childChangedChange;

    invoke-virtual {p1, v0}, Lo/childChangedChange;->onNavigationEvent(Lo/childAddedChange$ICustomTabsCallback;)I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_3

    return-object v4

    :cond_3
    return-object v0

    .line 9174
    :cond_4
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNavigationEvent(Lo/isCompleteForChild;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lo/getParams;->asBinder:Lo/getServerCache;

    if-eqz v0, :cond_0

    return-void

    .line 2069
    :cond_0
    iget-object v0, p1, Lo/isCompleteForChild;->onMessageChannelReady:Lo/isCompleteForPath;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3057
    :goto_0
    iget-object v2, p1, Lo/isCompleteForChild;->onPostMessage:Lo/shouldIncludeField;

    .line 2141
    new-instance v3, Ljava/util/ArrayList;

    .line 3077
    iget-object v4, v2, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    array-length v4, v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x4

    .line 2141
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2142
    new-instance v4, Lo/loadsAllData;

    sget-object v5, Lo/loadsAllData;->extraCallback:Lo/matches;

    .line 4053
    iget-object v6, p1, Lo/isCompleteForChild;->onNavigationEvent:Ljava/lang/String;

    .line 2142
    invoke-direct {v4, v5, v6}, Lo/loadsAllData;-><init>(Lo/matches;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2143
    new-instance v4, Lo/loadsAllData;

    sget-object v5, Lo/loadsAllData;->onMessageChannelReady:Lo/matches;

    .line 5049
    iget-object v6, p1, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 2143
    invoke-static {v6}, Lo/orderBy;->onMessageChannelReady(Lo/isFullyInitialized;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lo/loadsAllData;-><init>(Lo/matches;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5061
    iget-object v4, p1, Lo/isCompleteForChild;->onPostMessage:Lo/shouldIncludeField;

    .line 5063
    iget-object v4, v4, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    const-string v5, "Host"

    invoke-static {v4, v5}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2146
    new-instance v5, Lo/loadsAllData;

    sget-object v6, Lo/loadsAllData;->asBinder:Lo/matches;

    invoke-direct {v5, v6, v4}, Lo/loadsAllData;-><init>(Lo/matches;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2148
    :cond_2
    new-instance v4, Lo/loadsAllData;

    sget-object v5, Lo/loadsAllData;->onNavigationEvent:Lo/matches;

    .line 6049
    iget-object p1, p1, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 6393
    iget-object p1, p1, Lo/isFullyInitialized;->onNavigationEvent:Ljava/lang/String;

    .line 2148
    invoke-direct {v4, v5, p1}, Lo/loadsAllData;-><init>(Lo/matches;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7077
    iget-object p1, v2, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    array-length p1, p1

    div-int/lit8 p1, p1, 0x2

    :goto_1
    if-ge v1, p1, :cond_4

    .line 7082
    iget-object v4, v2, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    shl-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    .line 2152
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v4

    .line 2153
    sget-object v6, Lo/getParams;->onNavigationEvent:Ljava/util/List;

    invoke-virtual {v4}, Lo/matches;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2154
    new-instance v6, Lo/loadsAllData;

    .line 7087
    iget-object v7, v2, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    aget-object v5, v7, v5

    .line 2154
    invoke-direct {v6, v4, v5}, Lo/loadsAllData;-><init>(Lo/matches;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    :cond_4
    iget-object p1, p0, Lo/getParams;->onMessageChannelReady:Lo/normalizeValue;

    .line 7230
    invoke-virtual {p1, v3, v0}, Lo/normalizeValue;->ICustomTabsCallback(Ljava/util/List;Z)Lo/getServerCache;

    move-result-object p1

    .line 117
    iput-object p1, p0, Lo/getParams;->asBinder:Lo/getServerCache;

    .line 8208
    iget-object p1, p1, Lo/getServerCache;->onRelationshipValidationResult:Lo/getServerCache$ICustomTabsCallback;

    .line 118
    iget-object v0, p0, Lo/getParams;->ICustomTabsCallback:Lo/annotatedName$onNavigationEvent;

    invoke-interface {v0}, Lo/annotatedName$onNavigationEvent;->onMessageChannelReady()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lo/logsDebug;->onNavigationEvent(JLjava/util/concurrent/TimeUnit;)Lo/logsDebug;

    .line 119
    iget-object p1, p0, Lo/getParams;->asBinder:Lo/getServerCache;

    .line 8212
    iget-object p1, p1, Lo/getServerCache;->asInterface:Lo/getServerCache$ICustomTabsCallback;

    .line 119
    iget-object v0, p0, Lo/getParams;->ICustomTabsCallback:Lo/annotatedName$onNavigationEvent;

    invoke-interface {v0}, Lo/annotatedName$onNavigationEvent;->onPostMessage()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lo/logsDebug;->onNavigationEvent(JLjava/util/concurrent/TimeUnit;)Lo/logsDebug;

    return-void
.end method

.method public final onPostMessage(Lo/isCompleteForChild;J)Lo/exceptionStacktrace;
    .locals 0

    .line 109
    iget-object p1, p0, Lo/getParams;->asBinder:Lo/getServerCache;

    invoke-virtual {p1}, Lo/getServerCache;->ICustomTabsCallback()Lo/exceptionStacktrace;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage()V
    .locals 3

    .line 192
    iget-object v0, p0, Lo/getParams;->asBinder:Lo/getServerCache;

    if-eqz v0, :cond_0

    sget-object v1, Lo/getNodeFilter;->asInterface:Lo/getNodeFilter;

    .line 14251
    invoke-virtual {v0, v1}, Lo/getServerCache;->onPostMessage(Lo/getNodeFilter;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14254
    iget-object v2, v0, Lo/getServerCache;->ICustomTabsCallback:Lo/normalizeValue;

    iget v0, v0, Lo/getServerCache;->onMessageChannelReady:I

    invoke-virtual {v2, v0, v1}, Lo/normalizeValue;->extraCallback(ILo/getNodeFilter;)V

    :cond_0
    return-void
.end method
