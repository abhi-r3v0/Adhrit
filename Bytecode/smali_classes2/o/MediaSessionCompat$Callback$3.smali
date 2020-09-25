.class Lo/MediaSessionCompat$Callback$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onMediaButtonEvent$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MediaSessionCompat$Callback;->ICustomTabsCallback()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/MediaSessionCompat$Callback;


# direct methods
.method constructor <init>(Lo/MediaSessionCompat$Callback;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lo/MediaSessionCompat$Callback$3;->onPostMessage:Lo/MediaSessionCompat$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(I)V
    .locals 1

    .line 175
    iget-object v0, p0, Lo/MediaSessionCompat$Callback$3;->onPostMessage:Lo/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1}, Lo/MediaSessionCompat$Callback;->onPostMessage(I)V

    return-void
.end method

.method public extraCallback(I)V
    .locals 1

    .line 180
    iget-object v0, p0, Lo/MediaSessionCompat$Callback$3;->onPostMessage:Lo/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1}, Lo/MediaSessionCompat$Callback;->extraCallback(I)V

    return-void
.end method
