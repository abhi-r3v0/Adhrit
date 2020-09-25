.class Lo/MediaMetadataCompat$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaMetadataCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MediaMetadataCompat$1;->onMessageChannelReady(Lo/MediaDescriptionCompatApi23$onNavigationEvent;I)Lo/MediaDescriptionCompatApi23$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/MediaMetadataCompat$1$onMessageChannelReady<",
        "Lo/MediaDescriptionCompatApi23$onPostMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/MediaMetadataCompat$1;


# direct methods
.method constructor <init>(Lo/MediaMetadataCompat$1;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lo/MediaMetadataCompat$1$1;->ICustomTabsCallback:Lo/MediaMetadataCompat$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic extraCallback(Ljava/lang/Object;)Z
    .locals 0

    .line 153
    check-cast p1, Lo/MediaDescriptionCompatApi23$onPostMessage;

    invoke-virtual {p0, p1}, Lo/MediaMetadataCompat$1$1;->extraCallback(Lo/MediaDescriptionCompatApi23$onPostMessage;)Z

    move-result p1

    return p1
.end method

.method public extraCallback(Lo/MediaDescriptionCompatApi23$onPostMessage;)Z
    .locals 0

    .line 161
    invoke-virtual {p1}, Lo/MediaDescriptionCompatApi23$onPostMessage;->ICustomTabsCallback()Z

    move-result p1

    return p1
.end method

.method public synthetic onMessageChannelReady(Ljava/lang/Object;)I
    .locals 0

    .line 153
    check-cast p1, Lo/MediaDescriptionCompatApi23$onPostMessage;

    invoke-virtual {p0, p1}, Lo/MediaMetadataCompat$1$1;->onPostMessage(Lo/MediaDescriptionCompatApi23$onPostMessage;)I

    move-result p1

    return p1
.end method

.method public onPostMessage(Lo/MediaDescriptionCompatApi23$onPostMessage;)I
    .locals 0

    .line 156
    invoke-virtual {p1}, Lo/MediaDescriptionCompatApi23$onPostMessage;->extraCallback()I

    move-result p1

    return p1
.end method
