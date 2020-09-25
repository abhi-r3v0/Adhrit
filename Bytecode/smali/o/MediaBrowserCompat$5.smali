.class final Lo/MediaBrowserCompat$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/IMediaControllerCallback$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MediaBrowserCompat;->onPostMessage(Lo/IMediaControllerCallback;)Lo/MediaMetadataCompat$RatingKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/MediaBrowserCompat;


# direct methods
.method constructor <init>(Lo/MediaBrowserCompat;)V
    .locals 0

    .line 806
    iput-object p1, p0, Lo/MediaBrowserCompat$5;->onNavigationEvent:Lo/MediaBrowserCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()V
    .locals 2

    .line 809
    iget-object v0, p0, Lo/MediaBrowserCompat$5;->onNavigationEvent:Lo/MediaBrowserCompat;

    iget-object v0, v0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    const/4 v1, 0x1

    .line 2101
    iput-boolean v1, v0, Lo/AudioAttributesImplBaseParcelizer;->extraCallback:Z

    .line 2102
    invoke-virtual {v0, v1}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    return-void
.end method
