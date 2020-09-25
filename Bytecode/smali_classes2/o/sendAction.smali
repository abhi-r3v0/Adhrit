.class final Lo/sendAction;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ICustomTabsCallback:Lo/getOptExclusiveStart;

.field private static asInterface:Lo/getOptExclusiveStart;

.field private static extraCallback:Lo/getOptExclusiveStart;

.field private static onMessageChannelReady:Lo/getOptExclusiveStart;

.field private static onNavigationEvent:Lo/getOptExclusiveStart;

.field private static onPostMessage:Lo/getOptExclusiveStart;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Lo/getOptExclusiveStart;

    sget-object v1, Lo/getOptExclusiveStart;->onMessageChannelReady:Lo/matches;

    const-string v2, "https"

    invoke-direct {v0, v1, v2}, Lo/getOptExclusiveStart;-><init>(Lo/matches;Ljava/lang/String;)V

    sput-object v0, Lo/sendAction;->onMessageChannelReady:Lo/getOptExclusiveStart;

    .line 38
    new-instance v0, Lo/getOptExclusiveStart;

    sget-object v1, Lo/getOptExclusiveStart;->onMessageChannelReady:Lo/matches;

    const-string v2, "http"

    invoke-direct {v0, v1, v2}, Lo/getOptExclusiveStart;-><init>(Lo/matches;Ljava/lang/String;)V

    sput-object v0, Lo/sendAction;->onPostMessage:Lo/getOptExclusiveStart;

    .line 39
    new-instance v0, Lo/getOptExclusiveStart;

    sget-object v1, Lo/getOptExclusiveStart;->onPostMessage:Lo/matches;

    const-string v2, "POST"

    invoke-direct {v0, v1, v2}, Lo/getOptExclusiveStart;-><init>(Lo/matches;Ljava/lang/String;)V

    sput-object v0, Lo/sendAction;->extraCallback:Lo/getOptExclusiveStart;

    .line 40
    new-instance v0, Lo/getOptExclusiveStart;

    sget-object v1, Lo/getOptExclusiveStart;->onPostMessage:Lo/matches;

    const-string v2, "GET"

    invoke-direct {v0, v1, v2}, Lo/getOptExclusiveStart;-><init>(Lo/matches;Ljava/lang/String;)V

    sput-object v0, Lo/sendAction;->ICustomTabsCallback:Lo/getOptExclusiveStart;

    .line 41
    new-instance v0, Lo/getOptExclusiveStart;

    sget-object v1, Lo/getAuthTokenProvider;->asBinder:Lo/getPredecessorKey$ICustomTabsCallback;

    .line 7766
    iget-object v1, v1, Lo/getPredecessorKey$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    const-string v2, "application/grpc"

    .line 42
    invoke-direct {v0, v1, v2}, Lo/getOptExclusiveStart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/sendAction;->onNavigationEvent:Lo/getOptExclusiveStart;

    .line 43
    new-instance v0, Lo/getOptExclusiveStart;

    const-string v1, "te"

    const-string v2, "trailers"

    invoke-direct {v0, v1, v2}, Lo/getOptExclusiveStart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/sendAction;->asInterface:Lo/getOptExclusiveStart;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMessageChannelReady(Lo/getPredecessorKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getPredecessorKey;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lo/getOptExclusiveStart;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_7

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    .line 62
    sget-object v0, Lo/getAuthTokenProvider;->asBinder:Lo/getPredecessorKey$ICustomTabsCallback;

    invoke-virtual {p0, v0}, Lo/getPredecessorKey;->onPostMessage(Lo/getPredecessorKey$ICustomTabsCallback;)V

    .line 63
    sget-object v0, Lo/getAuthTokenProvider;->ICustomTabsCallback$Stub:Lo/getPredecessorKey$ICustomTabsCallback;

    invoke-virtual {p0, v0}, Lo/getPredecessorKey;->onPostMessage(Lo/getPredecessorKey$ICustomTabsCallback;)V

    .line 64
    sget-object v0, Lo/getAuthTokenProvider;->asInterface:Lo/getPredecessorKey$ICustomTabsCallback;

    invoke-virtual {p0, v0}, Lo/getPredecessorKey;->onPostMessage(Lo/getPredecessorKey$ICustomTabsCallback;)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lo/onNodeValue;->onNavigationEvent(Lo/getPredecessorKey;)I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p5, :cond_0

    .line 71
    sget-object p5, Lo/sendAction;->onPostMessage:Lo/getOptExclusiveStart;

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :cond_0
    sget-object p5, Lo/sendAction;->onMessageChannelReady:Lo/getOptExclusiveStart;

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz p4, :cond_1

    .line 76
    sget-object p4, Lo/sendAction;->ICustomTabsCallback:Lo/getOptExclusiveStart;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 78
    :cond_1
    sget-object p4, Lo/sendAction;->extraCallback:Lo/getOptExclusiveStart;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :goto_1
    new-instance p4, Lo/getOptExclusiveStart;

    sget-object p5, Lo/getOptExclusiveStart;->extraCallback:Lo/matches;

    invoke-direct {p4, p5, p2}, Lo/getOptExclusiveStart;-><init>(Lo/matches;Ljava/lang/String;)V

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance p2, Lo/getOptExclusiveStart;

    sget-object p4, Lo/getOptExclusiveStart;->ICustomTabsCallback:Lo/matches;

    invoke-direct {p2, p4, p1}, Lo/getOptExclusiveStart;-><init>(Lo/matches;Ljava/lang/String;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance p1, Lo/getOptExclusiveStart;

    sget-object p2, Lo/getAuthTokenProvider;->asInterface:Lo/getPredecessorKey$ICustomTabsCallback;

    .line 4766
    iget-object p2, p2, Lo/getPredecessorKey$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    .line 85
    invoke-direct {p1, p2, p3}, Lo/getOptExclusiveStart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object p1, Lo/sendAction;->onNavigationEvent:Lo/getOptExclusiveStart;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object p1, Lo/sendAction;->asInterface:Lo/getOptExclusiveStart;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-static {p0}, Lo/sendAuthAndRestoreState;->extraCallback(Lo/getPredecessorKey;)[[B

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 93
    :goto_2
    array-length p3, p0

    if-ge p2, p3, :cond_4

    .line 94
    aget-object p3, p0, p2

    invoke-static {p3}, Lo/matches;->ICustomTabsCallback([B)Lo/matches;

    move-result-object p3

    .line 95
    invoke-virtual {p3}, Lo/matches;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p4

    const-string p5, ":"

    .line 5111
    invoke-virtual {p4, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_2

    sget-object p5, Lo/getAuthTokenProvider;->asBinder:Lo/getPredecessorKey$ICustomTabsCallback;

    .line 5766
    iget-object p5, p5, Lo/getPredecessorKey$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    .line 5112
    invoke-virtual {p5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_2

    sget-object p5, Lo/getAuthTokenProvider;->asInterface:Lo/getPredecessorKey$ICustomTabsCallback;

    .line 6766
    iget-object p5, p5, Lo/getPredecessorKey$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    .line 5113
    invoke-virtual {p5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_2

    const/4 p4, 0x1

    goto :goto_3

    :cond_2
    const/4 p4, 0x0

    :goto_3
    if-eqz p4, :cond_3

    add-int/lit8 p4, p2, 0x1

    .line 97
    aget-object p4, p0, p4

    invoke-static {p4}, Lo/matches;->ICustomTabsCallback([B)Lo/matches;

    move-result-object p4

    .line 98
    new-instance p5, Lo/getOptExclusiveStart;

    invoke-direct {p5, p3, p4}, Lo/getOptExclusiveStart;-><init>(Lo/matches;Lo/matches;)V

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 p2, p2, 0x2

    goto :goto_2

    :cond_4
    return-object v0

    .line 3910
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "authority"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2910
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "defaultPath"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1910
    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "headers"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
