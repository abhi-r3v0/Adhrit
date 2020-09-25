.class Lo/newPercentageRating$extraCallback;
.super Lo/newPercentageRating$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/newPercentageRating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field private final onMessageChannelReady:Z


# direct methods
.method constructor <init>(Lo/newPercentageRating$onNavigationEvent;Z)V
    .locals 0

    .line 156
    invoke-direct {p0, p1}, Lo/newPercentageRating$onPostMessage;-><init>(Lo/newPercentageRating$onNavigationEvent;)V

    .line 157
    iput-boolean p2, p0, Lo/newPercentageRating$extraCallback;->onMessageChannelReady:Z

    return-void
.end method


# virtual methods
.method protected onMessageChannelReady()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lo/newPercentageRating$extraCallback;->onMessageChannelReady:Z

    return v0
.end method
