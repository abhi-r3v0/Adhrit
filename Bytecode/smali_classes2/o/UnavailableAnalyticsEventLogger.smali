.class public abstract Lo/UnavailableAnalyticsEventLogger;
.super Lo/BreadcrumbAnalyticsEventReceiver;
.source ""

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/UnavailableAnalyticsEventLogger$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lo/BreadcrumbAnalyticsEventReceiver<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private transient onPostMessage:Lo/BreadcrumbHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BreadcrumbHandler<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 310
    invoke-direct {p0}, Lo/BreadcrumbAnalyticsEventReceiver;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lo/UnavailableAnalyticsEventLogger;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Lo/UnavailableAnalyticsEventLogger<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    .line 82
    invoke-static {v0, v1}, Lo/UnavailableAnalyticsEventLogger;->onNavigationEvent(I[Ljava/lang/Object;)Lo/UnavailableAnalyticsEventLogger;

    move-result-object p0

    return-object p0
.end method

.method public static extraCallback([Ljava/lang/Object;)Lo/UnavailableAnalyticsEventLogger;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lo/UnavailableAnalyticsEventLogger<",
            "TE;>;"
        }
    .end annotation

    .line 300
    array-length v0, p0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 306
    array-length v0, p0

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {v0, p0}, Lo/UnavailableAnalyticsEventLogger;->onNavigationEvent(I[Ljava/lang/Object;)Lo/UnavailableAnalyticsEventLogger;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 304
    aget-object p0, p0, v0

    .line 5064
    new-instance v0, Lo/BreadcrumbSource;

    invoke-direct {v0, p0}, Lo/BreadcrumbSource;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 5055
    :cond_1
    sget-object p0, Lo/AbstractSpiCall;->extraCallback:Lo/AbstractSpiCall;

    return-object p0
.end method

.method private static onMessageChannelReady(I)I
    .locals 6

    const/4 v0, 0x2

    .line 210
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, 0x1

    const v1, 0x2ccccccc

    if-ge p0, v1, :cond_1

    add-int/lit8 v1, p0, -0x1

    .line 214
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    :goto_0
    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double v1, v1, v3

    int-to-double v3, p0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/high16 v1, 0x40000000    # 2.0f

    if-ge p0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    return v1

    .line 4142
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "collection too large"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static varargs onNavigationEvent(I[Ljava/lang/Object;)Lo/UnavailableAnalyticsEventLogger;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lo/UnavailableAnalyticsEventLogger<",
            "TE;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p0

    :goto_0
    if-eqz v1, :cond_9

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_8

    .line 152
    invoke-static {v1}, Lo/UnavailableAnalyticsEventLogger;->onMessageChannelReady(I)I

    move-result v4

    .line 153
    new-array v8, v4, [Ljava/lang/Object;

    add-int/lit8 v9, v4, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v5, v1, :cond_3

    .line 158
    aget-object v6, v0, v5

    if-eqz v6, :cond_2

    .line 159
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v11

    const-wide/32 v12, 0x1b873593

    int-to-long v14, v11

    const-wide/32 v16, -0x3361d2af

    mul-long v14, v14, v16

    long-to-int v15, v14

    const/16 v14, 0xf

    .line 3050
    invoke-static {v15, v14}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v14

    int-to-long v14, v14

    mul-long v14, v14, v12

    long-to-int v12, v14

    :goto_2
    and-int v13, v12, v9

    .line 162
    aget-object v14, v8, v13

    if-nez v14, :cond_0

    add-int/lit8 v12, v10, 0x1

    .line 165
    aput-object v6, v0, v10

    .line 166
    aput-object v6, v8, v13

    add-int/2addr v7, v11

    move v10, v12

    goto :goto_3

    .line 169
    :cond_0
    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_1
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2225
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "at index "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v5, 0x0

    .line 174
    invoke-static {v0, v10, v1, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    if-ne v10, v3, :cond_4

    .line 178
    aget-object v0, v0, v2

    .line 179
    new-instance v1, Lo/BreadcrumbSource;

    invoke-direct {v1, v0, v7}, Lo/BreadcrumbSource;-><init>(Ljava/lang/Object;I)V

    return-object v1

    .line 180
    :cond_4
    invoke-static {v10}, Lo/UnavailableAnalyticsEventLogger;->onMessageChannelReady(I)I

    move-result v1

    div-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_5

    move v1, v10

    goto :goto_0

    .line 184
    :cond_5
    array-length v1, v0

    shr-int/lit8 v4, v1, 0x1

    shr-int/lit8 v1, v1, 0x2

    add-int/2addr v4, v1

    if-ge v10, v4, :cond_6

    const/4 v2, 0x1

    :cond_6
    if-eqz v2, :cond_7

    .line 185
    invoke-static {v0, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :cond_7
    move-object v6, v0

    .line 186
    new-instance v0, Lo/AbstractSpiCall;

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lo/AbstractSpiCall;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    return-object v0

    .line 147
    :cond_8
    aget-object v0, v0, v2

    .line 2064
    new-instance v1, Lo/BreadcrumbSource;

    invoke-direct {v1, v0}, Lo/BreadcrumbSource;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 2055
    :cond_9
    sget-object v0, Lo/AbstractSpiCall;->extraCallback:Lo/AbstractSpiCall;

    return-object v0
.end method

.method public static onPostMessage(Ljava/util/Collection;)Lo/UnavailableAnalyticsEventLogger;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lo/UnavailableAnalyticsEventLogger<",
            "TE;>;"
        }
    .end annotation

    .line 244
    instance-of v0, p0, Lo/UnavailableAnalyticsEventLogger;

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/util/SortedSet;

    if-nez v0, :cond_0

    .line 246
    move-object v0, p0

    check-cast v0, Lo/UnavailableAnalyticsEventLogger;

    .line 247
    invoke-virtual {v0}, Lo/UnavailableAnalyticsEventLogger;->onRelationshipValidationResult()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 251
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 252
    array-length v0, p0

    invoke-static {v0, p0}, Lo/UnavailableAnalyticsEventLogger;->onNavigationEvent(I[Ljava/lang/Object;)Lo/UnavailableAnalyticsEventLogger;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method asBinder()Lo/BreadcrumbHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/BreadcrumbHandler<",
            "TE;>;"
        }
    .end annotation

    .line 349
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lo/BreadcrumbHandler;->extraCallback([Ljava/lang/Object;)Lo/BreadcrumbHandler;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 321
    :cond_0
    instance-of v0, p1, Lo/UnavailableAnalyticsEventLogger;

    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {p0}, Lo/UnavailableAnalyticsEventLogger;->onTransact()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lo/UnavailableAnalyticsEventLogger;

    .line 323
    invoke-virtual {v0}, Lo/UnavailableAnalyticsEventLogger;->onTransact()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 327
    :cond_1
    invoke-static {p0, p1}, Lo/extraCallback;->onPostMessage(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 4

    .line 5634
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5635
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v2, v3

    not-int v2, v2

    not-int v2, v2

    goto :goto_0

    :cond_1
    return v2
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lo/BreadcrumbAnalyticsEventReceiver;->onMessageChannelReady()Lo/DisabledBreadcrumbSource;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage()Lo/BreadcrumbHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/BreadcrumbHandler<",
            "TE;>;"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lo/UnavailableAnalyticsEventLogger;->onPostMessage:Lo/BreadcrumbHandler;

    if-nez v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lo/UnavailableAnalyticsEventLogger;->asBinder()Lo/BreadcrumbHandler;

    move-result-object v0

    iput-object v0, p0, Lo/UnavailableAnalyticsEventLogger;->onPostMessage:Lo/BreadcrumbHandler;

    :cond_0
    return-object v0
.end method

.method onTransact()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 375
    new-instance v0, Lo/UnavailableAnalyticsEventLogger$extraCallback;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/UnavailableAnalyticsEventLogger$extraCallback;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
