.class public final Lo/orderByKey;
.super Lo/newLogger;
.source ""


# static fields
.field private static final onPostMessage:I = 0x16


# instance fields
.field private final onNavigationEvent:Landroid/content/res/AssetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/newLogger;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lo/orderByKey;->onNavigationEvent:Landroid/content/res/AssetManager;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/newRunLoop;)Z
    .locals 2

    .line 39
    iget-object p1, p1, Lo/newRunLoop;->extraCallback:Landroid/net/Uri;

    .line 40
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "android_asset"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final onNavigationEvent(Lo/newRunLoop;)Lo/newLogger$extraCallback;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lo/orderByKey;->onNavigationEvent:Landroid/content/res/AssetManager;

    .line 1050
    iget-object p1, p1, Lo/newRunLoop;->extraCallback:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x16

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 46
    new-instance v0, Lo/newLogger$extraCallback;

    sget-object v1, Lcom/squareup/picasso/Picasso$extraCallback;->onMessageChannelReady:Lcom/squareup/picasso/Picasso$extraCallback;

    invoke-direct {v0, p1, v1}, Lo/newLogger$extraCallback;-><init>(Ljava/io/InputStream;Lcom/squareup/picasso/Picasso$extraCallback;)V

    return-object v0
.end method
