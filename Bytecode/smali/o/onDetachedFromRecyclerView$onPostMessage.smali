.class final Lo/onDetachedFromRecyclerView$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onDetachedFromRecyclerView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/onDetachedFromRecyclerView;


# direct methods
.method constructor <init>(Lo/onDetachedFromRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lo/onDetachedFromRecyclerView$onPostMessage;->onMessageChannelReady:Lo/onDetachedFromRecyclerView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 19
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1027
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1028
    iget-object v0, p0, Lo/onDetachedFromRecyclerView$onPostMessage;->onMessageChannelReady:Lo/onDetachedFromRecyclerView;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->cropImageView:I

    invoke-virtual {v0, v1}, Lo/onDetachedFromRecyclerView;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/setDrawerTitle;

    const-string v2, "cropImageView"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lo/setDrawerTitle;->onPostMessage()Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "cropImageView.croppedImage"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lo/onDetachedFromRecyclerView;->onPostMessage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "bitmap"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1065
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v4, "filesDir"

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/profilepic.jpeg"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1066
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1067
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v4, v0

    check-cast v4, Ljava/io/OutputStream;

    const/16 v5, 0x64

    invoke-virtual {v1, v3, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1068
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1069
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file.absolutePath"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "fileUrl"

    .line 1028
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1029
    iget-object v0, p0, Lo/onDetachedFromRecyclerView$onPostMessage;->onMessageChannelReady:Lo/onDetachedFromRecyclerView;

    .line 2021
    iget-object v0, v0, Lo/onDetachedFromRecyclerView;->onNavigationEvent:Ljava/lang/String;

    const-string v1, "medium"

    .line 1029
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1030
    iget-object v0, p0, Lo/onDetachedFromRecyclerView$onPostMessage;->onMessageChannelReady:Lo/onDetachedFromRecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1031
    iget-object p1, p0, Lo/onDetachedFromRecyclerView$onPostMessage;->onMessageChannelReady:Lo/onDetachedFromRecyclerView;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 19
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
