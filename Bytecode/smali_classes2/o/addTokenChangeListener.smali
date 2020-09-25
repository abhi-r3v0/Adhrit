.class public final Lo/addTokenChangeListener;
.super Lo/onDataChange;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lo/onDataChange;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/newRunLoop;)Z
    .locals 1

    .line 38
    iget-object p1, p1, Lo/newRunLoop;->extraCallback:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(Lo/newRunLoop;)Lo/newLogger$extraCallback;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    new-instance v0, Lo/newLogger$extraCallback;

    .line 1043
    iget-object v1, p0, Lo/onDataChange;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1044
    iget-object v2, p1, Lo/newRunLoop;->extraCallback:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 42
    sget-object v2, Lcom/squareup/picasso/Picasso$extraCallback;->onMessageChannelReady:Lcom/squareup/picasso/Picasso$extraCallback;

    iget-object p1, p1, Lo/newRunLoop;->extraCallback:Landroid/net/Uri;

    .line 1046
    new-instance v3, Landroid/media/ExifInterface;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p1, "Orientation"

    const/4 v4, 0x1

    .line 1047
    invoke-virtual {v3, p1, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const/4 v3, 0x6

    if-eq p1, v3, :cond_1

    const/16 v3, 0x8

    if-eq p1, v3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x10e

    goto :goto_0

    :cond_1
    const/16 p1, 0x5a

    goto :goto_0

    :cond_2
    const/16 p1, 0xb4

    :goto_0
    const/4 v3, 0x0

    .line 42
    invoke-direct {v0, v3, v1, v2, p1}, Lo/newLogger$extraCallback;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/squareup/picasso/Picasso$extraCallback;I)V

    return-object v0
.end method
