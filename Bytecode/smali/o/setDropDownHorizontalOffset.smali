.class public final Lo/setDropDownHorizontalOffset;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppCompatImageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setDropDownHorizontalOffset$extraCallback;,
        Lo/setDropDownHorizontalOffset$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/AppCompatImageView<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static onNavigationEvent:Lo/setDropDownHorizontalOffset$onMessageChannelReady;


# instance fields
.field private final ICustomTabsCallback:Lo/setCollapsible;

.field private volatile asInterface:Z

.field private final extraCallback:Lo/setDropDownHorizontalOffset$onMessageChannelReady;

.field private final onMessageChannelReady:I

.field private onPostMessage:Ljava/net/HttpURLConnection;

.field private onRelationshipValidationResult:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lo/setDropDownHorizontalOffset$extraCallback;

    invoke-direct {v0}, Lo/setDropDownHorizontalOffset$extraCallback;-><init>()V

    sput-object v0, Lo/setDropDownHorizontalOffset;->onNavigationEvent:Lo/setDropDownHorizontalOffset$onMessageChannelReady;

    return-void
.end method

.method public constructor <init>(Lo/setCollapsible;I)V
    .locals 1

    .line 41
    sget-object v0, Lo/setDropDownHorizontalOffset;->onNavigationEvent:Lo/setDropDownHorizontalOffset$onMessageChannelReady;

    invoke-direct {p0, p1, p2, v0}, Lo/setDropDownHorizontalOffset;-><init>(Lo/setCollapsible;ILo/setDropDownHorizontalOffset$onMessageChannelReady;)V

    return-void
.end method

.method private constructor <init>(Lo/setCollapsible;ILo/setDropDownHorizontalOffset$onMessageChannelReady;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lo/setDropDownHorizontalOffset;->ICustomTabsCallback:Lo/setCollapsible;

    .line 47
    iput p2, p0, Lo/setDropDownHorizontalOffset;->onMessageChannelReady:I

    .line 48
    iput-object p3, p0, Lo/setDropDownHorizontalOffset;->extraCallback:Lo/setDropDownHorizontalOffset$onMessageChannelReady;

    return-void
.end method

.method private onPostMessage(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I",
            "Ljava/net/URL;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x5

    if-ge p2, v0, :cond_c

    if-eqz p3, :cond_1

    .line 78
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    new-instance p3, Lcom/bumptech/glide/load/HttpException;

    const-string v0, "In re-direct loop"

    invoke-direct {p3, v0}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :catch_0
    :cond_1
    :goto_1
    iget-object p3, p0, Lo/setDropDownHorizontalOffset;->extraCallback:Lo/setDropDownHorizontalOffset$onMessageChannelReady;

    invoke-interface {p3, p1}, Lo/setDropDownHorizontalOffset$onMessageChannelReady;->extraCallback(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p3

    iput-object p3, p0, Lo/setDropDownHorizontalOffset;->onPostMessage:Ljava/net/HttpURLConnection;

    .line 87
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 88
    iget-object v1, p0, Lo/setDropDownHorizontalOffset;->onPostMessage:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 90
    :cond_2
    iget-object p3, p0, Lo/setDropDownHorizontalOffset;->onPostMessage:Ljava/net/HttpURLConnection;

    iget v0, p0, Lo/setDropDownHorizontalOffset;->onMessageChannelReady:I

    invoke-virtual {p3, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 91
    iget-object p3, p0, Lo/setDropDownHorizontalOffset;->onPostMessage:Ljava/net/HttpURLConnection;

    iget v0, p0, Lo/setDropDownHorizontalOffset;->onMessageChannelReady:I

    invoke-virtual {p3, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 92
    iget-object p3, p0, Lo/setDropDownHorizontalOffset;->onPostMessage:Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 93
    iget-object p3, p0, Lo/setDropDownHorizontalOffset;->onPostMessage:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 97
    iget-object p3, p0, Lo/setDropDownHorizontalOffset;->onPostMessage:Ljava/net/HttpURLConnection;

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 100
    iget-object p3, p0, Lo/setDropDownHorizontalOffset;->onPostMessage:Ljava/net/HttpURLConnection;

    invoke-virtual {p3}, Ljava/net/URLConnection;->connect()V

    .line 102
    iget-object p3, p0, Lo/setDropDownHorizontalOffset;->onPostMessage:Ljava/net/HttpURLConnection;

    invoke-virtual {p3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    iput-object p3, p0, Lo/setDropDownHorizontalOffset;->onRelationshipValidationResult:Ljava/io/InputStream;

    .line 103
    iget-boolean p3, p0, Lo/setDropDownHorizontalOffset;->asInterface:Z

    if-eqz p3, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 106
    :cond_3
    iget-object p3, p0, Lo/setDropDownHorizontalOffset;->onPostMessage:Ljava/net/HttpURLConnection;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3

    .line 2128
    div-int/lit8 v2, p3, 0x64

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    const/4 v4, 0x3

    if-eqz v3, :cond_7

    .line 108
    iget-object p1, p0, Lo/setDropDownHorizontalOffset;->onPostMessage:Ljava/net/HttpURLConnection;

    .line 2138
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2139
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentLength()I

    move-result p2

    .line 2140
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    int-to-long p2, p2

    .line 3030
    new-instance p4, Lo/getAnimationStyle;

    invoke-direct {p4, p1, p2, p3}, Lo/getAnimationStyle;-><init>(Ljava/io/InputStream;J)V

    .line 2140
    iput-object p4, p0, Lo/setDropDownHorizontalOffset;->onRelationshipValidationResult:Ljava/io/InputStream;

    goto :goto_4

    :cond_5
    const-string p2, "HttpUrlFetcher"

    .line 2142
    invoke-static {p2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 2143
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Got non empty content encoding: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    :cond_6
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lo/setDropDownHorizontalOffset;->onRelationshipValidationResult:Ljava/io/InputStream;

    .line 2147
    :goto_4
    iget-object p1, p0, Lo/setDropDownHorizontalOffset;->onRelationshipValidationResult:Ljava/io/InputStream;

    return-object p1

    :cond_7
    if-ne v2, v4, :cond_8

    const/4 v0, 0x1

    :cond_8
    if-eqz v0, :cond_a

    .line 110
    iget-object p3, p0, Lo/setDropDownHorizontalOffset;->onPostMessage:Ljava/net/HttpURLConnection;

    const-string v0, "Location"

    invoke-virtual {p3, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 111
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 114
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1, p3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lo/setDropDownHorizontalOffset;->onPostMessage()V

    add-int/lit8 p2, p2, 0x1

    move-object p3, p1

    move-object p1, v0

    goto/16 :goto_0

    .line 112
    :cond_9
    new-instance p1, Lcom/bumptech/glide/load/HttpException;

    const-string p2, "Received empty or null redirect url"

    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const/4 p1, -0x1

    if-ne p3, p1, :cond_b

    .line 120
    new-instance p1, Lcom/bumptech/glide/load/HttpException;

    invoke-direct {p1, p3}, Lcom/bumptech/glide/load/HttpException;-><init>(I)V

    throw p1

    .line 122
    :cond_b
    new-instance p1, Lcom/bumptech/glide/load/HttpException;

    iget-object p2, p0, Lo/setDropDownHorizontalOffset;->onPostMessage:Ljava/net/HttpURLConnection;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 73
    :cond_c
    new-instance p1, Lcom/bumptech/glide/load/HttpException;

    const-string p2, "Too many (> 5) redirects!"

    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lo/setDropDownHorizontalOffset;->asInterface:Z

    return-void
.end method

.method public final extraCallback()Lo/setImageURI;
    .locals 1

    .line 181
    sget-object v0, Lo/setImageURI;->ICustomTabsCallback:Lo/setImageURI;

    return-object v0
.end method

.method public final onNavigationEvent()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 175
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public final onPostMessage()V
    .locals 1

    .line 152
    iget-object v0, p0, Lo/setDropDownHorizontalOffset;->onRelationshipValidationResult:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 154
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 159
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/setDropDownHorizontalOffset;->onPostMessage:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lo/setDropDownHorizontalOffset;->onPostMessage:Ljava/net/HttpURLConnection;

    return-void
.end method

.method public final onPostMessage(Lo/getTintList;Lo/AppCompatImageView$ICustomTabsCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getTintList;",
            "Lo/AppCompatImageView$ICustomTabsCallback<",
            "-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    const-string p1, "Finished http url fetcher fetch in "

    const-string v0, "HttpUrlFetcher"

    .line 54
    invoke-static {}, Lo/getAnchorView;->ICustomTabsCallback()J

    move-result-wide v1

    const/4 v3, 0x2

    .line 56
    :try_start_0
    iget-object v4, p0, Lo/setDropDownHorizontalOffset;->ICustomTabsCallback:Lo/setCollapsible;

    .line 1069
    iget-object v5, v4, Lo/setCollapsible;->onRelationshipValidationResult:Ljava/net/URL;

    if-nez v5, :cond_3

    .line 1070
    new-instance v5, Ljava/net/URL;

    .line 1086
    iget-object v6, v4, Lo/setCollapsible;->extraCallback:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1087
    iget-object v6, v4, Lo/setCollapsible;->ICustomTabsCallback:Ljava/lang/String;

    .line 1088
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1089
    iget-object v6, v4, Lo/setCollapsible;->onPostMessage:Ljava/net/URL;

    const-string v7, "Argument must not be null"

    if-eqz v6, :cond_0

    check-cast v6, Ljava/net/URL;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 2029
    :cond_0
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    :goto_0
    const-string v7, "@#&=*+-_.,:!?()/~\'%;$"

    .line 1091
    invoke-static {v6, v7}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lo/setCollapsible;->extraCallback:Ljava/lang/String;

    .line 1093
    :cond_2
    iget-object v6, v4, Lo/setCollapsible;->extraCallback:Ljava/lang/String;

    .line 1070
    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v5, v4, Lo/setCollapsible;->onRelationshipValidationResult:Ljava/net/URL;

    .line 1072
    :cond_3
    iget-object v4, v4, Lo/setCollapsible;->onRelationshipValidationResult:Ljava/net/URL;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 56
    iget-object v7, p0, Lo/setDropDownHorizontalOffset;->ICustomTabsCallback:Lo/setCollapsible;

    .line 2098
    iget-object v7, v7, Lo/setCollapsible;->onMessageChannelReady:Lo/setDropdownParams;

    invoke-interface {v7}, Lo/setDropdownParams;->ICustomTabsCallback()Ljava/util/Map;

    move-result-object v7

    .line 56
    invoke-direct {p0, v4, v5, v6, v7}, Lo/setDropDownHorizontalOffset;->onPostMessage(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object v4

    .line 57
    invoke-interface {p2, v4}, Lo/AppCompatImageView$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1, v2}, Lo/getAnchorView;->onMessageChannelReady(J)D

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception v4

    const/4 v5, 0x3

    .line 59
    :try_start_1
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "Failed to load data for url"

    .line 60
    invoke-static {v0, v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    :cond_4
    invoke-interface {p2, v4}, Lo/AppCompatImageView$ICustomTabsCallback;->extraCallback(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return-void

    .line 64
    :goto_2
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lo/getAnchorView;->onMessageChannelReady(J)D

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    throw p2
.end method
