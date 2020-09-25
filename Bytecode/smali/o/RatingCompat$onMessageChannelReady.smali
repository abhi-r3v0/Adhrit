.class public Lo/RatingCompat$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RatingCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final ICustomTabsCallback:I

.field private final extraCallback:I

.field private final onMessageChannelReady:Landroid/net/Uri;

.field private final onNavigationEvent:I

.field private final onPostMessage:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;IIZI)V
    .locals 0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 347
    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lo/RatingCompat$onMessageChannelReady;->onMessageChannelReady:Landroid/net/Uri;

    .line 348
    iput p2, p0, Lo/RatingCompat$onMessageChannelReady;->extraCallback:I

    .line 349
    iput p3, p0, Lo/RatingCompat$onMessageChannelReady;->ICustomTabsCallback:I

    .line 350
    iput-boolean p4, p0, Lo/RatingCompat$onMessageChannelReady;->onPostMessage:Z

    .line 351
    iput p5, p0, Lo/RatingCompat$onMessageChannelReady;->onNavigationEvent:I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1064
    throw p1
.end method


# virtual methods
.method public ICustomTabsCallback()Landroid/net/Uri;
    .locals 1

    .line 358
    iget-object v0, p0, Lo/RatingCompat$onMessageChannelReady;->onMessageChannelReady:Landroid/net/Uri;

    return-object v0
.end method

.method public extraCallback()I
    .locals 1

    .line 365
    iget v0, p0, Lo/RatingCompat$onMessageChannelReady;->extraCallback:I

    return v0
.end method

.method public onMessageChannelReady()Z
    .locals 1

    .line 379
    iget-boolean v0, p0, Lo/RatingCompat$onMessageChannelReady;->onPostMessage:Z

    return v0
.end method

.method public onNavigationEvent()I
    .locals 1

    .line 388
    iget v0, p0, Lo/RatingCompat$onMessageChannelReady;->onNavigationEvent:I

    return v0
.end method

.method public onPostMessage()I
    .locals 1

    .line 372
    iget v0, p0, Lo/RatingCompat$onMessageChannelReady;->ICustomTabsCallback:I

    return v0
.end method
