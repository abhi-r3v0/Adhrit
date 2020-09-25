.class public final Lo/setSelector;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/shouldApplyFrameworkTintUsingColorFilter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/shouldApplyFrameworkTintUsingColorFilter<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static onMessageChannelReady:Lo/setInternalImageTint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setInternalImageTint<",
            "Landroid/graphics/Bitmap$CompressFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static onNavigationEvent:Lo/setInternalImageTint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setInternalImageTint<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final onPostMessage:Lo/ButtonBarLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x5a

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality"

    invoke-static {v1, v0}, Lo/setInternalImageTint;->onPostMessage(Ljava/lang/String;Ljava/lang/Object;)Lo/setInternalImageTint;

    move-result-object v0

    sput-object v0, Lo/setSelector;->onNavigationEvent:Lo/setInternalImageTint;

    const-string v0, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat"

    .line 50
    invoke-static {v0}, Lo/setInternalImageTint;->ICustomTabsCallback(Ljava/lang/String;)Lo/setInternalImageTint;

    move-result-object v0

    sput-object v0, Lo/setSelector;->onMessageChannelReady:Lo/setInternalImageTint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lo/setSelector;->onPostMessage:Lo/ButtonBarLayout;

    return-void
.end method

.method public constructor <init>(Lo/ButtonBarLayout;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lo/setSelector;->onPostMessage:Lo/ButtonBarLayout;

    return-void
.end method

.method private extraCallback(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;Ljava/io/File;Lo/applyFrameworkTintUsingColorFilter;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/io/File;",
            "Lo/applyFrameworkTintUsingColorFilter;",
            ")Z"
        }
    .end annotation

    const-string v0, "BitmapEncoder"

    .line 68
    invoke-interface {p1}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->onPostMessage()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 1121
    sget-object v1, Lo/setSelector;->onMessageChannelReady:Lo/setInternalImageTint;

    .line 2027
    iget-object v2, p3, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {v2, v1}, Lo/fromMediaItemList;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p3, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {v2, v1}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 2101
    :cond_0
    iget-object v1, v1, Lo/setInternalImageTint;->onMessageChannelReady:Ljava/lang/Object;

    .line 1121
    :goto_0
    check-cast v1, Landroid/graphics/Bitmap$CompressFormat;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1124
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1125
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1

    .line 1127
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 71
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 73
    :try_start_0
    invoke-static {}, Lo/getAnchorView;->ICustomTabsCallback()J

    move-result-wide v2

    .line 74
    sget-object v4, Lo/setSelector;->onNavigationEvent:Lo/setInternalImageTint;

    .line 3027
    iget-object v5, p3, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {v5, v4}, Lo/fromMediaItemList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p3, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {v5, v4}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    .line 3101
    :cond_3
    iget-object v4, v4, Lo/setInternalImageTint;->onMessageChannelReady:Ljava/lang/Object;

    .line 74
    :goto_2
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 79
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    :try_start_2
    iget-object p2, p0, Lo/setSelector;->onPostMessage:Lo/ButtonBarLayout;

    if-eqz p2, :cond_4

    .line 81
    new-instance p2, Lo/AppCompatRatingBar;

    iget-object v6, p0, Lo/setSelector;->onPostMessage:Lo/ButtonBarLayout;

    invoke-direct {p2, v7, v6}, Lo/AppCompatRatingBar;-><init>(Ljava/io/OutputStream;Lo/ButtonBarLayout;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, p2

    goto :goto_3

    :cond_4
    move-object v6, v7

    .line 83
    :goto_3
    :try_start_3
    invoke-virtual {p1, v1, v4, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 84
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v5, 0x1

    .line 93
    :goto_4
    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :catchall_0
    move-exception p1

    move-object v6, v7

    goto :goto_8

    :catch_0
    move-exception p2

    move-object v6, v7

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_8

    :catch_1
    move-exception p2

    :goto_5
    const/4 v4, 0x3

    .line 87
    :try_start_5
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "Failed to encode Bitmap"

    .line 88
    invoke-static {v0, v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_5
    if-eqz v6, :cond_6

    goto :goto_4

    :catch_2
    :cond_6
    :goto_6
    const/4 p2, 0x2

    .line 100
    :try_start_6
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 101
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v4, "Compressed with type: "

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " of size "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-static {p1}, Lo/getHorizontalOffset;->ICustomTabsCallback(Landroid/graphics/Bitmap;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-static {v2, v3}, Lo/getAnchorView;->onMessageChannelReady(J)D

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", options format: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lo/setSelector;->onMessageChannelReady:Lo/setInternalImageTint;

    .line 4027
    iget-object v2, p3, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {v2, v1}, Lo/fromMediaItemList;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object p3, p3, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {p3, v1}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_7

    .line 4101
    :cond_7
    iget-object p3, v1, Lo/setInternalImageTint;->onMessageChannelReady:Ljava/lang/Object;

    .line 110
    :goto_7
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", hasAlpha: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_8
    return v5

    :goto_8
    if-eqz v6, :cond_9

    .line 93
    :try_start_7
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 96
    :catch_3
    :cond_9
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    .line 116
    throw p1
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/applyFrameworkTintUsingColorFilter;)Lo/getSupportImageTintMode;
    .locals 0

    .line 134
    sget-object p1, Lo/getSupportImageTintMode;->onPostMessage:Lo/getSupportImageTintMode;

    return-object p1
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;Ljava/io/File;Lo/applyFrameworkTintUsingColorFilter;)Z
    .locals 0

    .line 33
    check-cast p1, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    invoke-direct {p0, p1, p2, p3}, Lo/setSelector;->extraCallback(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;Ljava/io/File;Lo/applyFrameworkTintUsingColorFilter;)Z

    move-result p1

    return p1
.end method
