.class public final Lo/sessionFile;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/sessionFile$onNavigationEvent;,
        Lo/sessionFile$extraCallback;,
        Lo/sessionFile$onPostMessage;
    }
.end annotation


# static fields
.field private static onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/JniNativeApi$onPostMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lo/sessionFile$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/JniNativeApi$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lo/JniNativeApi<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    sput-object v0, Lo/sessionFile;->onMessageChannelReady:Ljava/util/List;

    sget-object v1, Lo/metadataFile;->ICustomTabsCallback:Lo/JniNativeApi$onPostMessage;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lo/sessionFile;->onMessageChannelReady:Ljava/util/List;

    sget-object v1, Lo/NativeComponentController;->onMessageChannelReady:Lo/JniNativeApi$onPostMessage;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lo/sessionFile;->onMessageChannelReady:Ljava/util/List;

    sget-object v1, Lo/appFile;->onPostMessage:Lo/JniNativeApi$onPostMessage;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lo/sessionFile;->onMessageChannelReady:Ljava/util/List;

    sget-object v1, Lo/buildCrashlyticsNdk;->onPostMessage:Lo/JniNativeApi$onPostMessage;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lo/sessionFile;->onMessageChannelReady:Ljava/util/List;

    sget-object v1, Lo/deleteSessionFilesDirectory;->onNavigationEvent:Lo/JniNativeApi$onPostMessage;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lo/sessionFile$onPostMessage;)V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lo/sessionFile;->ICustomTabsCallback:Ljava/lang/ThreadLocal;

    .line 56
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lo/sessionFile;->onNavigationEvent:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lo/sessionFile$onPostMessage;->onPostMessage:Ljava/util/List;

    .line 60
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget-object v2, Lo/sessionFile;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    iget-object p1, p1, Lo/sessionFile$onPostMessage;->onPostMessage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    sget-object p1, Lo/sessionFile;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/sessionFile;->extraCallback:Ljava/util/List;

    return-void
.end method

.method static synthetic extraCallback(Lo/sessionFile;)Ljava/lang/ThreadLocal;
    .locals 0

    .line 43
    iget-object p0, p0, Lo/sessionFile;->ICustomTabsCallback:Ljava/lang/ThreadLocal;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/sessionFile;)Ljava/util/Map;
    .locals 0

    .line 43
    iget-object p0, p0, Lo/sessionFile;->onNavigationEvent:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lo/JniNativeApi<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_7

    if-eqz p2, :cond_6

    .line 116
    invoke-static {p1}, Lo/serializeBeginSession;->onMessageChannelReady(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 1186
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    .line 1187
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 120
    :goto_0
    iget-object v3, p0, Lo/sessionFile;->onNavigationEvent:Ljava/util/Map;

    monitor-enter v3

    .line 121
    :try_start_0
    iget-object v4, p0, Lo/sessionFile;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/JniNativeApi;

    if-eqz v4, :cond_1

    .line 122
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-object v4

    .line 123
    :cond_1
    monitor-exit v3

    .line 125
    iget-object v3, p0, Lo/sessionFile;->ICustomTabsCallback:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/sessionFile$extraCallback;

    if-nez v3, :cond_2

    .line 127
    new-instance v3, Lo/sessionFile$extraCallback;

    invoke-direct {v3, p0}, Lo/sessionFile$extraCallback;-><init>(Lo/sessionFile;)V

    .line 128
    iget-object v4, p0, Lo/sessionFile;->ICustomTabsCallback:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 132
    :cond_2
    invoke-virtual {v3, p1, p3, v0}, Lo/sessionFile$extraCallback;->extraCallback(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/Object;)Lo/JniNativeApi;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 152
    invoke-virtual {v3, v2}, Lo/sessionFile$extraCallback;->onNavigationEvent(Z)V

    return-object p3

    .line 137
    :cond_3
    :try_start_1
    iget-object p3, p0, Lo/sessionFile;->extraCallback:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_5

    .line 138
    iget-object v4, p0, Lo/sessionFile;->extraCallback:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/JniNativeApi$onPostMessage;

    invoke-interface {v4, p1, p2, p0}, Lo/JniNativeApi$onPostMessage;->ICustomTabsCallback(Ljava/lang/reflect/Type;Ljava/util/Set;Lo/sessionFile;)Lo/JniNativeApi;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1299
    iget-object p1, v3, Lo/sessionFile$extraCallback;->onNavigationEvent:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/sessionFile$onNavigationEvent;

    .line 1300
    iput-object v4, p1, Lo/sessionFile$onNavigationEvent;->onMessageChannelReady:Lo/JniNativeApi;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    invoke-virtual {v3, v1}, Lo/sessionFile$extraCallback;->onNavigationEvent(Z)V

    return-object v4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 147
    :cond_5
    :try_start_2
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No JsonAdapter for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-static {p1, p2}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/reflect/Type;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 150
    :try_start_3
    invoke-virtual {v3, p1}, Lo/sessionFile$extraCallback;->ICustomTabsCallback(Ljava/lang/IllegalArgumentException;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    :goto_2
    invoke-virtual {v3, v2}, Lo/sessionFile$extraCallback;->onNavigationEvent(Z)V

    throw p1

    :catchall_1
    move-exception p1

    .line 123
    monitor-exit v3

    throw p1

    .line 113
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "annotations == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onMessageChannelReady(Lo/JniNativeApi$onPostMessage;Ljava/lang/reflect/Type;Ljava/util/Set;)Lo/JniNativeApi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/JniNativeApi$onPostMessage;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lo/JniNativeApi<",
            "TT;>;"
        }
    .end annotation

    if-eqz p3, :cond_3

    .line 162
    invoke-static {p2}, Lo/serializeBeginSession;->onMessageChannelReady(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-static {p2}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 164
    iget-object v0, p0, Lo/sessionFile;->extraCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 168
    iget-object p1, p0, Lo/sessionFile;->extraCallback:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_1

    .line 169
    iget-object v1, p0, Lo/sessionFile;->extraCallback:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/JniNativeApi$onPostMessage;

    invoke-interface {v1, p2, p3, p0}, Lo/JniNativeApi$onPostMessage;->ICustomTabsCallback(Ljava/lang/reflect/Type;Ljava/util/Set;Lo/sessionFile;)Lo/JniNativeApi;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No next JsonAdapter for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-static {p2, p3}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/reflect/Type;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 166
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Unable to skip past unknown factory "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 160
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "annotations == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
