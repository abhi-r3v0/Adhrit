.class final Lo/getPredecessorKey$onPostMessage;
.super Lo/getPredecessorKey$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPredecessorKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/getPredecessorKey$ICustomTabsCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/getPredecessorKey$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPredecessorKey$onNavigationEvent<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLo/getPredecessorKey$onNavigationEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lo/getPredecessorKey$onNavigationEvent<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 959
    invoke-direct {p0, p1, p2, p3, v0}, Lo/getPredecessorKey$ICustomTabsCallback;-><init>(Ljava/lang/String;ZLjava/lang/Object;B)V

    const-string p2, "-bin"

    .line 961
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    .line 965
    check-cast p3, Lo/getPredecessorKey$onNavigationEvent;

    iput-object p3, p0, Lo/getPredecessorKey$onPostMessage;->onMessageChannelReady:Lo/getPredecessorKey$onNavigationEvent;

    return-void

    .line 1910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "marshaller"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1444
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    aput-object p2, v1, v2

    const-string p1, "ASCII header is named %s.  Only binary headers may end with %s"

    invoke-static {p1, v1}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLo/getPredecessorKey$onNavigationEvent;B)V
    .locals 0

    const/4 p2, 0x0

    .line 954
    invoke-direct {p0, p1, p2, p3}, Lo/getPredecessorKey$onPostMessage;-><init>(Ljava/lang/String;ZLo/getPredecessorKey$onNavigationEvent;)V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Ljava/lang/Object;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[B"
        }
    .end annotation

    .line 970
    iget-object v0, p0, Lo/getPredecessorKey$onPostMessage;->onMessageChannelReady:Lo/getPredecessorKey$onNavigationEvent;

    invoke-interface {v0, p1}, Lo/getPredecessorKey$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lo/performAutoConfigure;->onMessageChannelReady:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1
.end method

.method final onNavigationEvent([B)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .line 975
    iget-object v0, p0, Lo/getPredecessorKey$onPostMessage;->onMessageChannelReady:Lo/getPredecessorKey$onNavigationEvent;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lo/performAutoConfigure;->onMessageChannelReady:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v0, v1}, Lo/getPredecessorKey$onNavigationEvent;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
