.class public final Lo/hasAnchoredLimit;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\"\\"

    .line 44
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    const-string v0, "\t ,="

    .line 45
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    return-void
.end method

.method private static ICustomTabsCallback(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    .line 61
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method

.method public static ICustomTabsCallback(Lo/childAddedChange;)Z
    .locals 1

    .line 3136
    iget-object p0, p0, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    .line 4090
    invoke-static {p0}, Lo/hasAnchoredLimit;->extraCallback(Lo/shouldIncludeField;)Ljava/util/Set;

    move-result-object p0

    const-string v0, "*"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static extraCallback(Lo/shouldIncludeField;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/shouldIncludeField;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 5077
    iget-object v1, p0, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 5082
    iget-object v4, p0, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    const-string v6, "Vary"

    .line 103
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5087
    iget-object v4, p0, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    .line 106
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 107
    new-instance v0, Ljava/util/TreeSet;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    :cond_0
    const-string v5, ","

    .line 109
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 110
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static extraCallback(Lo/childAddedChange;)Z
    .locals 8

    .line 10086
    iget-object v0, p0, Lo/childAddedChange;->onMessageChannelReady:Lo/isCompleteForChild;

    .line 11053
    iget-object v0, v0, Lo/isCompleteForChild;->onNavigationEvent:Ljava/lang/String;

    const-string v1, "HEAD"

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 11098
    :cond_0
    iget v0, p0, Lo/childAddedChange;->onNavigationEvent:I

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

    .line 12136
    :cond_2
    iget-object v0, p0, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    .line 13063
    iget-object v0, v0, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    const-string v2, "Content-Length"

    invoke-static {v0, v2}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13055
    invoke-static {v0}, Lo/hasAnchoredLimit;->ICustomTabsCallback(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    .line 13131
    iget-object p0, p0, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    .line 14063
    iget-object p0, p0, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    const-string v0, "Transfer-Encoding"

    invoke-static {p0, v0}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    const-string v0, "chunked"

    .line 338
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

.method public static onMessageChannelReady(Lo/childAddedChange;)Lo/shouldIncludeField;
    .locals 7

    .line 5205
    iget-object v0, p0, Lo/childAddedChange;->ICustomTabsCallback$Stub:Lo/childAddedChange;

    .line 6086
    iget-object v0, v0, Lo/childAddedChange;->onMessageChannelReady:Lo/isCompleteForChild;

    .line 7057
    iget-object v0, v0, Lo/isCompleteForChild;->onPostMessage:Lo/shouldIncludeField;

    .line 7136
    iget-object p0, p0, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    .line 8134
    invoke-static {p0}, Lo/hasAnchoredLimit;->extraCallback(Lo/shouldIncludeField;)Ljava/util/Set;

    move-result-object p0

    .line 8135
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Lo/shouldIncludeField$onMessageChannelReady;

    invoke-direct {p0}, Lo/shouldIncludeField$onMessageChannelReady;-><init>()V

    .line 8401
    new-instance v0, Lo/shouldIncludeField;

    invoke-direct {v0, p0}, Lo/shouldIncludeField;-><init>(Lo/shouldIncludeField$onMessageChannelReady;)V

    return-object v0

    .line 8137
    :cond_0
    new-instance v1, Lo/shouldIncludeField$onMessageChannelReady;

    invoke-direct {v1}, Lo/shouldIncludeField$onMessageChannelReady;-><init>()V

    const/4 v2, 0x0

    .line 9077
    iget-object v3, v0, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    :goto_0
    if-ge v2, v3, :cond_2

    .line 9082
    iget-object v4, v0, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    shl-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    .line 8140
    invoke-interface {p0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 9087
    iget-object v6, v0, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    aget-object v5, v6, v5

    .line 8141
    invoke-virtual {v1, v4, v5}, Lo/shouldIncludeField$onMessageChannelReady;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Lo/shouldIncludeField$onMessageChannelReady;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9401
    :cond_2
    new-instance p0, Lo/shouldIncludeField;

    invoke-direct {p0, v1}, Lo/shouldIncludeField;-><init>(Lo/shouldIncludeField$onMessageChannelReady;)V

    return-object p0
.end method

.method public static onMessageChannelReady(Lo/childAddedChange;Lo/shouldIncludeField;Lo/isCompleteForChild;)Z
    .locals 3

    .line 2136
    iget-object p0, p0, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    .line 2094
    invoke-static {p0}, Lo/hasAnchoredLimit;->extraCallback(Lo/shouldIncludeField;)Ljava/util/Set;

    move-result-object p0

    .line 73
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    invoke-virtual {p1, v0}, Lo/shouldIncludeField;->onNavigationEvent(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 3065
    iget-object v2, p2, Lo/isCompleteForChild;->onPostMessage:Lo/shouldIncludeField;

    invoke-virtual {v2, v0}, Lo/shouldIncludeField;->onNavigationEvent(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 74
    invoke-static {v1, v0}, Lo/generateEventsForType;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static onNavigationEvent(Ljava/lang/String;I)I
    .locals 2

    .line 363
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 364
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public static onNavigationEvent(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2

    .line 350
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 351
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public static onNavigationEvent(Lo/addProperty;Lo/isFullyInitialized;Lo/shouldIncludeField;)V
    .locals 1

    .line 313
    sget-object v0, Lo/addProperty;->onMessageChannelReady:Lo/addProperty;

    if-ne p0, v0, :cond_0

    return-void

    .line 315
    :cond_0
    invoke-static {p1, p2}, Lo/convertBoolean;->onMessageChannelReady(Lo/isFullyInitialized;Lo/shouldIncludeField;)Ljava/util/List;

    move-result-object p0

    .line 316
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_1
    return-void
.end method

.method public static onPostMessage(Ljava/lang/String;I)I
    .locals 3

    .line 378
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    long-to-int p1, p0

    :catch_0
    return p1
.end method

.method public static onPostMessage(Lo/childAddedChange;)J
    .locals 2

    .line 1136
    iget-object p0, p0, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    .line 2063
    iget-object p0, p0, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    const-string v0, "Content-Length"

    invoke-static {p0, v0}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2055
    invoke-static {p0}, Lo/hasAnchoredLimit;->ICustomTabsCallback(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
