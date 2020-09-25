.class Lo/RatingCompat$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/util/concurrent/Callable<",
        "Lo/RatingCompat$onPostMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/extraCallback$onPostMessage;

.field final synthetic onMessageChannelReady:Ljava/lang/String;

.field final synthetic onNavigationEvent:I

.field final synthetic onPostMessage:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/extraCallback$onPostMessage;ILjava/lang/String;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lo/RatingCompat$2;->onPostMessage:Landroid/content/Context;

    iput-object p2, p0, Lo/RatingCompat$2;->extraCallback:Lo/extraCallback$onPostMessage;

    iput p3, p0, Lo/RatingCompat$2;->onNavigationEvent:I

    iput-object p4, p0, Lo/RatingCompat$2;->onMessageChannelReady:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 254
    invoke-virtual {p0}, Lo/RatingCompat$2;->onNavigationEvent()Lo/RatingCompat$onPostMessage;

    move-result-object v0

    return-object v0
.end method

.method public onNavigationEvent()Lo/RatingCompat$onPostMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lo/RatingCompat$2;->onPostMessage:Landroid/content/Context;

    iget-object v1, p0, Lo/RatingCompat$2;->extraCallback:Lo/extraCallback$onPostMessage;

    iget v2, p0, Lo/RatingCompat$2;->onNavigationEvent:I

    invoke-static {v0, v1, v2}, Lo/RatingCompat;->extraCallback(Landroid/content/Context;Lo/extraCallback$onPostMessage;I)Lo/RatingCompat$onPostMessage;

    move-result-object v0

    .line 258
    iget-object v1, v0, Lo/RatingCompat$onPostMessage;->extraCallback:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 259
    sget-object v1, Lo/RatingCompat;->extraCallback:Lo/fromMediaItem;

    iget-object v2, p0, Lo/RatingCompat$2;->onMessageChannelReady:Ljava/lang/String;

    iget-object v3, v0, Lo/RatingCompat$onPostMessage;->extraCallback:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2, v3}, Lo/fromMediaItem;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
