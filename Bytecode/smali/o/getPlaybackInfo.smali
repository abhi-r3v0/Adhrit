.class public final Lo/getPlaybackInfo;
.super Lo/setRepeatMode;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setRepeatMode<",
        "Lo/MediaControllerCompat$ICustomTabsCallback;",
        "Lo/MediaControllerCompat;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final extraCallback:Lo/setRepeatMode$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setRepeatMode$ICustomTabsCallback<",
            "Lo/MediaControllerCompat$ICustomTabsCallback;",
            "Lo/MediaControllerCompat;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lo/getPlaybackInfo$1;

    invoke-direct {v0}, Lo/getPlaybackInfo$1;-><init>()V

    sput-object v0, Lo/getPlaybackInfo;->extraCallback:Lo/setRepeatMode$ICustomTabsCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    sget-object v0, Lo/getPlaybackInfo;->extraCallback:Lo/setRepeatMode$ICustomTabsCallback;

    invoke-direct {p0, v0}, Lo/setRepeatMode;-><init>(Lo/setRepeatMode$ICustomTabsCallback;)V

    return-void
.end method
