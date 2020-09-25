.class public final Lo/getDropDownWidth;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppCompatImageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getDropDownWidth$onPostMessage;,
        Lo/getDropDownWidth$ICustomTabsCallback;
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


# instance fields
.field private final extraCallback:Landroid/net/Uri;

.field private final onNavigationEvent:Lo/setAdapter;

.field private onPostMessage:Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Lo/setAdapter;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lo/getDropDownWidth;->extraCallback:Landroid/net/Uri;

    .line 54
    iput-object p2, p0, Lo/getDropDownWidth;->onNavigationEvent:Lo/setAdapter;

    return-void
.end method

.method public static onMessageChannelReady(Landroid/content/Context;Landroid/net/Uri;Lo/setPrompt;)Lo/getDropDownWidth;
    .locals 4

    .line 41
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->onPostMessage(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    .line 1613
    iget-object v0, v0, Lcom/bumptech/glide/Glide;->onMessageChannelReady:Lo/ButtonBarLayout;

    .line 42
    new-instance v1, Lo/setAdapter;

    .line 44
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->onPostMessage(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v2

    .line 1865
    iget-object v2, v2, Lcom/bumptech/glide/Glide;->onNavigationEvent:Lcom/bumptech/glide/Registry;

    .line 2590
    iget-object v2, v2, Lcom/bumptech/glide/Registry;->ICustomTabsCallback$Stub:Lo/setContentWidth;

    invoke-virtual {v2}, Lo/setContentWidth;->onMessageChannelReady()Ljava/util/List;

    move-result-object v2

    .line 2591
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-direct {v1, v2, p2, v0, p0}, Lo/setAdapter;-><init>(Ljava/util/List;Lo/setPrompt;Lo/ButtonBarLayout;Landroid/content/ContentResolver;)V

    .line 48
    new-instance p0, Lo/getDropDownWidth;

    invoke-direct {p0, p1, v1}, Lo/getDropDownWidth;-><init>(Landroid/net/Uri;Lo/setAdapter;)V

    return-object p0

    .line 2592
    :cond_0
    new-instance p0, Lcom/bumptech/glide/Registry$NoImageHeaderParserException;

    invoke-direct {p0}, Lcom/bumptech/glide/Registry$NoImageHeaderParserException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 0

    return-void
.end method

.method public final extraCallback()Lo/setImageURI;
    .locals 1

    .line 112
    sget-object v0, Lo/setImageURI;->onNavigationEvent:Lo/setImageURI;

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

    .line 106
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public final onPostMessage()V
    .locals 1

    .line 89
    iget-object v0, p0, Lo/getDropDownWidth;->onPostMessage:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 91
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final onPostMessage(Lo/getTintList;Lo/AppCompatImageView$ICustomTabsCallback;)V
    .locals 3
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

    .line 3074
    :try_start_0
    iget-object p1, p0, Lo/getDropDownWidth;->onNavigationEvent:Lo/setAdapter;

    iget-object v0, p0, Lo/getDropDownWidth;->extraCallback:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lo/setAdapter;->onPostMessage(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 3078
    iget-object v1, p0, Lo/getDropDownWidth;->onNavigationEvent:Lo/setAdapter;

    iget-object v2, p0, Lo/getDropDownWidth;->extraCallback:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lo/setAdapter;->onNavigationEvent(Landroid/net/Uri;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    if-eq v1, v0, :cond_1

    .line 3082
    new-instance v0, Lo/AppCompatSpinner;

    invoke-direct {v0, p1, v1}, Lo/AppCompatSpinner;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v0

    .line 61
    :cond_1
    iput-object p1, p0, Lo/getDropDownWidth;->onPostMessage:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    invoke-interface {p2, p1}, Lo/AppCompatImageView$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x3

    const-string v1, "MediaStoreThumbFetcher"

    .line 63
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Failed to find thumbnail file"

    .line 64
    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    :cond_2
    invoke-interface {p2, p1}, Lo/AppCompatImageView$ICustomTabsCallback;->extraCallback(Ljava/lang/Exception;)V

    return-void
.end method
