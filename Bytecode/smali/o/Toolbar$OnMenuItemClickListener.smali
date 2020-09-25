.class public final Lo/Toolbar$OnMenuItemClickListener;
.super Lo/MediaControllerCompat$TransportControlsApi24;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u000c\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0007H\u0002J\u0008\u0010\u0010\u001a\u00020\u0007H\u0002R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/amex/AmexWebviewViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "app",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "_jsFetchingLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "jsFetchingLiveData",
        "Landroidx/lifecycle/LiveData;",
        "getJsFetchingLiveData",
        "()Landroidx/lifecycle/LiveData;",
        "fetchJavaScript",
        "",
        "handleJsFetchFailure",
        "reason",
        "readFromLocalJs",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final onMessageChannelReady:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "app"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Lo/MediaControllerCompat$TransportControlsApi24;-><init>(Landroid/app/Application;)V

    iput-object p1, p0, Lo/Toolbar$OnMenuItemClickListener;->onNavigationEvent:Landroid/app/Application;

    .line 23
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/Toolbar$OnMenuItemClickListener;->onMessageChannelReady:Lo/setActive;

    return-void
.end method

.method private final ICustomTabsCallback()Ljava/lang/String;
    .locals 5

    .line 65
    iget-object v0, p0, Lo/Toolbar$OnMenuItemClickListener;->onNavigationEvent:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "amex_js.js"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "app.assets.open(\"amex_js.js\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/applyOperationToSyncPoints;->onPostMessage:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v2, Ljava/io/Reader;

    new-instance v0, Ljava/io/BufferedReader;

    const/16 v1, 0x2000

    invoke-direct {v0, v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v2, v0

    check-cast v2, Ljava/io/BufferedReader;

    .line 66
    check-cast v2, Ljava/io/Reader;

    const-string v3, "$this$readText"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1106
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 1107
    move-object v4, v3

    check-cast v4, Ljava/io/Writer;

    .line 1120
    invoke-static {v2, v4, v1}, Lo/extraCallback;->onPostMessage(Ljava/io/Reader;Ljava/io/Writer;I)J

    .line 1108
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "buffer.toString()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 65
    invoke-static {v0, v2}, Lo/extraCallback;->onNavigationEvent(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static final synthetic extraCallback(Lo/Toolbar$OnMenuItemClickListener;)Lo/setActive;
    .locals 0

    .line 18
    iget-object p0, p0, Lo/Toolbar$OnMenuItemClickListener;->onMessageChannelReady:Lo/setActive;

    return-object p0
.end method

.method public static final synthetic onMessageChannelReady(Lo/Toolbar$OnMenuItemClickListener;Ljava/lang/String;)V
    .locals 4

    .line 2054
    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 3000
    sget-object v0, Lo/isInLayout;->MediaBrowserCompat$MediaBrowserImplBase$1:Lo/isAdded;

    sget-object v1, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v2, 0x66

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2055
    iget-object v0, p0, Lo/Toolbar$OnMenuItemClickListener;->onMessageChannelReady:Lo/setActive;

    invoke-direct {p0}, Lo/Toolbar$OnMenuItemClickListener;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto :goto_0

    .line 2057
    :cond_0
    iget-object p0, p0, Lo/Toolbar$OnMenuItemClickListener;->onMessageChannelReady:Lo/setActive;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    new-array v0, p0, [Lo/addWrite;

    const/4 v1, 0x0

    .line 3043
    new-instance v2, Lo/addWrite;

    const-string v3, "amex_js_fetch_failed_reason"

    invoke-direct {v2, v3, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const-string p1, "pairs"

    .line 2061
    invoke-static {v0, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3088
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-static {p0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p0

    invoke-direct {p1, p0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p0, "amex_js_fetch_failed"

    .line 2060
    invoke-static {p0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method
