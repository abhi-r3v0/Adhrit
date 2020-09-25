.class public abstract Lo/visitEntry;
.super Lo/getSuccessorKey;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lo/getSuccessorKey;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract extraCallback()Z
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "dns"

    return-object v0
.end method

.method public final synthetic onNavigationEvent(Ljava/net/URI;Lo/reverseIteratorFrom$onMessageChannelReady;)Lo/reverseIteratorFrom;
    .locals 10

    .line 1043
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dns"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1044
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/String;

    const-string v1, "/"

    .line 1045
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1047
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1048
    new-instance v0, Lo/onHandshake;

    .line 1049
    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    sget-object v6, Lo/getAuthTokenProvider;->ICustomTabsService:Lo/onDataPush$onNavigationEvent;

    .line 3093
    new-instance v7, Lo/Onboarding$3;

    invoke-direct {v7}, Lo/Onboarding$3;-><init>()V

    .line 1054
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 4070
    invoke-static {p1}, Lo/translate;->onPostMessage(Ljava/lang/ClassLoader;)Z

    move-result v8

    .line 1055
    invoke-virtual {p0}, Lo/visitEntry;->extraCallback()Z

    move-result v9

    move-object v3, v0

    move-object v5, p2

    invoke-direct/range {v3 .. v9}, Lo/onHandshake;-><init>(Ljava/lang/String;Lo/reverseIteratorFrom$onMessageChannelReady;Lo/onDataPush$onNavigationEvent;Lo/Onboarding$3;ZZ)V

    return-object v0

    .line 2444
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    aput-object p1, v1, v2

    const-string p1, "the path component (%s) of the target (%s) must start with \'/\'"

    invoke-static {p1, v1}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "targetPath"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
