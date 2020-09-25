.class Lo/BackgroundJsonAdapter;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onMessageChannelReady:Lo/BackgroundJsonAdapter;


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final extraCallback:Ljava/lang/Throwable;

.field final onPostMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lo/BackgroundJsonAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v1}, Lo/BackgroundJsonAdapter;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    sput-object v0, Lo/BackgroundJsonAdapter;->onMessageChannelReady:Lo/BackgroundJsonAdapter;

    return-void
.end method

.method constructor <init>(ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lo/BackgroundJsonAdapter;->onPostMessage:Z

    .line 3
    iput-object p2, p0, Lo/BackgroundJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lo/BackgroundJsonAdapter;->extraCallback:Ljava/lang/Throwable;

    return-void
.end method

.method static ICustomTabsCallback(Ljava/lang/String;Lo/setDragState;ZZ)Ljava/lang/String;
    .locals 2

    if-eqz p3, :cond_0

    const-string p3, "debug cert rejected"

    goto :goto_0

    :cond_0
    const-string p3, "not whitelisted"

    :goto_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 p3, 0x1

    aput-object p0, v0, p3

    const/4 p0, 0x2

    const-string p3, "SHA-1"

    .line 20
    invoke-static {p3}, Lo/getStoreAssociationHeader;->onPostMessage(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p3

    invoke-virtual {p1}, Lo/setDragState;->extraCallback()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 21
    invoke-static {p1}, Lo/preferLastSpan;->extraCallback([B)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x3

    .line 23
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x4

    const-string p1, "12451009.false"

    aput-object p1, v0, p0

    const-string p0, "%s: pkg=%s, sha1=%s, atk=%s, ver=%s"

    .line 24
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)Lo/BackgroundJsonAdapter;
    .locals 2

    .line 9
    new-instance v0, Lo/BackgroundJsonAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lo/BackgroundJsonAdapter;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static onPostMessage()Lo/BackgroundJsonAdapter;
    .locals 1

    .line 6
    sget-object v0, Lo/BackgroundJsonAdapter;->onMessageChannelReady:Lo/BackgroundJsonAdapter;

    return-object v0
.end method

.method static onPostMessage(Ljava/lang/String;)Lo/BackgroundJsonAdapter;
    .locals 3

    .line 8
    new-instance v0, Lo/BackgroundJsonAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lo/BackgroundJsonAdapter;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static onPostMessage(Ljava/util/concurrent/Callable;)Lo/BackgroundJsonAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/String;",
            ">;)",
            "Lo/BackgroundJsonAdapter;"
        }
    .end annotation

    .line 7
    new-instance v0, Lo/getHappyFlow;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/getHappyFlow;-><init>(Ljava/util/concurrent/Callable;Lo/GetRatingResponse;)V

    return-object v0
.end method


# virtual methods
.method extraCallback()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lo/BackgroundJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method

.method final onNavigationEvent()V
    .locals 3

    .line 11
    iget-boolean v0, p0, Lo/BackgroundJsonAdapter;->onPostMessage:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    const-string v1, "GoogleCertificatesRslt"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lo/BackgroundJsonAdapter;->extraCallback:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p0}, Lo/BackgroundJsonAdapter;->extraCallback()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lo/BackgroundJsonAdapter;->extraCallback:Ljava/lang/Throwable;

    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Lo/BackgroundJsonAdapter;->extraCallback()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
