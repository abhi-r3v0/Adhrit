.class final Lo/setAdapter;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final extraCallback:Lo/createToggleButton;


# instance fields
.field private final ICustomTabsCallback:Lo/ButtonBarLayout;

.field private final onMessageChannelReady:Landroid/content/ContentResolver;

.field private final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/setPrompt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lo/createToggleButton;

    invoke-direct {v0}, Lo/createToggleButton;-><init>()V

    sput-object v0, Lo/setAdapter;->extraCallback:Lo/createToggleButton;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lo/createToggleButton;Lo/setPrompt;Lo/ButtonBarLayout;Landroid/content/ContentResolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lo/createToggleButton;",
            "Lo/setPrompt;",
            "Lo/ButtonBarLayout;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p3, p0, Lo/setAdapter;->onPostMessage:Lo/setPrompt;

    .line 45
    iput-object p4, p0, Lo/setAdapter;->ICustomTabsCallback:Lo/ButtonBarLayout;

    .line 46
    iput-object p5, p0, Lo/setAdapter;->onMessageChannelReady:Landroid/content/ContentResolver;

    .line 47
    iput-object p1, p0, Lo/setAdapter;->onNavigationEvent:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Lo/setPrompt;Lo/ButtonBarLayout;Landroid/content/ContentResolver;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lo/setPrompt;",
            "Lo/ButtonBarLayout;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    .line 34
    sget-object v2, Lo/setAdapter;->extraCallback:Lo/createToggleButton;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lo/setAdapter;-><init>(Ljava/util/List;Lo/createToggleButton;Lo/setPrompt;Lo/ButtonBarLayout;Landroid/content/ContentResolver;)V

    return-void
.end method

.method private ICustomTabsCallback(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5

    const-string v0, "ThumbStreamOpener"

    const/4 v1, 0x0

    .line 99
    :try_start_0
    iget-object v2, p0, Lo/setAdapter;->onPostMessage:Lo/setPrompt;

    invoke-interface {v2, p1}, Lo/setPrompt;->onNavigationEvent(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 100
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 101
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    .line 112
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v2, v1

    :goto_0
    const/4 v4, 0x3

    .line 106
    :try_start_2
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "Failed to query for thumbnail for Uri: "

    .line 107
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    if-eqz v2, :cond_4

    .line 112
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v1

    :catchall_1
    move-exception p1

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
.end method


# virtual methods
.method final onNavigationEvent(Landroid/net/Uri;)I
    .locals 4

    const-string v0, "ThumbStreamOpener"

    const/4 v1, 0x0

    .line 53
    :try_start_0
    iget-object v2, p0, Lo/setAdapter;->onMessageChannelReady:Landroid/content/ContentResolver;

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 54
    iget-object v2, p0, Lo/setAdapter;->onNavigationEvent:Ljava/util/List;

    iget-object v3, p0, Lo/setAdapter;->ICustomTabsCallback:Lo/ButtonBarLayout;

    invoke-static {v2, v1, v3}, Lo/setSupportImageTintMode;->extraCallback(Ljava/util/List;Ljava/io/InputStream;Lo/ButtonBarLayout;)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 63
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    :goto_0
    const/4 v3, 0x3

    .line 57
    :try_start_2
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Failed to open uri: "

    .line 58
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    if-eqz v1, :cond_2

    .line 63
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_2
    const/4 p1, -0x1

    return p1

    :goto_1
    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 66
    :catch_4
    :cond_3
    throw p1
.end method

.method public final onPostMessage(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1}, Lo/setAdapter;->ICustomTabsCallback(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 1015
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2007
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v3, 0x0

    .line 2011
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-object v2

    .line 83
    :cond_2
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lo/setAdapter;->onMessageChannelReady:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 90
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NPE opening uri: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/FileNotFoundException;

    throw p1
.end method
