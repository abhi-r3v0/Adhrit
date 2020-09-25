.class public Lo/MediaControllerCompat$TransportControlsApi24;
.super Lo/setQueue;
.source ""


# instance fields
.field public onPostMessage:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/setQueue;-><init>()V

    .line 35
    iput-object p1, p0, Lo/MediaControllerCompat$TransportControlsApi24;->onPostMessage:Landroid/app/Application;

    return-void
.end method
