.class public final Lo/getErrorCode$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field ICustomTabsCallback:J

.field extraCallback:Lo/getErrorMessage;

.field onMessageChannelReady:J

.field public onNavigationEvent:Lo/addCustomAction;

.field public onPostMessage:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    sget-object v0, Lo/addCustomAction;->onNavigationEvent:Lo/addCustomAction;

    iput-object v0, p0, Lo/getErrorCode$onMessageChannelReady;->onNavigationEvent:Lo/addCustomAction;

    const/4 v0, 0x0

    .line 286
    iput-boolean v0, p0, Lo/getErrorCode$onMessageChannelReady;->onPostMessage:Z

    const-wide/16 v0, -0x1

    .line 289
    iput-wide v0, p0, Lo/getErrorCode$onMessageChannelReady;->ICustomTabsCallback:J

    .line 290
    iput-wide v0, p0, Lo/getErrorCode$onMessageChannelReady;->onMessageChannelReady:J

    .line 291
    new-instance v0, Lo/getErrorMessage;

    invoke-direct {v0}, Lo/getErrorMessage;-><init>()V

    iput-object v0, p0, Lo/getErrorCode$onMessageChannelReady;->extraCallback:Lo/getErrorMessage;

    return-void
.end method
