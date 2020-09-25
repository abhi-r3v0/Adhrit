.class public final Lo/Registry$NoModelLoaderAvailableException;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getSessionId;


# static fields
.field private static final ICustomTabsCallback:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "(.+?)=\'(.*?)\';"

    const/16 v1, 0x20

    .line 34
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/Registry$NoModelLoaderAvailableException;->ICustomTabsCallback:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Ljava/lang/String;)Lo/callAPI;
    .locals 10

    .line 54
    sget-object v0, Lo/Registry$NoModelLoaderAvailableException;->ICustomTabsCallback:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v1

    move-object v4, v3

    const/4 v2, 0x0

    .line 55
    :goto_0
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    .line 56
    invoke-virtual {p1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    .line 57
    invoke-virtual {p1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    .line 58
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v8

    const v9, -0x12cfba11

    if-eq v8, v9, :cond_1

    const v9, 0x622482d8

    if-eq v8, v9, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v8, "streamtitle"

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    const-string/jumbo v8, "streamurl"

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v7, 0x1

    :cond_2
    :goto_1
    if-eqz v7, :cond_4

    if-eq v7, v5, :cond_3

    .line 66
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "Unrecognized ICY tag: "

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "IcyDecoder"

    invoke-static {v5, v2}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v4, v6

    goto :goto_2

    :cond_4
    move-object v3, v6

    .line 69
    :goto_2
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    goto :goto_0

    :cond_5
    if-nez v3, :cond_7

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    return-object v1

    .line 71
    :cond_7
    :goto_3
    new-instance p1, Lo/callAPI;

    new-array v1, v5, [Lo/callAPI$onPostMessage;

    new-instance v2, Lo/GeneratedAppGlideModuleImpl;

    invoke-direct {v2, v3, v4}, Lo/GeneratedAppGlideModuleImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    invoke-direct {p1, v1}, Lo/callAPI;-><init>([Lo/callAPI$onPostMessage;)V

    return-object p1
.end method

.method public final ICustomTabsCallback(Lo/UPIJSInterface$2;)Lo/callAPI;
    .locals 2

    .line 42
    iget-object p1, p1, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    .line 43
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    const/4 v1, 0x0

    .line 45
    invoke-static {v0, v1, p1}, Lo/ThirdPartyAuthorizeRequest;->onPostMessage([BII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/Registry$NoModelLoaderAvailableException;->ICustomTabsCallback(Ljava/lang/String;)Lo/callAPI;

    move-result-object p1

    return-object p1
.end method
