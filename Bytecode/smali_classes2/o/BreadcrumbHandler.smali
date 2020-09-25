.class public abstract Lo/BreadcrumbHandler;
.super Lo/BreadcrumbAnalyticsEventReceiver;
.source ""

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/BreadcrumbHandler$onPostMessage;,
        Lo/BreadcrumbHandler$extraCallback;,
        Lo/BreadcrumbHandler$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lo/BreadcrumbAnalyticsEventReceiver<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:Lo/handleBreadcrumb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/handleBreadcrumb<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 372
    new-instance v0, Lo/BreadcrumbHandler$ICustomTabsCallback;

    sget-object v1, Lo/getHttpRequest;->onNavigationEvent:Lo/BreadcrumbHandler;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/BreadcrumbHandler$ICustomTabsCallback;-><init>(Lo/BreadcrumbHandler;I)V

    sput-object v0, Lo/BreadcrumbHandler;->onMessageChannelReady:Lo/handleBreadcrumb;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 346
    invoke-direct {p0}, Lo/BreadcrumbAnalyticsEventReceiver;-><init>()V

    return-void
.end method

.method static ICustomTabsCallback([Ljava/lang/Object;I)Lo/BreadcrumbHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)",
            "Lo/BreadcrumbHandler<",
            "TE;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 8067
    sget-object p0, Lo/getHttpRequest;->onNavigationEvent:Lo/BreadcrumbHandler;

    return-object p0

    .line 343
    :cond_0
    new-instance v0, Lo/getHttpRequest;

    invoke-direct {v0, p0, p1}, Lo/getHttpRequest;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static asInterface()Lo/BreadcrumbHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/BreadcrumbHandler<",
            "TE;>;"
        }
    .end annotation

    .line 67
    sget-object v0, Lo/getHttpRequest;->onNavigationEvent:Lo/BreadcrumbHandler;

    return-object v0
.end method

.method static extraCallback([Ljava/lang/Object;)Lo/BreadcrumbHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lo/BreadcrumbHandler<",
            "TE;>;"
        }
    .end annotation

    .line 335
    array-length v0, p0

    if-nez v0, :cond_0

    .line 7067
    sget-object p0, Lo/getHttpRequest;->onNavigationEvent:Lo/BreadcrumbHandler;

    return-object p0

    .line 6343
    :cond_0
    new-instance v1, Lo/getHttpRequest;

    invoke-direct {v1, p0, v0}, Lo/getHttpRequest;-><init>([Ljava/lang/Object;I)V

    return-object v1
.end method

.method public static onMessageChannelReady(Ljava/lang/Object;)Lo/BreadcrumbHandler;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lo/BreadcrumbHandler<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    :goto_0
    if-gtz p0, :cond_1

    .line 2215
    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 2225
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "at index "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2343
    :cond_1
    new-instance p0, Lo/getHttpRequest;

    invoke-direct {p0, v1, v0}, Lo/getHttpRequest;-><init>([Ljava/lang/Object;I)V

    return-object p0
.end method

.method public static onNavigationEvent([Ljava/lang/Object;)Lo/BreadcrumbHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lo/BreadcrumbHandler<",
            "TE;>;"
        }
    .end annotation

    .line 271
    array-length v0, p0

    if-nez v0, :cond_0

    .line 4067
    sget-object p0, Lo/getHttpRequest;->onNavigationEvent:Lo/BreadcrumbHandler;

    return-object p0

    .line 273
    :cond_0
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 5209
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 5215
    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5225
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "at index "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5335
    :cond_2
    array-length v0, p0

    if-nez v0, :cond_3

    .line 6067
    sget-object p0, Lo/getHttpRequest;->onNavigationEvent:Lo/BreadcrumbHandler;

    return-object p0

    .line 5343
    :cond_3
    new-instance v1, Lo/getHttpRequest;

    invoke-direct {v1, p0, v0}, Lo/getHttpRequest;-><init>([Ljava/lang/Object;I)V

    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 658
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Use SerializedForm"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 514
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 489
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final asBinder()Lo/handleBreadcrumb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/handleBreadcrumb<",
            "TE;>;"
        }
    .end annotation

    .line 9363
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady(II)I

    .line 9364
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9365
    sget-object v0, Lo/BreadcrumbHandler;->onMessageChannelReady:Lo/handleBreadcrumb;

    return-object v0

    .line 9367
    :cond_0
    new-instance v0, Lo/BreadcrumbHandler$ICustomTabsCallback;

    invoke-direct {v0, p0, v1}, Lo/BreadcrumbHandler$ICustomTabsCallback;-><init>(Lo/BreadcrumbHandler;I)V

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 401
    invoke-virtual {p0, p1}, Lo/BreadcrumbHandler;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 10954
    :cond_0
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 10957
    check-cast p1, Ljava/util/List;

    .line 10958
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 10959
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v1, v3, :cond_8

    .line 10962
    instance-of v3, p1, Ljava/util/RandomAccess;

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 10965
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eq v4, v5, :cond_2

    if-eqz v4, :cond_1

    .line 12052
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v0

    .line 10971
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 12263
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 12264
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 12267
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 12268
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_6

    if-eqz v3, :cond_5

    .line 13052
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v3, 0x1

    :goto_5
    if-eqz v3, :cond_8

    goto :goto_3

    .line 12273
    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_8

    return v0

    :cond_8
    return v2
.end method

.method extraCallback([Ljava/lang/Object;I)I
    .locals 2

    .line 543
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 545
    invoke-virtual {p0, v0}, Lo/BreadcrumbHandler;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method public hashCode()I
    .locals 4

    .line 629
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 631
    invoke-virtual {p0, v2}, Lo/BreadcrumbHandler;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    not-int v1, v1

    not-int v1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3

    if-eqz p1, :cond_3

    .line 10002
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :goto_0
    if-ge v1, v0, :cond_3

    .line 10005
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, v0, :cond_3

    .line 10011
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lo/BreadcrumbAnalyticsEventReceiver;->onMessageChannelReady()Lo/DisabledBreadcrumbSource;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    if-eqz p1, :cond_3

    if-nez p1, :cond_1

    .line 10036
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_3

    .line 10037
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 10042
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 10043
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .locals 2

    .line 14363
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady(II)I

    .line 14364
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14365
    sget-object v0, Lo/BreadcrumbHandler;->onMessageChannelReady:Lo/handleBreadcrumb;

    return-object v0

    .line 14367
    :cond_0
    new-instance v0, Lo/BreadcrumbHandler$ICustomTabsCallback;

    invoke-direct {v0, p0, v1}, Lo/BreadcrumbHandler$ICustomTabsCallback;-><init>(Lo/BreadcrumbHandler;I)V

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 13363
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-static {p1, v0}, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady(II)I

    .line 13364
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13365
    sget-object p1, Lo/BreadcrumbHandler;->onMessageChannelReady:Lo/handleBreadcrumb;

    return-object p1

    .line 13367
    :cond_0
    new-instance v0, Lo/BreadcrumbHandler$ICustomTabsCallback;

    invoke-direct {v0, p0, p1}, Lo/BreadcrumbHandler$ICustomTabsCallback;-><init>(Lo/BreadcrumbHandler;I)V

    return-object v0
.end method

.method public final onMessageChannelReady()Lo/DisabledBreadcrumbSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/DisabledBreadcrumbSource<",
            "TE;>;"
        }
    .end annotation

    .line 8363
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady(II)I

    .line 8364
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8365
    sget-object v0, Lo/BreadcrumbHandler;->onMessageChannelReady:Lo/handleBreadcrumb;

    return-object v0

    .line 8367
    :cond_0
    new-instance v0, Lo/BreadcrumbHandler$ICustomTabsCallback;

    invoke-direct {v0, p0, v1}, Lo/BreadcrumbHandler$ICustomTabsCallback;-><init>(Lo/BreadcrumbHandler;I)V

    return-object v0
.end method

.method public final onPostMessage()Lo/BreadcrumbHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/BreadcrumbHandler<",
            "TE;>;"
        }
    .end annotation

    return-object p0
.end method

.method public onPostMessage(II)Lo/BreadcrumbHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lo/BreadcrumbHandler<",
            "TE;>;"
        }
    .end annotation

    .line 413
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lo/extraCallback$onMessageChannelReady;->extraCallback(III)V

    sub-int/2addr p2, p1

    .line 415
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 10067
    sget-object p1, Lo/getHttpRequest;->onNavigationEvent:Lo/BreadcrumbHandler;

    return-object p1

    .line 10429
    :cond_1
    new-instance v0, Lo/BreadcrumbHandler$extraCallback;

    invoke-direct {v0, p0, p1, p2}, Lo/BreadcrumbHandler$extraCallback;-><init>(Lo/BreadcrumbHandler;II)V

    return-object v0
.end method

.method public final onPostMessage(I)Lo/handleBreadcrumb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/handleBreadcrumb<",
            "TE;>;"
        }
    .end annotation

    .line 363
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-static {p1, v0}, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady(II)I

    .line 364
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    sget-object p1, Lo/BreadcrumbHandler;->onMessageChannelReady:Lo/handleBreadcrumb;

    return-object p1

    .line 367
    :cond_0
    new-instance v0, Lo/BreadcrumbHandler$ICustomTabsCallback;

    invoke-direct {v0, p0, p1}, Lo/BreadcrumbHandler$ICustomTabsCallback;-><init>(Lo/BreadcrumbHandler;I)V

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 527
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 502
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 55
    invoke-virtual {p0, p1, p2}, Lo/BreadcrumbHandler;->onPostMessage(II)Lo/BreadcrumbHandler;

    move-result-object p1

    return-object p1
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 663
    new-instance v0, Lo/BreadcrumbHandler$onPostMessage;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/BreadcrumbHandler$onPostMessage;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
