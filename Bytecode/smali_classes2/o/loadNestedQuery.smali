.class public final Lo/loadNestedQuery;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/loadNestedQuery$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static onMessageChannelReady:Lo/dispatchLayoutStep2$ICustomTabsCallback;

.field private static final onNavigationEvent:Lo/loadNestedQuery;


# instance fields
.field public final ICustomTabsCallback:[B

.field public final onPostMessage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/loadNestedQuery$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 2074
    new-instance v0, Lo/dispatchLayoutStep2$ICustomTabsCallback;

    const-string v1, ","

    invoke-direct {v0, v1}, Lo/dispatchLayoutStep2$ICustomTabsCallback;-><init>(Ljava/lang/String;)V

    .line 39
    sput-object v0, Lo/loadNestedQuery;->onMessageChannelReady:Lo/dispatchLayoutStep2$ICustomTabsCallback;

    .line 3042
    new-instance v0, Lo/loadNestedQuery;

    invoke-direct {v0}, Lo/loadNestedQuery;-><init>()V

    .line 46
    new-instance v1, Lo/purgeCache$onPostMessage;

    invoke-direct {v1}, Lo/purgeCache$onPostMessage;-><init>()V

    .line 3065
    new-instance v2, Lo/loadNestedQuery;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, v0}, Lo/loadNestedQuery;-><init>(Lo/partKey;ZLo/loadNestedQuery;)V

    .line 47
    sget-object v0, Lo/purgeCache$onNavigationEvent;->onMessageChannelReady:Lo/purgeCache;

    .line 4065
    new-instance v1, Lo/loadNestedQuery;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lo/loadNestedQuery;-><init>(Lo/partKey;ZLo/loadNestedQuery;)V

    .line 48
    sput-object v1, Lo/loadNestedQuery;->onNavigationEvent:Lo/loadNestedQuery;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lo/loadNestedQuery;->onPostMessage:Ljava/util/Map;

    new-array v0, v1, [B

    .line 94
    iput-object v0, p0, Lo/loadNestedQuery;->ICustomTabsCallback:[B

    return-void
.end method

.method private constructor <init>(Lo/partKey;ZLo/loadNestedQuery;)V
    .locals 6

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-interface {p1}, Lo/partKey;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 72
    iget-object v1, p3, Lo/loadNestedQuery;->onPostMessage:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 73
    iget-object v2, p3, Lo/loadNestedQuery;->onPostMessage:Ljava/util/Map;

    invoke-interface {p1}, Lo/partKey;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 76
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 78
    iget-object p3, p3, Lo/loadNestedQuery;->onPostMessage:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/loadNestedQuery$onMessageChannelReady;

    .line 79
    iget-object v3, v1, Lo/loadNestedQuery$onMessageChannelReady;->ICustomTabsCallback:Lo/partKey;

    invoke-interface {v3}, Lo/partKey;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 81
    new-instance v4, Lo/loadNestedQuery$onMessageChannelReady;

    iget-object v5, v1, Lo/loadNestedQuery$onMessageChannelReady;->ICustomTabsCallback:Lo/partKey;

    iget-boolean v1, v1, Lo/loadNestedQuery$onMessageChannelReady;->onPostMessage:Z

    invoke-direct {v4, v5, v1}, Lo/loadNestedQuery$onMessageChannelReady;-><init>(Lo/partKey;Z)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 85
    :cond_2
    new-instance p3, Lo/loadNestedQuery$onMessageChannelReady;

    invoke-direct {p3, p1, p2}, Lo/loadNestedQuery$onMessageChannelReady;-><init>(Lo/partKey;Z)V

    invoke-interface {v2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lo/loadNestedQuery;->onPostMessage:Ljava/util/Map;

    .line 88
    sget-object p1, Lo/loadNestedQuery;->onMessageChannelReady:Lo/dispatchLayoutStep2$ICustomTabsCallback;

    invoke-direct {p0}, Lo/loadNestedQuery;->onMessageChannelReady()Ljava/util/Set;

    move-result-object p2

    .line 1188
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 1198
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3, p2}, Lo/dispatchLayoutStep2$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "US-ASCII"

    .line 89
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lo/loadNestedQuery;->ICustomTabsCallback:[B

    return-void

    .line 1142
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Comma is currently not allowed in message encoding"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onMessageChannelReady()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lo/loadNestedQuery;->onPostMessage:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 119
    iget-object v1, p0, Lo/loadNestedQuery;->onPostMessage:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 120
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/loadNestedQuery$onMessageChannelReady;

    iget-boolean v3, v3, Lo/loadNestedQuery$onMessageChannelReady;->onPostMessage:Z

    if-eqz v3, :cond_0

    .line 121
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static onPostMessage()Lo/loadNestedQuery;
    .locals 1

    .line 51
    sget-object v0, Lo/loadNestedQuery;->onNavigationEvent:Lo/loadNestedQuery;

    return-object v0
.end method
