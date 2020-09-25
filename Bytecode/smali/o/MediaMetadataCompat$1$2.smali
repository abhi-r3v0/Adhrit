.class Lo/MediaMetadataCompat$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaMetadataCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MediaMetadataCompat$1;->ICustomTabsCallback([Lo/RatingCompat$onMessageChannelReady;I)Lo/RatingCompat$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/MediaMetadataCompat$1$onMessageChannelReady<",
        "Lo/RatingCompat$onMessageChannelReady;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/MediaMetadataCompat$1;


# direct methods
.method constructor <init>(Lo/MediaMetadataCompat$1;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lo/MediaMetadataCompat$1$2;->onMessageChannelReady:Lo/MediaMetadataCompat$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic extraCallback(Ljava/lang/Object;)Z
    .locals 0

    .line 99
    check-cast p1, Lo/RatingCompat$onMessageChannelReady;

    invoke-virtual {p0, p1}, Lo/MediaMetadataCompat$1$2;->onMessageChannelReady(Lo/RatingCompat$onMessageChannelReady;)Z

    move-result p1

    return p1
.end method

.method public synthetic onMessageChannelReady(Ljava/lang/Object;)I
    .locals 0

    .line 99
    check-cast p1, Lo/RatingCompat$onMessageChannelReady;

    invoke-virtual {p0, p1}, Lo/MediaMetadataCompat$1$2;->onPostMessage(Lo/RatingCompat$onMessageChannelReady;)I

    move-result p1

    return p1
.end method

.method public onMessageChannelReady(Lo/RatingCompat$onMessageChannelReady;)Z
    .locals 0

    .line 107
    invoke-virtual {p1}, Lo/RatingCompat$onMessageChannelReady;->onMessageChannelReady()Z

    move-result p1

    return p1
.end method

.method public onPostMessage(Lo/RatingCompat$onMessageChannelReady;)I
    .locals 0

    .line 102
    invoke-virtual {p1}, Lo/RatingCompat$onMessageChannelReady;->onPostMessage()I

    move-result p1

    return p1
.end method
