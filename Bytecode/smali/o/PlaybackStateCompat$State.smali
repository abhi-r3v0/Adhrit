.class public final Lo/PlaybackStateCompat$State;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PlaybackStateCompat$State$ICustomTabsCallback;,
        Lo/PlaybackStateCompat$State$onMessageChannelReady;
    }
.end annotation


# static fields
.field public static ICustomTabsCallback:Lo/MediaSessionCompat$MediaSessionImplApi18$1;

.field public static extraCallback:Lo/MediaSessionCompat$MediaSessionImplApi18$1;

.field public static onMessageChannelReady:Lo/MediaSessionCompat$MediaSessionImplApi18$1;

.field public static onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImplApi18$1;

.field public static onPostMessage:Lo/MediaSessionCompat$MediaSessionImplApi18$1;

.field public static onTransact:Lo/MediaSessionCompat$MediaSessionImplApi18$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Lo/PlaybackStateCompat$State$2;

    invoke-direct {v0}, Lo/PlaybackStateCompat$State$2;-><init>()V

    sput-object v0, Lo/PlaybackStateCompat$State;->ICustomTabsCallback:Lo/MediaSessionCompat$MediaSessionImplApi18$1;

    .line 159
    new-instance v0, Lo/PlaybackStateCompat$State$1;

    invoke-direct {v0}, Lo/PlaybackStateCompat$State$1;-><init>()V

    sput-object v0, Lo/PlaybackStateCompat$State;->onPostMessage:Lo/MediaSessionCompat$MediaSessionImplApi18$1;

    .line 172
    new-instance v0, Lo/PlaybackStateCompat$State$5;

    invoke-direct {v0}, Lo/PlaybackStateCompat$State$5;-><init>()V

    sput-object v0, Lo/PlaybackStateCompat$State;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImplApi18$1;

    .line 184
    new-instance v0, Lo/PlaybackStateCompat$State$4;

    invoke-direct {v0}, Lo/PlaybackStateCompat$State$4;-><init>()V

    sput-object v0, Lo/PlaybackStateCompat$State;->onMessageChannelReady:Lo/MediaSessionCompat$MediaSessionImplApi18$1;

    .line 195
    new-instance v0, Lo/PlaybackStateCompat$State$3;

    invoke-direct {v0}, Lo/PlaybackStateCompat$State$3;-><init>()V

    sput-object v0, Lo/PlaybackStateCompat$State;->extraCallback:Lo/MediaSessionCompat$MediaSessionImplApi18$1;

    .line 206
    new-instance v0, Lo/PlaybackStateCompat$State$8;

    invoke-direct {v0}, Lo/PlaybackStateCompat$State$8;-><init>()V

    sput-object v0, Lo/PlaybackStateCompat$State;->onTransact:Lo/MediaSessionCompat$MediaSessionImplApi18$1;

    return-void
.end method
