.class public final Lo/onDetachedFromRecyclerView;
.super Landroid/app/Activity;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u000e\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nJ\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/CropActivity;",
        "Landroid/app/Activity;",
        "()V",
        "medium",
        "",
        "getMedium",
        "()Ljava/lang/String;",
        "setMedium",
        "(Ljava/lang/String;)V",
        "compressBitmap",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "convertBitmapToFile",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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
.field private extraCallback:Ljava/util/HashMap;

.field onNavigationEvent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lo/onDetachedFromRecyclerView;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic onPostMessage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    const/16 v0, 0x8c

    const/4 v1, 0x0

    .line 1061
    invoke-static {p0, v0, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string v0, "Bitmap.createScaledBitmap(bitmap, 140, 140, false)"

    invoke-static {p0, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e001d

    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 26
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->cropBtn:I

    invoke-virtual {p0, p1}, Lo/onDetachedFromRecyclerView;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "cropBtn"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance v0, Lo/onDetachedFromRecyclerView$onPostMessage;

    invoke-direct {v0, p0}, Lo/onDetachedFromRecyclerView$onPostMessage;-><init>(Lo/onDetachedFromRecyclerView;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p1, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 34
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->cancelBtn:I

    invoke-virtual {p0, p1}, Lo/onDetachedFromRecyclerView;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "cancelBtn"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance v0, Lo/onDetachedFromRecyclerView$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/onDetachedFromRecyclerView$ICustomTabsCallback;-><init>(Lo/onDetachedFromRecyclerView;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p1, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string/jumbo v1, "uri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_6

    check-cast p1, Landroid/net/Uri;

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "medium"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, ""

    :cond_2
    iput-object v0, p0, Lo/onDetachedFromRecyclerView;->onNavigationEvent:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "bitmap"

    .line 42
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    const v2, 0x5f5e100

    const/16 v3, 0x18

    if-le v1, v2, :cond_4

    .line 43
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/16 v2, 0x3e8

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/2addr v1, v4

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_3

    .line 45
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->cropImageView:I

    invoke-virtual {p0, v1}, Lo/onDetachedFromRecyclerView;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/setDrawerTitle;

    new-instance v2, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v0, v2}, Lo/setDrawerTitle;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/media/ExifInterface;)V

    goto :goto_1

    .line 47
    :cond_3
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->cropImageView:I

    invoke-virtual {p0, v1}, Lo/onDetachedFromRecyclerView;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/setDrawerTitle;

    new-instance v2, Landroid/media/ExifInterface;

    invoke-static {p1}, Lo/extraCallback;->onMessageChannelReady(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lo/setDrawerTitle;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/media/ExifInterface;)V

    goto :goto_1

    .line 50
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_5

    .line 51
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cropImageView:I

    invoke-virtual {p0, v0}, Lo/onDetachedFromRecyclerView;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/setDrawerTitle;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1, v2}, Lo/setDrawerTitle;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/media/ExifInterface;)V

    goto :goto_1

    .line 53
    :cond_5
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cropImageView:I

    invoke-virtual {p0, v0}, Lo/onDetachedFromRecyclerView;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/setDrawerTitle;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/media/ExifInterface;

    invoke-static {p1}, Lo/extraCallback;->onMessageChannelReady(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lo/setDrawerTitle;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/media/ExifInterface;)V

    .line 56
    :goto_1
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->cropImageView:I

    invoke-virtual {p0, p1}, Lo/onDetachedFromRecyclerView;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setDrawerTitle;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/setDrawerTitle;->setFixedAspectRatio(Z)V

    .line 57
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->cropImageView:I

    invoke-virtual {p0, p1}, Lo/onDetachedFromRecyclerView;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setDrawerTitle;

    invoke-virtual {p1, v0, v0}, Lo/setDrawerTitle;->setAspectRatio(II)V

    return-void

    .line 39
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.net.Uri"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onMessageChannelReady(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/onDetachedFromRecyclerView;->extraCallback:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/onDetachedFromRecyclerView;->extraCallback:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/onDetachedFromRecyclerView;->extraCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/onDetachedFromRecyclerView;->extraCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method
