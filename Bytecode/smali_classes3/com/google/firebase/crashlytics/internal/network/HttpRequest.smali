.class public Lcom/google/firebase/crashlytics/internal/network/HttpRequest;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CLIENT:Lo/propertyName;

.field private static final DEFAULT_TIMEOUT_MS:I = 0x2710


# instance fields
.field private bodyBuilder:Lo/serializedName$onMessageChannelReady;

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final method:Lcom/google/firebase/crashlytics/internal/network/HttpMethod;

.field private final queryParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 43
    new-instance v0, Lo/propertyName;

    invoke-direct {v0}, Lo/propertyName;-><init>()V

    .line 8440
    new-instance v1, Lo/propertyName$onPostMessage;

    invoke-direct {v1, v0}, Lo/propertyName$onPostMessage;-><init>(Lo/propertyName;)V

    .line 45
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "timeout"

    const-wide/16 v3, 0x2710

    .line 8540
    invoke-static {v2, v3, v4, v0}, Lo/generateEventsForType;->onNavigationEvent(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, v1, Lo/propertyName$onPostMessage;->validateRelationship:I

    .line 9040
    new-instance v0, Lo/propertyName;

    invoke-direct {v0, v1}, Lo/propertyName;-><init>(Lo/propertyName$onPostMessage;)V

    .line 47
    sput-object v0, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->CLIENT:Lo/propertyName;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/crashlytics/internal/network/HttpMethod;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/network/HttpMethod;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->bodyBuilder:Lo/serializedName$onMessageChannelReady;

    .line 51
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->method:Lcom/google/firebase/crashlytics/internal/network/HttpMethod;

    .line 52
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->url:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->queryParams:Ljava/util/Map;

    .line 54
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->headers:Ljava/util/Map;

    return-void
.end method

.method private build()Lo/isCompleteForChild;
    .locals 5

    .line 107
    new-instance v0, Lo/isCompleteForChild$ICustomTabsCallback;

    invoke-direct {v0}, Lo/isCompleteForChild$ICustomTabsCallback;-><init>()V

    new-instance v1, Lo/loadOrCreateBeanMapperForClass$onPostMessage;

    invoke-direct {v1}, Lo/loadOrCreateBeanMapperForClass$onPostMessage;-><init>()V

    const/4 v2, 0x1

    .line 3290
    iput-boolean v2, v1, Lo/loadOrCreateBeanMapperForClass$onPostMessage;->onPostMessage:Z

    .line 3370
    new-instance v2, Lo/loadOrCreateBeanMapperForClass;

    invoke-direct {v2, v1}, Lo/loadOrCreateBeanMapperForClass;-><init>(Lo/loadOrCreateBeanMapperForClass$onPostMessage;)V

    .line 4218
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4219
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, "Cache-Control"

    if-eqz v2, :cond_0

    .line 5202
    iget-object v1, v0, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    invoke-virtual {v1, v3}, Lo/shouldIncludeField$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/String;)Lo/shouldIncludeField$onMessageChannelReady;

    goto :goto_0

    .line 6184
    :cond_0
    iget-object v2, v0, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    .line 6383
    invoke-static {v3}, Lo/shouldIncludeField;->extraCallback(Ljava/lang/String;)V

    .line 6384
    invoke-static {v1, v3}, Lo/shouldIncludeField;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 6385
    invoke-virtual {v2, v3}, Lo/shouldIncludeField$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/String;)Lo/shouldIncludeField$onMessageChannelReady;

    .line 7362
    iget-object v4, v2, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7363
    iget-object v2, v2, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->url:Ljava/lang/String;

    invoke-static {v1}, Lo/isFullyInitialized;->onPostMessage(Ljava/lang/String;)Lo/isFullyInitialized;

    move-result-object v1

    invoke-virtual {v1}, Lo/isFullyInitialized;->asBinder()Lo/isFullyInitialized$onNavigationEvent;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->queryParams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 112
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lo/isFullyInitialized$onNavigationEvent;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Lo/isFullyInitialized$onNavigationEvent;

    move-result-object v1

    goto :goto_1

    .line 114
    :cond_1
    invoke-virtual {v1}, Lo/isFullyInitialized$onNavigationEvent;->ICustomTabsCallback()Lo/isFullyInitialized;

    move-result-object v1

    .line 8145
    iput-object v1, v0, Lo/isCompleteForChild$ICustomTabsCallback;->onPostMessage:Lo/isFullyInitialized;

    .line 116
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->headers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 117
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8184
    iget-object v4, v0, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    invoke-virtual {v4, v3, v2}, Lo/shouldIncludeField$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Lo/shouldIncludeField$onMessageChannelReady;

    goto :goto_2

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->bodyBuilder:Lo/serializedName$onMessageChannelReady;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lo/serializedName$onMessageChannelReady;->onNavigationEvent()Lo/serializedName;

    move-result-object v1

    .line 121
    :goto_3
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->method:Lcom/google/firebase/crashlytics/internal/network/HttpMethod;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lo/isCompleteForChild$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/String;Lo/isCompleteForPath;)Lo/isCompleteForChild$ICustomTabsCallback;

    move-result-object v0

    .line 8292
    iget-object v1, v0, Lo/isCompleteForChild$ICustomTabsCallback;->onPostMessage:Lo/isFullyInitialized;

    if-eqz v1, :cond_4

    .line 8293
    new-instance v1, Lo/isCompleteForChild;

    invoke-direct {v1, v0}, Lo/isCompleteForChild;-><init>(Lo/isCompleteForChild$ICustomTabsCallback;)V

    return-object v1

    .line 8292
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getOrCreateBodyBuilder()Lo/serializedName$onMessageChannelReady;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->bodyBuilder:Lo/serializedName$onMessageChannelReady;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lo/serializedName$onMessageChannelReady;

    invoke-direct {v0}, Lo/serializedName$onMessageChannelReady;-><init>()V

    sget-object v1, Lo/serializedName;->onPostMessage:Lo/isFiltered;

    invoke-virtual {v0, v1}, Lo/serializedName$onMessageChannelReady;->extraCallback(Lo/isFiltered;)Lo/serializedName$onMessageChannelReady;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->bodyBuilder:Lo/serializedName$onMessageChannelReady;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->bodyBuilder:Lo/serializedName$onMessageChannelReady;

    return-object v0
.end method


# virtual methods
.method public execute()Lcom/google/firebase/crashlytics/internal/network/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->build()Lo/isCompleteForChild;

    move-result-object v0

    .line 128
    sget-object v1, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->CLIENT:Lo/propertyName;

    const/4 v2, 0x0

    .line 8427
    invoke-static {v1, v0, v2}, Lo/getIndexedNode;->extraCallback(Lo/propertyName;Lo/isCompleteForChild;Z)Lo/getIndexedNode;

    move-result-object v0

    .line 129
    invoke-interface {v0}, Lo/convertInteger;->onPostMessage()Lo/childAddedChange;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->create(Lo/childAddedChange;)Lcom/google/firebase/crashlytics/internal/network/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public header(Ljava/util/Map$Entry;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/crashlytics/internal/network/HttpRequest;"
        }
    .end annotation

    .line 67
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public method()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->method:Lcom/google/firebase/crashlytics/internal/network/HttpMethod;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->getOrCreateBodyBuilder()Lo/serializedName$onMessageChannelReady;

    move-result-object v0

    .line 1323
    invoke-static {p1, p2}, Lo/serializedName$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Lo/serializedName$ICustomTabsCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1334
    iget-object p2, v0, Lo/serializedName$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->bodyBuilder:Lo/serializedName$onMessageChannelReady;

    return-object p0

    .line 1333
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "part == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/google/firebase/crashlytics/internal/network/HttpRequest;
    .locals 0

    .line 83
    invoke-static {p3}, Lo/isFiltered;->ICustomTabsCallback(Ljava/lang/String;)Lo/isFiltered;

    move-result-object p3

    .line 84
    invoke-static {p3, p4}, Lo/isCompleteForPath;->onPostMessage(Lo/isFiltered;Ljava/io/File;)Lo/isCompleteForPath;

    move-result-object p3

    .line 85
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->getOrCreateBodyBuilder()Lo/serializedName$onMessageChannelReady;

    move-result-object p4

    .line 2328
    invoke-static {p1, p2, p3}, Lo/serializedName$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Lo/isCompleteForPath;)Lo/serializedName$ICustomTabsCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2334
    iget-object p2, p4, Lo/serializedName$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/network/HttpRequest;->bodyBuilder:Lo/serializedName$onMessageChannelReady;

    return-object p0

    .line 2333
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "part == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
