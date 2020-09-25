.class public final Lo/getBuffer;
.super Lo/ensureIndexed$onPostMessage;
.source ""


# instance fields
.field private final ICustomTabsCallback:Lo/sessionFile;

.field private final extraCallback:Z

.field private final onMessageChannelReady:Z

.field private final onPostMessage:Z


# direct methods
.method public constructor <init>(Lo/sessionFile;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lo/ensureIndexed$onPostMessage;-><init>()V

    .line 65
    iput-object p1, p0, Lo/getBuffer;->ICustomTabsCallback:Lo/sessionFile;

    const/4 p1, 0x0

    .line 66
    iput-boolean p1, p0, Lo/getBuffer;->onMessageChannelReady:Z

    .line 67
    iput-boolean p1, p0, Lo/getBuffer;->extraCallback:Z

    .line 68
    iput-boolean p1, p0, Lo/getBuffer;->onPostMessage:Z

    return-void
.end method

.method private static onPostMessage([Ljava/lang/annotation/Annotation;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 121
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 122
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lo/SessionFiles$1;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_0

    .line 123
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 124
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 127
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lo/NodeFromJSON;)Lo/ensureIndexed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lo/NodeFromJSON;",
            ")",
            "Lo/ensureIndexed<",
            "*",
            "Lo/isCompleteForPath;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object p3, p0, Lo/getBuffer;->ICustomTabsCallback:Lo/sessionFile;

    invoke-static {p2}, Lo/getBuffer;->onPostMessage([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    move-result-object p2

    const/4 p4, 0x0

    .line 3098
    invoke-virtual {p3, p1, p2, p4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    .line 116
    new-instance p2, Lo/toMessage;

    invoke-direct {p2, p1}, Lo/toMessage;-><init>(Lo/JniNativeApi;)V

    return-object p2
.end method

.method public final onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lo/NodeFromJSON;)Lo/ensureIndexed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lo/NodeFromJSON;",
            ")",
            "Lo/ensureIndexed<",
            "Lo/getChildKey;",
            "*>;"
        }
    .end annotation

    .line 91
    iget-object p3, p0, Lo/getBuffer;->ICustomTabsCallback:Lo/sessionFile;

    invoke-static {p2}, Lo/getBuffer;->onPostMessage([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    move-result-object p2

    const/4 v0, 0x0

    .line 1098
    invoke-virtual {p3, p1, p2, v0}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    .line 101
    new-instance p2, Lo/getIntializer;

    invoke-direct {p2, p1}, Lo/getIntializer;-><init>(Lo/JniNativeApi;)V

    return-object p2
.end method
