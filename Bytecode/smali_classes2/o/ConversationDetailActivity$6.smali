.class public final Lo/ConversationDetailActivity$6;
.super Ljava/util/LinkedHashMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:Lo/ConversationDetailActivity$6;


# instance fields
.field private extraCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Lo/ConversationDetailActivity$6;

    invoke-direct {v0}, Lo/ConversationDetailActivity$6;-><init>()V

    .line 69
    sput-object v0, Lo/ConversationDetailActivity$6;->onMessageChannelReady:Lo/ConversationDetailActivity$6;

    const/4 v1, 0x0

    .line 70
    iput-boolean v1, v0, Lo/ConversationDetailActivity$6;->extraCallback:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lo/ConversationDetailActivity$6;->extraCallback:Z

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lo/ConversationDetailActivity$6;->extraCallback:Z

    return-void
.end method

.method public static extraCallback()Lo/ConversationDetailActivity$6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/ConversationDetailActivity$6<",
            "TK;TV;>;"
        }
    .end annotation

    .line 7
    sget-object v0, Lo/ConversationDetailActivity$6;->onMessageChannelReady:Lo/ConversationDetailActivity$6;

    return-object v0
.end method

.method private static onMessageChannelReady(Ljava/lang/Object;)I
    .locals 1

    .line 46
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 47
    check-cast p0, [B

    invoke-static {p0}, Lo/aw;->onNavigationEvent([B)I

    move-result p0

    return p0

    .line 48
    :cond_0
    instance-of v0, p0, Lo/fV;

    if-nez v0, :cond_1

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    .line 49
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method private final onMessageChannelReady()V
    .locals 1

    .line 64
    iget-boolean v0, p0, Lo/ConversationDetailActivity$6;->extraCallback:Z

    if-eqz v0, :cond_0

    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lo/ConversationDetailActivity$6;->extraCallback:Z

    return-void
.end method

.method public final clear()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/ConversationDetailActivity$6;->onMessageChannelReady()V

    .line 14
    invoke-super {p0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lo/ConversationDetailActivity$6;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 30
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    .line 32
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    :goto_0
    const/4 p1, 0x0

    goto :goto_2

    .line 34
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 35
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 37
    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 38
    instance-of v5, v4, [B

    if-eqz v5, :cond_3

    instance-of v5, v3, [B

    if-eqz v5, :cond_3

    .line 39
    check-cast v4, [B

    check-cast v3, [B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    goto :goto_1

    .line 40
    :cond_3
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    if-nez v3, :cond_1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_5

    return v0

    :cond_5
    return v1
.end method

.method public final hashCode()I
    .locals 4

    .line 53
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 55
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lo/ConversationDetailActivity$6;->onMessageChannelReady(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lo/ConversationDetailActivity$6;->onMessageChannelReady(Ljava/lang/Object;)I

    move-result v2

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final onNavigationEvent()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lo/ConversationDetailActivity$6;->extraCallback:Z

    return v0
.end method

.method public final onPostMessage()Lo/ConversationDetailActivity$6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/ConversationDetailActivity$6<",
            "TK;TV;>;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lo/ConversationDetailActivity$6;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lo/ConversationDetailActivity$6;

    invoke-direct {v0}, Lo/ConversationDetailActivity$6;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lo/ConversationDetailActivity$6;

    invoke-direct {v0, p0}, Lo/ConversationDetailActivity$6;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final onPostMessage(Lo/ConversationDetailActivity$6;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ConversationDetailActivity$6<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lo/ConversationDetailActivity$6;->onMessageChannelReady()V

    .line 9
    invoke-virtual {p1}, Lo/ConversationDetailActivity$6;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    invoke-virtual {p0, p1}, Lo/ConversationDetailActivity$6;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lo/ConversationDetailActivity$6;->onMessageChannelReady()V

    .line 17
    invoke-static {p1}, Lo/aw;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {p2}, Lo/aw;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lo/ConversationDetailActivity$6;->onMessageChannelReady()V

    .line 22
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 23
    invoke-static {v1}, Lo/aw;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lo/aw;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 26
    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lo/ConversationDetailActivity$6;->onMessageChannelReady()V

    .line 29
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
