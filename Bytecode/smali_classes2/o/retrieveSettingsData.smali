.class public final Lo/retrieveSettingsData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/retrieveSettingsData$onNavigationEvent;
    }
.end annotation


# instance fields
.field public final extraCallback:Lo/retrieveSettingsData$onNavigationEvent;

.field public final onMessageChannelReady:Z

.field public final onPostMessage:I


# direct methods
.method public constructor <init>(Lo/retrieveSettingsData$onNavigationEvent;)V
    .locals 2

    .line 1127
    sget-object v0, Lo/getOsFile$onPostMessage;->onPostMessage:Lo/getOsFile$onPostMessage;

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 107
    invoke-direct {p0, p1, v0, v1}, Lo/retrieveSettingsData;-><init>(Lo/retrieveSettingsData$onNavigationEvent;ZI)V

    return-void
.end method

.method public constructor <init>(Lo/retrieveSettingsData$onNavigationEvent;ZI)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lo/retrieveSettingsData;->extraCallback:Lo/retrieveSettingsData$onNavigationEvent;

    .line 112
    iput-boolean p2, p0, Lo/retrieveSettingsData;->onMessageChannelReady:Z

    .line 114
    iput p3, p0, Lo/retrieveSettingsData;->onPostMessage:I

    return-void
.end method
