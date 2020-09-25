.class final Lo/onLogMessage;
.super Lo/getMinKey;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onLogMessage$onNavigationEvent;,
        Lo/onLogMessage$ICustomTabsCallback;,
        Lo/onLogMessage$onMessageChannelReady;,
        Lo/onLogMessage$extraCallback;
    }
.end annotation


# static fields
.field private static final asInterface:Lo/emptyMap;

.field private static onPostMessage:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady<",
            "Lo/onLogMessage$onNavigationEvent<",
            "Lo/openDatabase;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Lo/getMinKey$onMessageChannelReady;

.field private final extraCallback:Ljava/util/Random;

.field private final onNavigationEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/splitNodeRunLength;",
            "Lo/getMinKey$onTransact;",
            ">;"
        }
    .end annotation
.end field

.field private onRelationshipValidationResult:Lo/setTransactionSuccessful;

.field private onTransact:Lo/onLogMessage$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23149
    new-instance v0, Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    const-string v1, "state-info"

    invoke-direct {v0, v1}, Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    .line 56
    sput-object v0, Lo/onLogMessage;->onPostMessage:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 162
    sget-object v0, Lo/emptyMap;->onMessageChannelReady:Lo/emptyMap;

    const-string v1, "no subchannels ready"

    invoke-virtual {v0, v1}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v0

    sput-object v0, Lo/onLogMessage;->asInterface:Lo/emptyMap;

    return-void
.end method

.method constructor <init>(Lo/getMinKey$onMessageChannelReady;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Lo/getMinKey;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/onLogMessage;->onNavigationEvent:Ljava/util/Map;

    .line 64
    new-instance v0, Lo/onLogMessage$ICustomTabsCallback;

    sget-object v1, Lo/onLogMessage;->asInterface:Lo/emptyMap;

    invoke-direct {v0, v1}, Lo/onLogMessage$ICustomTabsCallback;-><init>(Lo/emptyMap;)V

    iput-object v0, p0, Lo/onLogMessage;->onTransact:Lo/onLogMessage$extraCallback;

    if-eqz p1, :cond_0

    .line 67
    check-cast p1, Lo/getMinKey$onMessageChannelReady;

    iput-object p1, p0, Lo/onLogMessage;->ICustomTabsCallback:Lo/getMinKey$onMessageChannelReady;

    .line 68
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lo/onLogMessage;->extraCallback:Ljava/util/Random;

    return-void

    .line 1910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "helper"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private extraCallback(Lo/setTransactionSuccessful;Lo/onLogMessage$extraCallback;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lo/onLogMessage;->onRelationshipValidationResult:Lo/setTransactionSuccessful;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lo/onLogMessage;->onTransact:Lo/onLogMessage$extraCallback;

    invoke-virtual {p2, v0}, Lo/onLogMessage$extraCallback;->ICustomTabsCallback(Lo/onLogMessage$extraCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    :cond_0
    iget-object v0, p0, Lo/onLogMessage;->ICustomTabsCallback:Lo/getMinKey$onMessageChannelReady;

    invoke-virtual {v0, p1, p2}, Lo/getMinKey$onMessageChannelReady;->onNavigationEvent(Lo/setTransactionSuccessful;Lo/getMinKey$ICustomTabsCallback$Stub;)V

    .line 201
    iput-object p1, p0, Lo/onLogMessage;->onRelationshipValidationResult:Lo/setTransactionSuccessful;

    .line 202
    iput-object p2, p0, Lo/onLogMessage;->onTransact:Lo/onLogMessage$extraCallback;

    :cond_1
    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/onLogMessage;Lo/getMinKey$onTransact;Lo/openDatabase;)V
    .locals 5

    .line 18139
    iget-object v0, p0, Lo/onLogMessage;->onNavigationEvent:Ljava/util/Map;

    .line 18255
    invoke-virtual {p1}, Lo/getMinKey$onTransact;->onPostMessage()Ljava/util/List;

    move-result-object v1

    .line 18256
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 18257
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/splitNodeRunLength;

    .line 19234
    new-instance v2, Lo/splitNodeRunLength;

    .line 20090
    iget-object v1, v1, Lo/splitNodeRunLength;->onMessageChannelReady:Ljava/util/List;

    .line 19234
    invoke-direct {v2, v1}, Lo/splitNodeRunLength;-><init>(Ljava/util/List;)V

    .line 18139
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_3

    .line 21058
    iget-object v0, p2, Lo/openDatabase;->onNavigationEvent:Lo/setTransactionSuccessful;

    .line 18142
    sget-object v1, Lo/setTransactionSuccessful;->ICustomTabsCallback:Lo/setTransactionSuccessful;

    if-ne v0, v1, :cond_1

    .line 18143
    invoke-virtual {p1}, Lo/getMinKey$onTransact;->onNavigationEvent()V

    .line 21244
    :cond_1
    invoke-virtual {p1}, Lo/getMinKey$onTransact;->ICustomTabsCallback()Lo/serverCacheEstimatedSizeInBytes;

    move-result-object p1

    sget-object v0, Lo/onLogMessage;->onPostMessage:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 22065
    iget-object p1, p1, Lo/serverCacheEstimatedSizeInBytes;->extraCallback:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 21244
    check-cast p1, Lo/onLogMessage$onNavigationEvent;

    .line 18145
    iput-object p2, p1, Lo/onLogMessage$onNavigationEvent;->extraCallback:Ljava/lang/Object;

    .line 18146
    invoke-direct {p0}, Lo/onLogMessage;->onNavigationEvent()V

    goto :goto_1

    .line 22910
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "STATE_INFO"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void

    .line 18592
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-array p1, v4, [Ljava/lang/Object;

    aput-object v1, p1, v3

    const-string p2, "%s does not have exactly one group"

    invoke-static {p2, p1}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private onNavigationEvent()V
    .locals 9

    .line 10239
    iget-object v0, p0, Lo/onLogMessage;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 11211
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11212
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "STATE_INFO"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMinKey$onTransact;

    .line 12244
    invoke-virtual {v2}, Lo/getMinKey$onTransact;->ICustomTabsCallback()Lo/serverCacheEstimatedSizeInBytes;

    move-result-object v6

    sget-object v7, Lo/onLogMessage;->onPostMessage:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 13065
    iget-object v6, v6, Lo/serverCacheEstimatedSizeInBytes;->extraCallback:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 12244
    check-cast v6, Lo/onLogMessage$onNavigationEvent;

    .line 11249
    iget-object v3, v6, Lo/onLogMessage$onNavigationEvent;->extraCallback:Ljava/lang/Object;

    check-cast v3, Lo/openDatabase;

    .line 14058
    iget-object v3, v3, Lo/openDatabase;->onNavigationEvent:Lo/setTransactionSuccessful;

    .line 11249
    sget-object v6, Lo/setTransactionSuccessful;->onPostMessage:Lo/setTransactionSuccessful;

    if-ne v3, v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    .line 11214
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13910
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 173
    sget-object v0, Lo/onLogMessage;->asInterface:Lo/emptyMap;

    .line 14239
    iget-object v1, p0, Lo/onLogMessage;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 174
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/getMinKey$onTransact;

    .line 14244
    invoke-virtual {v6}, Lo/getMinKey$onTransact;->ICustomTabsCallback()Lo/serverCacheEstimatedSizeInBytes;

    move-result-object v6

    sget-object v7, Lo/onLogMessage;->onPostMessage:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 15065
    iget-object v6, v6, Lo/serverCacheEstimatedSizeInBytes;->extraCallback:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 14244
    check-cast v6, Lo/onLogMessage$onNavigationEvent;

    .line 175
    iget-object v6, v6, Lo/onLogMessage$onNavigationEvent;->extraCallback:Ljava/lang/Object;

    check-cast v6, Lo/openDatabase;

    .line 16058
    iget-object v7, v6, Lo/openDatabase;->onNavigationEvent:Lo/setTransactionSuccessful;

    .line 179
    sget-object v8, Lo/setTransactionSuccessful;->extraCallback:Lo/setTransactionSuccessful;

    if-eq v7, v8, :cond_5

    .line 17058
    iget-object v7, v6, Lo/openDatabase;->onNavigationEvent:Lo/setTransactionSuccessful;

    .line 179
    sget-object v8, Lo/setTransactionSuccessful;->ICustomTabsCallback:Lo/setTransactionSuccessful;

    if-ne v7, v8, :cond_6

    :cond_5
    const/4 v2, 0x1

    .line 182
    :cond_6
    sget-object v7, Lo/onLogMessage;->asInterface:Lo/emptyMap;

    if-eq v0, v7, :cond_8

    .line 17516
    sget-object v7, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    iget-object v8, v0, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    if-ne v7, v8, :cond_7

    const/4 v7, 0x1

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    :goto_3
    if-nez v7, :cond_4

    .line 18068
    :cond_8
    iget-object v0, v6, Lo/openDatabase;->ICustomTabsCallback:Lo/emptyMap;

    goto :goto_2

    .line 15910
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-eqz v2, :cond_b

    .line 186
    sget-object v1, Lo/setTransactionSuccessful;->extraCallback:Lo/setTransactionSuccessful;

    goto :goto_4

    :cond_b
    sget-object v1, Lo/setTransactionSuccessful;->onNavigationEvent:Lo/setTransactionSuccessful;

    :goto_4
    new-instance v2, Lo/onLogMessage$ICustomTabsCallback;

    invoke-direct {v2, v0}, Lo/onLogMessage$ICustomTabsCallback;-><init>(Lo/emptyMap;)V

    invoke-direct {p0, v1, v2}, Lo/onLogMessage;->extraCallback(Lo/setTransactionSuccessful;Lo/onLogMessage$extraCallback;)V

    return-void

    .line 193
    :cond_c
    iget-object v0, p0, Lo/onLogMessage;->extraCallback:Ljava/util/Random;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 194
    sget-object v2, Lo/setTransactionSuccessful;->onPostMessage:Lo/setTransactionSuccessful;

    new-instance v3, Lo/onLogMessage$onMessageChannelReady;

    invoke-direct {v3, v1, v0}, Lo/onLogMessage$onMessageChannelReady;-><init>(Ljava/util/List;I)V

    invoke-direct {p0, v2, v3}, Lo/onLogMessage;->extraCallback(Lo/setTransactionSuccessful;Lo/onLogMessage$extraCallback;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 3

    .line 7239
    iget-object v0, p0, Lo/onLogMessage;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getMinKey$onTransact;

    .line 8150
    invoke-virtual {v1}, Lo/getMinKey$onTransact;->extraCallback()V

    .line 8244
    invoke-virtual {v1}, Lo/getMinKey$onTransact;->ICustomTabsCallback()Lo/serverCacheEstimatedSizeInBytes;

    move-result-object v1

    sget-object v2, Lo/onLogMessage;->onPostMessage:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 9065
    iget-object v1, v1, Lo/serverCacheEstimatedSizeInBytes;->extraCallback:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8244
    check-cast v1, Lo/onLogMessage$onNavigationEvent;

    .line 8151
    sget-object v2, Lo/setTransactionSuccessful;->onMessageChannelReady:Lo/setTransactionSuccessful;

    .line 8152
    invoke-static {v2}, Lo/openDatabase;->onNavigationEvent(Lo/setTransactionSuccessful;)Lo/openDatabase;

    move-result-object v2

    iput-object v2, v1, Lo/onLogMessage$onNavigationEvent;->extraCallback:Ljava/lang/Object;

    goto :goto_0

    .line 9910
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "STATE_INFO"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady(Lo/getMinKey$onRelationshipValidationResult;)V
    .locals 8

    .line 2221
    iget-object p1, p1, Lo/getMinKey$onRelationshipValidationResult;->onNavigationEvent:Ljava/util/List;

    .line 74
    iget-object v0, p0, Lo/onLogMessage;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2226
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 2227
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/splitNodeRunLength;

    .line 2234
    new-instance v3, Lo/splitNodeRunLength;

    .line 3090
    iget-object v4, v2, Lo/splitNodeRunLength;->onMessageChannelReady:Ljava/util/List;

    .line 2234
    invoke-direct {v3, v4}, Lo/splitNodeRunLength;-><init>(Ljava/util/List;)V

    .line 2228
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 76
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 3253
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3254
    invoke-interface {v2, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 79
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 80
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/splitNodeRunLength;

    .line 81
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/splitNodeRunLength;

    .line 82
    iget-object v3, p0, Lo/onLogMessage;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getMinKey$onTransact;

    if-eqz v3, :cond_1

    .line 85
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lo/getMinKey$onTransact;->extraCallback(Ljava/util/List;)V

    goto :goto_1

    .line 93
    :cond_1
    invoke-static {}, Lo/serverCacheEstimatedSizeInBytes;->onMessageChannelReady()Lo/serverCacheEstimatedSizeInBytes$extraCallback;

    move-result-object v3

    sget-object v4, Lo/onLogMessage;->onPostMessage:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    new-instance v5, Lo/onLogMessage$onNavigationEvent;

    sget-object v6, Lo/setTransactionSuccessful;->ICustomTabsCallback:Lo/setTransactionSuccessful;

    .line 98
    invoke-static {v6}, Lo/openDatabase;->onNavigationEvent(Lo/setTransactionSuccessful;)Lo/openDatabase;

    move-result-object v6

    invoke-direct {v5, v6}, Lo/onLogMessage$onNavigationEvent;-><init>(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {v3, v4, v5}, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->onMessageChannelReady(Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;Ljava/lang/Object;)Lo/serverCacheEstimatedSizeInBytes$extraCallback;

    move-result-object v3

    .line 100
    iget-object v4, p0, Lo/onLogMessage;->ICustomTabsCallback:Lo/getMinKey$onMessageChannelReady;

    .line 3752
    new-instance v5, Lo/getMinKey$onPostMessage$extraCallback;

    invoke-direct {v5}, Lo/getMinKey$onPostMessage$extraCallback;-><init>()V

    .line 3815
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v5, Lo/getMinKey$onPostMessage$extraCallback;->onPostMessage:Ljava/util/List;

    .line 103
    invoke-virtual {v3}, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->ICustomTabsCallback()Lo/serverCacheEstimatedSizeInBytes;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3839
    check-cast v0, Lo/serverCacheEstimatedSizeInBytes;

    iput-object v0, v5, Lo/getMinKey$onPostMessage$extraCallback;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

    .line 4847
    new-instance v0, Lo/getMinKey$onPostMessage;

    iget-object v3, v5, Lo/getMinKey$onPostMessage$extraCallback;->onPostMessage:Ljava/util/List;

    iget-object v6, v5, Lo/getMinKey$onPostMessage$extraCallback;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

    iget-object v5, v5, Lo/getMinKey$onPostMessage$extraCallback;->onMessageChannelReady:[[Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-direct {v0, v3, v6, v5, v7}, Lo/getMinKey$onPostMessage;-><init>(Ljava/util/List;Lo/serverCacheEstimatedSizeInBytes;[[Ljava/lang/Object;B)V

    .line 101
    invoke-virtual {v4, v0}, Lo/getMinKey$onMessageChannelReady;->extraCallback(Lo/getMinKey$onPostMessage;)Lo/getMinKey$onTransact;

    move-result-object v0

    .line 100
    check-cast v0, Lo/getMinKey$onTransact;

    .line 106
    new-instance v3, Lo/onLogMessage$3;

    invoke-direct {v3, p0, v0}, Lo/onLogMessage$3;-><init>(Lo/onLogMessage;Lo/getMinKey$onTransact;)V

    invoke-virtual {v0, v3}, Lo/getMinKey$onTransact;->extraCallback(Lo/getMinKey$asInterface;)V

    .line 112
    iget-object v3, p0, Lo/onLogMessage;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {v0}, Lo/getMinKey$onTransact;->onNavigationEvent()V

    goto :goto_1

    .line 3910
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "attrs"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/splitNodeRunLength;

    .line 118
    iget-object v2, p0, Lo/onLogMessage;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 123
    :cond_4
    invoke-direct {p0}, Lo/onLogMessage;->onNavigationEvent()V

    .line 126
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMinKey$onTransact;

    .line 5150
    invoke-virtual {v0}, Lo/getMinKey$onTransact;->extraCallback()V

    .line 5244
    invoke-virtual {v0}, Lo/getMinKey$onTransact;->ICustomTabsCallback()Lo/serverCacheEstimatedSizeInBytes;

    move-result-object v0

    sget-object v1, Lo/onLogMessage;->onPostMessage:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 6065
    iget-object v0, v0, Lo/serverCacheEstimatedSizeInBytes;->extraCallback:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5244
    check-cast v0, Lo/onLogMessage$onNavigationEvent;

    .line 5151
    sget-object v1, Lo/setTransactionSuccessful;->onMessageChannelReady:Lo/setTransactionSuccessful;

    .line 5152
    invoke-static {v1}, Lo/openDatabase;->onNavigationEvent(Lo/setTransactionSuccessful;)Lo/openDatabase;

    move-result-object v1

    iput-object v1, v0, Lo/onLogMessage$onNavigationEvent;->extraCallback:Ljava/lang/Object;

    goto :goto_3

    .line 6910
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "STATE_INFO"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return-void
.end method

.method public final onPostMessage(Lo/emptyMap;)V
    .locals 3

    .line 134
    sget-object v0, Lo/setTransactionSuccessful;->onNavigationEvent:Lo/setTransactionSuccessful;

    .line 135
    iget-object v1, p0, Lo/onLogMessage;->onTransact:Lo/onLogMessage$extraCallback;

    instance-of v2, v1, Lo/onLogMessage$onMessageChannelReady;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lo/onLogMessage$ICustomTabsCallback;

    invoke-direct {v1, p1}, Lo/onLogMessage$ICustomTabsCallback;-><init>(Lo/emptyMap;)V

    .line 134
    :goto_0
    invoke-direct {p0, v0, v1}, Lo/onLogMessage;->extraCallback(Lo/setTransactionSuccessful;Lo/onLogMessage$extraCallback;)V

    return-void
.end method
