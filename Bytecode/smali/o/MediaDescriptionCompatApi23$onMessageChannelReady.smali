.class public final Lo/MediaDescriptionCompatApi23$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaDescriptionCompatApi23$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaDescriptionCompatApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final extraCallback:Lo/extraCallback$onPostMessage;

.field private final onMessageChannelReady:I

.field private final onNavigationEvent:I


# direct methods
.method public constructor <init>(Lo/extraCallback$onPostMessage;II)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lo/MediaDescriptionCompatApi23$onMessageChannelReady;->extraCallback:Lo/extraCallback$onPostMessage;

    .line 84
    iput p2, p0, Lo/MediaDescriptionCompatApi23$onMessageChannelReady;->onMessageChannelReady:I

    .line 85
    iput p3, p0, Lo/MediaDescriptionCompatApi23$onMessageChannelReady;->onNavigationEvent:I

    return-void
.end method


# virtual methods
.method public final extraCallback()I
    .locals 1

    .line 97
    iget v0, p0, Lo/MediaDescriptionCompatApi23$onMessageChannelReady;->onNavigationEvent:I

    return v0
.end method

.method public final onMessageChannelReady()Lo/extraCallback$onPostMessage;
    .locals 1

    .line 89
    iget-object v0, p0, Lo/MediaDescriptionCompatApi23$onMessageChannelReady;->extraCallback:Lo/extraCallback$onPostMessage;

    return-object v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 93
    iget v0, p0, Lo/MediaDescriptionCompatApi23$onMessageChannelReady;->onMessageChannelReady:I

    return v0
.end method
