.class public final Lo/getUserAgent;
.super Lo/newLogger;
.source ""


# instance fields
.field private final onMessageChannelReady:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lo/newLogger;-><init>()V

    .line 31
    iput-object p1, p0, Lo/getUserAgent;->onMessageChannelReady:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/newRunLoop;)Z
    .locals 1

    .line 35
    iget v0, p1, Lo/newRunLoop;->onMessageChannelReady:I

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 39
    :cond_0
    iget-object p1, p1, Lo/newRunLoop;->extraCallback:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.resource"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(Lo/newRunLoop;)Lo/newLogger$extraCallback;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lo/getUserAgent;->onMessageChannelReady:Landroid/content/Context;

    invoke-static {v0, p1}, Lo/saveUserOverwrite;->onPostMessage(Landroid/content/Context;Lo/newRunLoop;)Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    invoke-static {v0, p1}, Lo/saveUserOverwrite;->onPostMessage(Landroid/content/res/Resources;Lo/newRunLoop;)I

    move-result v1

    .line 45
    new-instance v2, Lo/newLogger$extraCallback;

    .line 1049
    invoke-static {p1}, Lo/getUserAgent;->onPostMessage(Lo/newRunLoop;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1146
    iget-boolean v3, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 1051
    invoke-static {v0, v1, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1052
    iget v3, p1, Lo/newRunLoop;->asInterface:I

    iget v4, p1, Lo/newRunLoop;->ICustomTabsCallback$Stub:I

    .line 1151
    iget v5, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object v7, v9

    move-object v8, p1

    invoke-static/range {v3 .. v8}, Lo/newLogger;->onPostMessage(IIIILandroid/graphics/BitmapFactory$Options;Lo/newRunLoop;)V

    .line 1054
    :cond_1
    invoke-static {v0, v1, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 45
    sget-object v0, Lcom/squareup/picasso/Picasso$extraCallback;->onMessageChannelReady:Lcom/squareup/picasso/Picasso$extraCallback;

    invoke-direct {v2, p1, v0}, Lo/newLogger$extraCallback;-><init>(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$extraCallback;)V

    return-object v2
.end method
