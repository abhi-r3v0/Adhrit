.class Lo/RatingCompat$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/newHeartRating$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RatingCompat;->ICustomTabsCallback(Landroid/content/Context;Lo/extraCallback$onPostMessage;Lo/containsKey$ICustomTabsCallback;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/newHeartRating$onNavigationEvent<",
        "Lo/RatingCompat$onPostMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/containsKey$ICustomTabsCallback;

.field final synthetic onPostMessage:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lo/containsKey$ICustomTabsCallback;Landroid/os/Handler;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lo/RatingCompat$1;->extraCallback:Lo/containsKey$ICustomTabsCallback;

    iput-object p2, p0, Lo/RatingCompat$1;->onPostMessage:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic ICustomTabsCallback(Ljava/lang/Object;)V
    .locals 0

    .line 273
    check-cast p1, Lo/RatingCompat$onPostMessage;

    invoke-virtual {p0, p1}, Lo/RatingCompat$1;->extraCallback(Lo/RatingCompat$onPostMessage;)V

    return-void
.end method

.method public extraCallback(Lo/RatingCompat$onPostMessage;)V
    .locals 2

    if-nez p1, :cond_0

    .line 277
    iget-object p1, p0, Lo/RatingCompat$1;->extraCallback:Lo/containsKey$ICustomTabsCallback;

    const/4 v0, 0x1

    iget-object v1, p0, Lo/RatingCompat$1;->onPostMessage:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Lo/containsKey$ICustomTabsCallback;->onMessageChannelReady(ILandroid/os/Handler;)V

    return-void

    .line 279
    :cond_0
    iget v0, p1, Lo/RatingCompat$onPostMessage;->onNavigationEvent:I

    if-nez v0, :cond_1

    .line 280
    iget-object v0, p0, Lo/RatingCompat$1;->extraCallback:Lo/containsKey$ICustomTabsCallback;

    iget-object p1, p1, Lo/RatingCompat$onPostMessage;->extraCallback:Landroid/graphics/Typeface;

    iget-object v1, p0, Lo/RatingCompat$1;->onPostMessage:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Lo/containsKey$ICustomTabsCallback;->onMessageChannelReady(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    return-void

    .line 282
    :cond_1
    iget-object v0, p0, Lo/RatingCompat$1;->extraCallback:Lo/containsKey$ICustomTabsCallback;

    iget p1, p1, Lo/RatingCompat$onPostMessage;->onNavigationEvent:I

    iget-object v1, p0, Lo/RatingCompat$1;->onPostMessage:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Lo/containsKey$ICustomTabsCallback;->onMessageChannelReady(ILandroid/os/Handler;)V

    return-void
.end method
