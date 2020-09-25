.class final Lo/getPlaybackInfo$1;
.super Lo/setRepeatMode$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPlaybackInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setRepeatMode$ICustomTabsCallback<",
        "Lo/MediaControllerCompat$ICustomTabsCallback;",
        "Lo/MediaControllerCompat;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lo/setRepeatMode$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 26
    check-cast p1, Lo/MediaControllerCompat$ICustomTabsCallback;

    check-cast p2, Lo/MediaControllerCompat;

    .line 1030
    invoke-virtual {p1, p2, p3}, Lo/MediaControllerCompat$ICustomTabsCallback;->extraCallback(Lo/MediaControllerCompat;I)V

    return-void
.end method
