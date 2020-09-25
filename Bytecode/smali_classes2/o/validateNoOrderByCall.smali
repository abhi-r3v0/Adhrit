.class public final Lo/validateNoOrderByCall;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/addChildEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/validateNoOrderByCall$ICustomTabsCallback$Stub;,
        Lo/validateNoOrderByCall$onPostMessage;,
        Lo/validateNoOrderByCall$ICustomTabsCallback;,
        Lo/validateNoOrderByCall$onMessageChannelReady;,
        Lo/validateNoOrderByCall$extraCallback;,
        Lo/validateNoOrderByCall$onNavigationEvent;
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/setLogger$extraCallback$extraCallback;

.field public final extraCallback:Lo/filtersNodes;

.field onMessageChannelReady:I

.field private onNavigationEvent:Lo/removeEventListener;

.field final onPostMessage:Lo/fullLimitUpdateChild;


# direct methods
.method public constructor <init>(Lo/setLogger$extraCallback$extraCallback;Lo/fullLimitUpdateChild;Lo/filtersNodes;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lo/validateNoOrderByCall;->onMessageChannelReady:I

    .line 78
    iput-object p1, p0, Lo/validateNoOrderByCall;->ICustomTabsCallback:Lo/setLogger$extraCallback$extraCallback;

    .line 79
    iput-object p2, p0, Lo/validateNoOrderByCall;->onPostMessage:Lo/fullLimitUpdateChild;

    .line 80
    iput-object p3, p0, Lo/validateNoOrderByCall;->extraCallback:Lo/filtersNodes;

    return-void
.end method

.method static synthetic extraCallback(Lo/buildLogMessage;)V
    .locals 2

    .line 15032
    iget-object v0, p0, Lo/buildLogMessage;->onPostMessage:Lo/logsDebug;

    .line 14262
    sget-object v1, Lo/logsDebug;->ICustomTabsCallback:Lo/logsDebug;

    if-eqz v1, :cond_0

    .line 15037
    iput-object v1, p0, Lo/buildLogMessage;->onPostMessage:Lo/logsDebug;

    .line 14263
    invoke-virtual {v0}, Lo/logsDebug;->U_()Lo/logsDebug;

    .line 14264
    invoke-virtual {v0}, Lo/logsDebug;->T_()Lo/logsDebug;

    return-void

    .line 15036
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/removeValue$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lo/validateNoOrderByCall;->onMessageChannelReady()Lo/removeValue$onPostMessage;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback()Lo/getRef;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    new-instance v0, Lo/getRef$ICustomTabsCallback;

    invoke-direct {v0}, Lo/getRef$ICustomTabsCallback;-><init>()V

    .line 211
    :goto_0
    iget-object v1, p0, Lo/validateNoOrderByCall;->onPostMessage:Lo/fullLimitUpdateChild;

    invoke-interface {v1}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    sget-object v2, Lo/goOnline;->onPostMessage:Lo/goOnline;

    invoke-virtual {v2, v0, v1}, Lo/goOnline;->onNavigationEvent(Lo/getRef$ICustomTabsCallback;Ljava/lang/String;)V

    goto :goto_0

    .line 13312
    :cond_0
    new-instance v1, Lo/getRef;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lo/getRef;-><init>(Lo/getRef$ICustomTabsCallback;B)V

    return-object v1
.end method

.method public final extraCallback(J)Lo/toLog;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    iget v0, p0, Lo/validateNoOrderByCall;->onMessageChannelReady:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 237
    iput v0, p0, Lo/validateNoOrderByCall;->onMessageChannelReady:I

    .line 238
    new-instance v0, Lo/validateNoOrderByCall$ICustomTabsCallback;

    invoke-direct {v0, p0, p1, p2}, Lo/validateNoOrderByCall$ICustomTabsCallback;-><init>(Lo/validateNoOrderByCall;J)V

    return-object v0

    .line 236
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lo/validateNoOrderByCall;->onMessageChannelReady:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onMessageChannelReady()Lo/removeValue$onPostMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    iget v0, p0, Lo/validateNoOrderByCall;->onMessageChannelReady:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lo/validateNoOrderByCall;->onMessageChannelReady:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lo/validateNoOrderByCall;->onPostMessage:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/fromValue$extraCallback;->onNavigationEvent(Ljava/lang/String;)Lo/fromValue$extraCallback;

    move-result-object v0

    .line 188
    new-instance v1, Lo/removeValue$onPostMessage;

    invoke-direct {v1}, Lo/removeValue$onPostMessage;-><init>()V

    iget-object v2, v0, Lo/fromValue$extraCallback;->onMessageChannelReady:Lo/toException;

    .line 12256
    iput-object v2, v1, Lo/removeValue$onPostMessage;->onNavigationEvent:Lo/toException;

    .line 189
    iget v2, v0, Lo/fromValue$extraCallback;->onPostMessage:I

    .line 12261
    iput v2, v1, Lo/removeValue$onPostMessage;->ICustomTabsCallback:I

    .line 190
    iget-object v2, v0, Lo/fromValue$extraCallback;->onNavigationEvent:Ljava/lang/String;

    .line 12266
    iput-object v2, v1, Lo/removeValue$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    .line 192
    invoke-virtual {p0}, Lo/validateNoOrderByCall;->extraCallback()Lo/getRef;

    move-result-object v2

    .line 13121
    new-instance v3, Lo/getRef$ICustomTabsCallback;

    invoke-direct {v3}, Lo/getRef$ICustomTabsCallback;-><init>()V

    .line 13214
    iget-object v4, v3, Lo/getRef$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    .line 13122
    iget-object v2, v2, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    invoke-static {v4, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 12300
    iput-object v3, v1, Lo/removeValue$onPostMessage;->asBinder:Lo/getRef$ICustomTabsCallback;

    .line 194
    iget v0, v0, Lo/fromValue$extraCallback;->onPostMessage:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_1

    const/4 v0, 0x4

    .line 195
    iput v0, p0, Lo/validateNoOrderByCall;->onMessageChannelReady:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 201
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unexpected end of stream on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo/validateNoOrderByCall;->ICustomTabsCallback:Lo/setLogger$extraCallback$extraCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 203
    throw v1
.end method

.method public final onMessageChannelReady(Lo/fromException;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lo/validateNoOrderByCall;->onNavigationEvent:Lo/removeEventListener;

    .line 2298
    iget-wide v1, v0, Lo/removeEventListener;->onTransact:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 2299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lo/removeEventListener;->onTransact:J

    .line 121
    iget-object v0, p0, Lo/validateNoOrderByCall;->onNavigationEvent:Lo/removeEventListener;

    .line 2337
    iget-object v0, v0, Lo/removeEventListener;->ICustomTabsCallback:Lo/setLogger$extraCallback$extraCallback;

    invoke-virtual {v0}, Lo/setLogger$extraCallback$extraCallback;->extraCallback()Lo/orderByChild;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Lo/hasChild;->ICustomTabsCallback()Lo/onDisconnect;

    move-result-object v0

    .line 3066
    iget-object v0, v0, Lo/onDisconnect;->ICustomTabsCallback:Ljava/net/Proxy;

    .line 122
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 4018
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4070
    iget-object v2, p1, Lo/fromException;->extraCallback:Ljava/lang/String;

    .line 4019
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    .line 4020
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5107
    iget-object v2, p1, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    .line 5352
    iget-object v2, v2, Lo/fromCode;->ICustomTabsCallback:Ljava/lang/String;

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5038
    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 6048
    iget-object v0, p1, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    .line 4023
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 7048
    :cond_1
    iget-object v0, p1, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    .line 4025
    invoke-static {v0}, Lo/endAt;->onPostMessage(Lo/fromCode;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v0, " HTTP/1.1"

    .line 4028
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4029
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7074
    iget-object p1, p1, Lo/fromException;->ICustomTabsCallback:Lo/getRef;

    .line 123
    invoke-virtual {p0, p1, v0}, Lo/validateNoOrderByCall;->onPostMessage(Lo/getRef;Ljava/lang/String;)V

    return-void

    .line 2298
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final onMessageChannelReady(Lo/limitToFirst;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    iget v0, p0, Lo/validateNoOrderByCall;->onMessageChannelReady:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    .line 231
    iput v0, p0, Lo/validateNoOrderByCall;->onMessageChannelReady:I

    .line 232
    iget-object v0, p0, Lo/validateNoOrderByCall;->extraCallback:Lo/filtersNodes;

    invoke-virtual {p1, v0}, Lo/limitToFirst;->extraCallback(Lo/exceptionStacktrace;)V

    return-void

    .line 230
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lo/validateNoOrderByCall;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNavigationEvent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lo/validateNoOrderByCall;->extraCallback:Lo/filtersNodes;

    invoke-interface {v0}, Lo/filtersNodes;->flush()V

    return-void
.end method

.method public final onPostMessage(Lo/fromException;J)Lo/exceptionStacktrace;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1078
    iget-object p1, p1, Lo/fromException;->ICustomTabsCallback:Lo/getRef;

    .line 2061
    iget-object p1, p1, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    const-string v0, "Transfer-Encoding"

    invoke-static {p1, v0}, Lo/getRef;->onMessageChannelReady([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "state: "

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    .line 2218
    iget p1, p0, Lo/validateNoOrderByCall;->onMessageChannelReady:I

    if-ne p1, v3, :cond_0

    .line 2219
    iput v2, p0, Lo/validateNoOrderByCall;->onMessageChannelReady:I

    .line 2220
    new-instance p1, Lo/validateNoOrderByCall$extraCallback;

    invoke-direct {p1, p0, v1}, Lo/validateNoOrderByCall$extraCallback;-><init>(Lo/validateNoOrderByCall;B)V

    return-object p1

    .line 2218
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lo/validateNoOrderByCall;->onMessageChannelReady:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-wide/16 v4, -0x1

    cmp-long p1, p2, v4

    if-eqz p1, :cond_3

    .line 2224
    iget p1, p0, Lo/validateNoOrderByCall;->onMessageChannelReady:I

    if-ne p1, v3, :cond_2

    .line 2225
    iput v2, p0, Lo/validateNoOrderByCall;->onMessageChannelReady:I

    .line 2226
    new-instance p1, Lo/validateNoOrderByCall$onNavigationEvent;

    invoke-direct {p1, p0, p2, p3, v1}, Lo/validateNoOrderByCall$onNavigationEvent;-><init>(Lo/validateNoOrderByCall;JB)V

    return-object p1

    .line 2224
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lo/validateNoOrderByCall;->onMessageChannelReady:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage(Lo/removeValue;)Lo/updateChildren;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7136
    invoke-static {p1}, Lo/removeEventListener;->onNavigationEvent(Lo/removeValue;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 7137
    invoke-virtual {p0, v0, v1}, Lo/validateNoOrderByCall;->extraCallback(J)Lo/toLog;

    move-result-object v0

    goto :goto_1

    .line 8121
    :cond_0
    iget-object v0, p1, Lo/removeValue;->asInterface:Lo/getRef;

    .line 9061
    iget-object v0, v0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    const-string v1, "Transfer-Encoding"

    invoke-static {v0, v1}, Lo/getRef;->onMessageChannelReady([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "chunked"

    .line 7140
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "state: "

    const/4 v2, 0x5

    const/4 v3, 0x4

    if-eqz v0, :cond_3

    .line 7141
    iget-object v0, p0, Lo/validateNoOrderByCall;->onNavigationEvent:Lo/removeEventListener;

    .line 9242
    iget v4, p0, Lo/validateNoOrderByCall;->onMessageChannelReady:I

    if-ne v4, v3, :cond_2

    .line 9243
    iput v2, p0, Lo/validateNoOrderByCall;->onMessageChannelReady:I

    .line 9244
    new-instance v1, Lo/validateNoOrderByCall$onPostMessage;

    invoke-direct {v1, p0, v0}, Lo/validateNoOrderByCall$onPostMessage;-><init>(Lo/validateNoOrderByCall;Lo/removeEventListener;)V

    move-object v0, v1

    goto :goto_1

    .line 9242
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lo/validateNoOrderByCall;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7144
    :cond_3
    invoke-static {p1}, Lo/removeEventRegistration;->ICustomTabsCallback(Lo/removeValue;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 7146
    invoke-virtual {p0, v4, v5}, Lo/validateNoOrderByCall;->extraCallback(J)Lo/toLog;

    move-result-object v0

    goto :goto_1

    .line 9248
    :cond_4
    iget v0, p0, Lo/validateNoOrderByCall;->onMessageChannelReady:I

    if-ne v0, v3, :cond_6

    .line 9249
    iget-object v0, p0, Lo/validateNoOrderByCall;->ICustomTabsCallback:Lo/setLogger$extraCallback$extraCallback;

    if-eqz v0, :cond_5

    .line 9250
    iput v2, p0, Lo/validateNoOrderByCall;->onMessageChannelReady:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 10220
    invoke-virtual {v0, v1, v2, v2}, Lo/setLogger$extraCallback$extraCallback;->extraCallback(ZZZ)V

    .line 9252
    new-instance v0, Lo/validateNoOrderByCall$ICustomTabsCallback$Stub;

    invoke-direct {v0, p0, v2}, Lo/validateNoOrderByCall$ICustomTabsCallback$Stub;-><init>(Lo/validateNoOrderByCall;B)V

    .line 132
    :goto_1
    new-instance v1, Lo/keepSynced;

    .line 11126
    iget-object p1, p1, Lo/removeValue;->asInterface:Lo/getRef;

    .line 132
    invoke-static {v0}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lo/keepSynced;-><init>(Lo/getRef;Lo/fullLimitUpdateChild;)V

    return-object v1

    .line 9249
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "streamAllocation == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9248
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lo/validateNoOrderByCall;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage(Lo/getRef;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    iget v0, p0, Lo/validateNoOrderByCall;->onMessageChannelReady:I

    if-nez v0, :cond_5

    .line 167
    iget-object v0, p0, Lo/validateNoOrderByCall;->extraCallback:Lo/filtersNodes;

    invoke-interface {v0, p2}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    const/4 p2, 0x0

    .line 12076
    iget-object v1, p1, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    :goto_0
    if-ge p2, v1, :cond_4

    .line 169
    iget-object v2, p0, Lo/validateNoOrderByCall;->extraCallback:Lo/filtersNodes;

    shl-int/lit8 v3, p2, 0x1

    const/4 v4, 0x0

    if-ltz v3, :cond_1

    .line 12082
    iget-object v5, p1, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v5, v5

    if-lt v3, v5, :cond_0

    goto :goto_1

    .line 12085
    :cond_0
    iget-object v5, p1, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    aget-object v5, v5, v3

    goto :goto_2

    :cond_1
    :goto_1
    move-object v5, v4

    .line 169
    :goto_2
    invoke-interface {v2, v5}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v2

    const-string v5, ": "

    .line 170
    invoke-interface {v2, v5}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    if-ltz v3, :cond_3

    .line 12091
    iget-object v5, p1, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v5, v5

    if-lt v3, v5, :cond_2

    goto :goto_3

    .line 12094
    :cond_2
    iget-object v4, p1, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 171
    :cond_3
    :goto_3
    invoke-interface {v2, v4}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v2

    .line 172
    invoke-interface {v2, v0}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 174
    :cond_4
    iget-object p1, p0, Lo/validateNoOrderByCall;->extraCallback:Lo/filtersNodes;

    invoke-interface {p1, v0}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    const/4 p1, 0x1

    .line 175
    iput p1, p0, Lo/validateNoOrderByCall;->onMessageChannelReady:I

    return-void

    .line 166
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lo/validateNoOrderByCall;->onMessageChannelReady:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage(Lo/removeEventListener;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lo/validateNoOrderByCall;->onNavigationEvent:Lo/removeEventListener;

    return-void
.end method
