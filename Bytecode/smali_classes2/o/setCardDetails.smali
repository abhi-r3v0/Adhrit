.class public Lo/setCardDetails;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static ICustomTabsCallback:Lo/setCardDetails;

.field private static final onMessageChannelReady:Lo/DiffUtil$onPostMessage;


# instance fields
.field private onPostMessage:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lo/DiffUtil$onPostMessage;

    const-string v1, "LibraryVersion"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lo/DiffUtil$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/setCardDetails;->onMessageChannelReady:Lo/DiffUtil$onPostMessage;

    .line 26
    new-instance v0, Lo/setCardDetails;

    invoke-direct {v0}, Lo/setCardDetails;-><init>()V

    sput-object v0, Lo/setCardDetails;->ICustomTabsCallback:Lo/setCardDetails;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lo/setCardDetails;->onPostMessage:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "Failed to get app version for libraryName: "

    const-string v1, "LibraryVersion"

    .line 1007
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 6
    iget-object v2, p0, Lo/setCardDetails;->onPostMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    iget-object v0, p0, Lo/setCardDetails;->onPostMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 9
    :cond_0
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "/%s.properties"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 10
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 11
    const-class v5, Lo/setCardDetails;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 13
    invoke-virtual {v2, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v4, "version"

    .line 14
    invoke-virtual {v2, v4, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 15
    sget-object v2, Lo/setCardDetails;->onMessageChannelReady:Lo/DiffUtil$onPostMessage;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xc

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " version is "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 2014
    iget-object v6, v2, Lo/DiffUtil$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2062
    iget-object v5, v2, Lo/DiffUtil$onPostMessage;->extraCallback:Ljava/lang/String;

    if-nez v5, :cond_1

    goto :goto_0

    .line 2064
    :cond_1
    iget-object v2, v2, Lo/DiffUtil$onPostMessage;->extraCallback:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1023
    :goto_0
    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 16
    :cond_2
    sget-object v2, Lo/setCardDetails;->onMessageChannelReady:Lo/DiffUtil$onPostMessage;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const/4 v5, 0x5

    .line 4014
    iget-object v6, v2, Lo/DiffUtil$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4062
    iget-object v5, v2, Lo/DiffUtil$onPostMessage;->extraCallback:Ljava/lang/String;

    if-nez v5, :cond_4

    goto :goto_2

    .line 4064
    :cond_4
    iget-object v2, v2, Lo/DiffUtil$onPostMessage;->extraCallback:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3035
    :goto_2
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v2

    .line 19
    sget-object v4, Lo/setCardDetails;->onMessageChannelReady:Lo/DiffUtil$onPostMessage;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    :goto_3
    const/4 v5, 0x6

    .line 6014
    iget-object v6, v4, Lo/DiffUtil$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 6062
    iget-object v5, v4, Lo/DiffUtil$onPostMessage;->extraCallback:Ljava/lang/String;

    if-nez v5, :cond_6

    goto :goto_4

    .line 6064
    :cond_6
    iget-object v4, v4, Lo/DiffUtil$onPostMessage;->extraCallback:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5047
    :goto_4
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_5
    if-nez v3, :cond_a

    .line 22
    sget-object v0, Lo/setCardDetails;->onMessageChannelReady:Lo/DiffUtil$onPostMessage;

    const-string v2, ".properties file is dropped during release process. Failure to read app version is expected during Google internal testing where locally-built libraries are used"

    const/4 v3, 0x3

    .line 8014
    iget-object v4, v0, Lo/DiffUtil$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 8062
    iget-object v3, v0, Lo/DiffUtil$onPostMessage;->extraCallback:Ljava/lang/String;

    if-nez v3, :cond_8

    goto :goto_6

    .line 8064
    :cond_8
    iget-object v0, v0, Lo/DiffUtil$onPostMessage;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7017
    :goto_6
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string v3, "UNKNOWN"

    .line 23
    :cond_a
    iget-object v0, p0, Lo/setCardDetails;->onPostMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    .line 1008
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please provide a valid libraryName"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
