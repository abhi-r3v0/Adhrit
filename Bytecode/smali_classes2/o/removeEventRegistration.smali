.class public final Lo/removeEventRegistration;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static extraCallback:Ljava/lang/String;

.field public static final onMessageChannelReady:Ljava/lang/String;

.field private static final onNavigationEvent:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final onPostMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lo/removeEventRegistration$1;

    invoke-direct {v0}, Lo/removeEventRegistration$1;-><init>()V

    sput-object v0, Lo/removeEventRegistration;->onNavigationEvent:Ljava/util/Comparator;

    .line 40
    invoke-static {}, Lo/DatabaseRegistrar;->ICustomTabsCallback()Lo/DatabaseRegistrar;

    invoke-static {}, Lo/DatabaseRegistrar;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/removeEventRegistration;->extraCallback:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lo/removeEventRegistration;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/removeEventRegistration;->onMessageChannelReady:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lo/removeEventRegistration;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/removeEventRegistration;->onPostMessage:Ljava/lang/String;

    return-void
.end method

.method private static ICustomTabsCallback(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    .line 79
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method

.method public static ICustomTabsCallback(Lo/removeValue;)J
    .locals 2

    .line 3126
    iget-object p0, p0, Lo/removeValue;->asInterface:Lo/getRef;

    .line 5061
    iget-object p0, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    const-string v0, "Content-Length"

    invoke-static {p0, v0}, Lo/getRef;->onMessageChannelReady([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4073
    invoke-static {p0}, Lo/removeEventRegistration;->ICustomTabsCallback(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static ICustomTabsCallback(Lo/onChildMoved;Lo/removeValue;Ljava/net/Proxy;)Lo/fromException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14088
    iget v0, p1, Lo/removeValue;->ICustomTabsCallback:I

    const/16 v1, 0x197

    if-ne v0, v1, :cond_0

    .line 287
    invoke-interface {p0, p2, p1}, Lo/onChildMoved;->extraCallback(Ljava/net/Proxy;Lo/removeValue;)Lo/fromException;

    move-result-object p0

    return-object p0

    .line 288
    :cond_0
    invoke-interface {p0, p2, p1}, Lo/onChildMoved;->onMessageChannelReady(Ljava/net/Proxy;Lo/removeValue;)Lo/fromException;

    move-result-object p0

    return-object p0
.end method

.method public static ICustomTabsCallback(Lo/fromException$onNavigationEvent;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/fromException$onNavigationEvent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 112
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 113
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Cookie"

    .line 114
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Cookie2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 6126
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    .line 6127
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6128
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_4

    if-lez v3, :cond_3

    const-string v5, "; "

    .line 6129
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6130
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6132
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_2
    invoke-virtual {p0, v1, v0}, Lo/fromException$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Lo/fromException$onNavigationEvent;

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static extraCallback(Lo/removeValue;)Z
    .locals 1

    .line 8126
    iget-object p0, p0, Lo/removeValue;->asInterface:Lo/getRef;

    .line 8160
    invoke-static {p0}, Lo/removeEventRegistration;->onMessageChannelReady(Lo/getRef;)Ljava/util/Set;

    move-result-object p0

    const-string v0, "*"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static onMessageChannelReady(Lo/getRef;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getRef;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 172
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 9076
    iget-object v1, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    shl-int/lit8 v4, v3, 0x1

    const/4 v5, 0x0

    if-ltz v4, :cond_1

    .line 9082
    iget-object v6, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v6, v6

    if-lt v4, v6, :cond_0

    goto :goto_1

    .line 9085
    :cond_0
    iget-object v6, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    aget-object v6, v6, v4

    goto :goto_2

    :cond_1
    :goto_1
    move-object v6, v5

    :goto_2
    const-string v7, "Vary"

    .line 174
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 v4, v4, 0x1

    if-ltz v4, :cond_3

    .line 9091
    iget-object v6, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v6, v6

    if-lt v4, v6, :cond_2

    goto :goto_3

    .line 9094
    :cond_2
    iget-object v5, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    aget-object v5, v5, v4

    .line 177
    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 178
    new-instance v0, Ljava/util/TreeSet;

    sget-object v4, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    :cond_4
    const-string v4, ","

    .line 180
    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    .line 181
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method public static onMessageChannelReady(Lo/removeValue;Lo/getRef;Lo/fromException;)Z
    .locals 3

    .line 7126
    iget-object p0, p0, Lo/removeValue;->asInterface:Lo/getRef;

    .line 6164
    invoke-static {p0}, Lo/removeEventRegistration;->onMessageChannelReady(Lo/getRef;)Ljava/util/Set;

    move-result-object p0

    .line 141
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    invoke-virtual {p1, v0}, Lo/getRef;->ICustomTabsCallback(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 8082
    iget-object v2, p2, Lo/fromException;->ICustomTabsCallback:Lo/getRef;

    invoke-virtual {v2, v0}, Lo/getRef;->ICustomTabsCallback(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 142
    invoke-static {v1, v0}, Lo/createForTests;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static onNavigationEvent(Lo/fromException;)J
    .locals 2

    .line 1074
    iget-object p0, p0, Lo/fromException;->ICustomTabsCallback:Lo/getRef;

    .line 3061
    iget-object p0, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    const-string v0, "Content-Length"

    invoke-static {p0, v0}, Lo/getRef;->onMessageChannelReady([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2073
    invoke-static {p0}, Lo/removeEventRegistration;->ICustomTabsCallback(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static onNavigationEvent(Lo/getRef;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getRef;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lo/hasChildren;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13076
    iget-object v1, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    shl-int/lit8 v4, v3, 0x1

    const/4 v5, 0x0

    if-ltz v4, :cond_1

    .line 13082
    iget-object v6, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v6, v6

    if-lt v4, v6, :cond_0

    goto :goto_1

    .line 13085
    :cond_0
    iget-object v6, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    aget-object v6, v6, v4

    goto :goto_2

    :cond_1
    :goto_1
    move-object v6, v5

    .line 245
    :goto_2
    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v4, v4, 0x1

    if-ltz v4, :cond_3

    .line 13091
    iget-object v6, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v6, v6

    if-lt v4, v6, :cond_2

    goto :goto_3

    .line 13094
    :cond_2
    iget-object v5, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    aget-object v5, v5, v4

    :cond_3
    :goto_3
    const/4 v4, 0x0

    .line 250
    :goto_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_4

    const-string v6, " "

    .line 252
    invoke-static {v5, v4, v6}, Lo/extraCallback;->onMessageChannelReady(Ljava/lang/String;ILjava/lang/String;)I

    move-result v6

    .line 254
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 255
    invoke-static {v5, v6}, Lo/extraCallback;->onMessageChannelReady(Ljava/lang/String;I)I

    move-result v12

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x7

    const-string v9, "realm=\""

    move-object v6, v5

    move v8, v12

    .line 261
    invoke-virtual/range {v6 .. v11}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v12, v12, 0x7

    const-string v6, "\""

    .line 267
    invoke-static {v5, v12, v6}, Lo/extraCallback;->onMessageChannelReady(Ljava/lang/String;ILjava/lang/String;)I

    move-result v6

    .line 268
    invoke-virtual {v5, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    const-string v8, ","

    .line 270
    invoke-static {v5, v6, v8}, Lo/extraCallback;->onMessageChannelReady(Ljava/lang/String;ILjava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 272
    invoke-static {v5, v6}, Lo/extraCallback;->onMessageChannelReady(Ljava/lang/String;I)I

    move-result v6

    .line 273
    new-instance v8, Lo/hasChildren;

    invoke-direct {v8, v4, v7}, Lo/hasChildren;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static onNavigationEvent(Lo/getRef;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getRef;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lo/removeEventRegistration;->onNavigationEvent:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 6076
    iget-object v1, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    shl-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    if-ltz v3, :cond_1

    .line 6082
    iget-object v5, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v5, v5

    if-lt v3, v5, :cond_0

    goto :goto_1

    .line 6085
    :cond_0
    iget-object v5, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    aget-object v5, v5, v3

    goto :goto_2

    :cond_1
    :goto_1
    move-object v5, v4

    :goto_2
    add-int/lit8 v3, v3, 0x1

    if-ltz v3, :cond_3

    .line 6091
    iget-object v6, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v6, v6

    if-lt v3, v6, :cond_2

    goto :goto_3

    .line 6094
    :cond_2
    iget-object v4, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 97
    :cond_3
    :goto_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_4

    .line 100
    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    :cond_4
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static onNavigationEvent(Lo/removeValue;)Lo/getRef;
    .locals 9

    .line 9158
    iget-object v0, p0, Lo/removeValue;->asBinder:Lo/removeValue;

    .line 10075
    iget-object v0, v0, Lo/removeValue;->extraCallback:Lo/fromException;

    .line 11074
    iget-object v0, v0, Lo/fromException;->ICustomTabsCallback:Lo/getRef;

    .line 11126
    iget-object p0, p0, Lo/removeValue;->asInterface:Lo/getRef;

    .line 11205
    invoke-static {p0}, Lo/removeEventRegistration;->onMessageChannelReady(Lo/getRef;)Ljava/util/Set;

    move-result-object p0

    .line 11206
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance p0, Lo/getRef$ICustomTabsCallback;

    invoke-direct {p0}, Lo/getRef$ICustomTabsCallback;-><init>()V

    .line 11312
    new-instance v0, Lo/getRef;

    invoke-direct {v0, p0, v2}, Lo/getRef;-><init>(Lo/getRef$ICustomTabsCallback;B)V

    return-object v0

    .line 11208
    :cond_0
    new-instance v1, Lo/getRef$ICustomTabsCallback;

    invoke-direct {v1}, Lo/getRef$ICustomTabsCallback;-><init>()V

    .line 12076
    iget-object v3, v0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_6

    shl-int/lit8 v5, v4, 0x1

    const/4 v6, 0x0

    if-ltz v5, :cond_2

    .line 12082
    iget-object v7, v0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v7, v7

    if-lt v5, v7, :cond_1

    goto :goto_1

    .line 12085
    :cond_1
    iget-object v7, v0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    aget-object v7, v7, v5

    goto :goto_2

    :cond_2
    :goto_1
    move-object v7, v6

    .line 11211
    :goto_2
    invoke-interface {p0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    add-int/lit8 v5, v5, 0x1

    if-ltz v5, :cond_4

    .line 12091
    iget-object v8, v0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    array-length v8, v8

    if-lt v5, v8, :cond_3

    goto :goto_3

    .line 12094
    :cond_3
    iget-object v6, v0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    aget-object v6, v6, v5

    .line 11212
    :cond_4
    :goto_3
    invoke-virtual {v1, v7, v6}, Lo/getRef$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Lo/getRef$ICustomTabsCallback;

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12312
    :cond_6
    new-instance p0, Lo/getRef;

    invoke-direct {p0, v1, v2}, Lo/getRef;-><init>(Lo/getRef$ICustomTabsCallback;B)V

    return-object p0
.end method

.method public static onPostMessage(Lo/getRef;)J
    .locals 2

    .line 6061
    iget-object p0, p0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    const-string v0, "Content-Length"

    invoke-static {p0, v0}, Lo/getRef;->onMessageChannelReady([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 73
    invoke-static {p0}, Lo/removeEventRegistration;->ICustomTabsCallback(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static onPostMessage(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Connection"

    .line 223
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    .line 224
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    .line 225
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    .line 226
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    .line 227
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    .line 228
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    .line 229
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    .line 230
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
