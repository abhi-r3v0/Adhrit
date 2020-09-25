.class final Lo/setLayoutTransition$ICustomTabsCallback$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setLayoutTransition$ICustomTabsCallback;->ICustomTabsCallback(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/setLayoutTransition$ICustomTabsCallback;

.field private synthetic onMessageChannelReady:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lo/setLayoutTransition$ICustomTabsCallback;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lo/setLayoutTransition$ICustomTabsCallback$onNavigationEvent;->ICustomTabsCallback:Lo/setLayoutTransition$ICustomTabsCallback;

    iput-object p2, p0, Lo/setLayoutTransition$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 68
    iget-object v0, p0, Lo/setLayoutTransition$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 69
    iget-object v1, p0, Lo/setLayoutTransition$ICustomTabsCallback$onNavigationEvent;->ICustomTabsCallback:Lo/setLayoutTransition$ICustomTabsCallback;

    iget-object v1, v1, Lo/setLayoutTransition$ICustomTabsCallback;->onPostMessage:Lo/setLayoutTransition;

    invoke-static {v1}, Lo/setLayoutTransition;->onNavigationEvent(Lo/setLayoutTransition;)Landroid/widget/ImageView;

    move-result-object v1

    const-string v2, "profileIcon"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$this$setCircularBitmap"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "drawable"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1156
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->ICustomTabsCallback(Landroid/view/View;)Lo/AppCompatImageButton;

    move-result-object v2

    .line 1157
    invoke-virtual {v2}, Lo/AppCompatImageButton;->onNavigationEvent()Lo/setTextClassifier;

    move-result-object v2

    .line 1158
    invoke-virtual {v2, v0}, Lo/setTextClassifier;->ICustomTabsCallback(Landroid/graphics/Bitmap;)Lo/setTextClassifier;

    move-result-object v0

    .line 1159
    new-instance v2, Lo/setHorizontalGravity;

    invoke-direct {v2}, Lo/setHorizontalGravity;-><init>()V

    invoke-virtual {v2}, Lo/measureChildBeforeLayout;->onTransact()Lo/measureChildBeforeLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/setTextClassifier;->ICustomTabsCallback(Lo/measureChildBeforeLayout;)Lo/setTextClassifier;

    move-result-object v0

    .line 1160
    invoke-virtual {v0, v1}, Lo/setTextClassifier;->onMessageChannelReady(Landroid/widget/ImageView;)Lo/getPromptPosition;

    :cond_0
    return-void
.end method
