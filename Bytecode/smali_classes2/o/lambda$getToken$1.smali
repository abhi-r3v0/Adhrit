.class public final Lo/lambda$getToken$1;
.super Lo/onDataChange;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/lambda$getToken$1$extraCallback;
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "orientation"

    .line 40
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/lambda$getToken$1;->onMessageChannelReady:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lo/onDataChange;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static ICustomTabsCallback(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 107
    :try_start_0
    sget-object v4, Lo/lambda$getToken$1;->onMessageChannelReady:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 108
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 117
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return p0

    :catch_0
    nop

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return v0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0

    :goto_1
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    return v0
.end method


# virtual methods
.method public final extraCallback(Lo/newRunLoop;)Z
    .locals 2

    .line 49
    iget-object p1, p1, Lo/newRunLoop;->extraCallback:Landroid/net/Uri;

    .line 50
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const-string v0, "media"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onNavigationEvent(Lo/newRunLoop;)Lo/newLogger$extraCallback;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 55
    iget-object v1, v0, Lo/onDataChange;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 56
    iget-object v1, v7, Lo/newRunLoop;->extraCallback:Landroid/net/Uri;

    invoke-static {v8, v1}, Lo/lambda$getToken$1;->ICustomTabsCallback(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v9

    .line 58
    iget-object v1, v7, Lo/newRunLoop;->extraCallback:Landroid/net/Uri;

    invoke-virtual {v8, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_0

    const-string v3, "video/"

    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 1171
    :goto_0
    iget v1, v7, Lo/newRunLoop;->asInterface:I

    if-nez v1, :cond_1

    iget v1, v7, Lo/newRunLoop;->ICustomTabsCallback$Stub:I

    if-eqz v1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    const/4 v12, 0x0

    if-eqz v2, :cond_8

    .line 62
    iget v1, v7, Lo/newRunLoop;->asInterface:I

    iget v2, v7, Lo/newRunLoop;->ICustomTabsCallback$Stub:I

    .line 2096
    sget-object v3, Lo/lambda$getToken$1$extraCallback;->onPostMessage:Lo/lambda$getToken$1$extraCallback;

    iget v3, v3, Lo/lambda$getToken$1$extraCallback;->onNavigationEvent:I

    if-gt v1, v3, :cond_3

    sget-object v3, Lo/lambda$getToken$1$extraCallback;->onPostMessage:Lo/lambda$getToken$1$extraCallback;

    iget v3, v3, Lo/lambda$getToken$1$extraCallback;->ICustomTabsCallback$Stub:I

    if-gt v2, v3, :cond_3

    .line 2097
    sget-object v1, Lo/lambda$getToken$1$extraCallback;->onPostMessage:Lo/lambda$getToken$1$extraCallback;

    goto :goto_1

    .line 2098
    :cond_3
    sget-object v3, Lo/lambda$getToken$1$extraCallback;->ICustomTabsCallback:Lo/lambda$getToken$1$extraCallback;

    iget v3, v3, Lo/lambda$getToken$1$extraCallback;->onNavigationEvent:I

    if-gt v1, v3, :cond_4

    sget-object v1, Lo/lambda$getToken$1$extraCallback;->ICustomTabsCallback:Lo/lambda$getToken$1$extraCallback;

    iget v1, v1, Lo/lambda$getToken$1$extraCallback;->ICustomTabsCallback$Stub:I

    if-gt v2, v1, :cond_4

    .line 2099
    sget-object v1, Lo/lambda$getToken$1$extraCallback;->ICustomTabsCallback:Lo/lambda$getToken$1$extraCallback;

    goto :goto_1

    .line 2101
    :cond_4
    sget-object v1, Lo/lambda$getToken$1$extraCallback;->onMessageChannelReady:Lo/lambda$getToken$1$extraCallback;

    :goto_1
    move-object v13, v1

    if-nez v11, :cond_5

    .line 63
    sget-object v1, Lo/lambda$getToken$1$extraCallback;->onMessageChannelReady:Lo/lambda$getToken$1$extraCallback;

    if-ne v13, v1, :cond_5

    .line 64
    new-instance v1, Lo/newLogger$extraCallback;

    .line 3043
    iget-object v2, v0, Lo/onDataChange;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3044
    iget-object v3, v7, Lo/newRunLoop;->extraCallback:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 64
    sget-object v3, Lcom/squareup/picasso/Picasso$extraCallback;->onMessageChannelReady:Lcom/squareup/picasso/Picasso$extraCallback;

    invoke-direct {v1, v12, v2, v3, v9}, Lo/newLogger$extraCallback;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/squareup/picasso/Picasso$extraCallback;I)V

    return-object v1

    .line 67
    :cond_5
    iget-object v1, v7, Lo/newRunLoop;->extraCallback:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    .line 69
    invoke-static/range {p1 .. p1}, Lo/lambda$getToken$1;->onPostMessage(Lo/newRunLoop;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v6

    .line 70
    iput-boolean v10, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 72
    iget v1, v7, Lo/newRunLoop;->asInterface:I

    iget v2, v7, Lo/newRunLoop;->ICustomTabsCallback$Stub:I

    iget v3, v13, Lo/lambda$getToken$1$extraCallback;->onNavigationEvent:I

    iget v4, v13, Lo/lambda$getToken$1$extraCallback;->ICustomTabsCallback$Stub:I

    move-object v5, v6

    move-object v10, v6

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v6}, Lo/lambda$getToken$1;->onPostMessage(IIIILandroid/graphics/BitmapFactory$Options;Lo/newRunLoop;)V

    if-eqz v11, :cond_7

    .line 80
    sget-object v1, Lo/lambda$getToken$1$extraCallback;->onMessageChannelReady:Lo/lambda$getToken$1$extraCallback;

    if-ne v13, v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    iget v1, v13, Lo/lambda$getToken$1$extraCallback;->extraCallback:I

    .line 81
    :goto_2
    invoke-static {v8, v14, v15, v1, v10}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_3

    .line 83
    :cond_7
    iget v1, v13, Lo/lambda$getToken$1$extraCallback;->extraCallback:I

    .line 84
    invoke-static {v8, v14, v15, v1, v10}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_8

    .line 88
    new-instance v2, Lo/newLogger$extraCallback;

    sget-object v3, Lcom/squareup/picasso/Picasso$extraCallback;->onMessageChannelReady:Lcom/squareup/picasso/Picasso$extraCallback;

    invoke-direct {v2, v1, v12, v3, v9}, Lo/newLogger$extraCallback;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/squareup/picasso/Picasso$extraCallback;I)V

    return-object v2

    .line 92
    :cond_8
    new-instance v1, Lo/newLogger$extraCallback;

    .line 4043
    iget-object v2, v0, Lo/onDataChange;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4044
    iget-object v3, v7, Lo/newRunLoop;->extraCallback:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 92
    sget-object v3, Lcom/squareup/picasso/Picasso$extraCallback;->onMessageChannelReady:Lcom/squareup/picasso/Picasso$extraCallback;

    invoke-direct {v1, v12, v2, v3, v9}, Lo/newLogger$extraCallback;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/squareup/picasso/Picasso$extraCallback;I)V

    return-object v1
.end method
