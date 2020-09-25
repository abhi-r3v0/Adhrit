.class public final Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaControllerCompat$MediaControllerImplApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field ICustomTabsCallback:I

.field asBinder:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

.field asInterface:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

.field extraCallback:I

.field onMessageChannelReady:Landroidx/fragment/app/Fragment;

.field onNavigationEvent:I

.field onPostMessage:I

.field onTransact:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILandroidx/fragment/app/Fragment;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->extraCallback:I

    .line 78
    iput-object p2, p0, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    .line 79
    sget-object p1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    iput-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->asInterface:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 80
    sget-object p1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    iput-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->asBinder:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/Fragment;Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 84
    iput v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->extraCallback:I

    .line 85
    iput-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    .line 86
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mMaxState:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    iput-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->asInterface:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 87
    iput-object p2, p0, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->asBinder:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    return-void
.end method
