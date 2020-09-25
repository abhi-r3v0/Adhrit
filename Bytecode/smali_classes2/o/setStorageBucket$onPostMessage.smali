.class public final Lo/setStorageBucket$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setStorageBucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation


# instance fields
.field ICustomTabsCallback:I

.field asBinder:I

.field extraCallback:J

.field onMessageChannelReady:I

.field onNavigationEvent:I

.field onPostMessage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lo/setStorageBucket$onPostMessage;->asBinder:I

    return-void
.end method

.method public constructor <init>(Lo/setStorageBucket$onPostMessage;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lo/setStorageBucket$onPostMessage;->asBinder:I

    .line 1013
    iget v0, p1, Lo/setStorageBucket$onPostMessage;->onNavigationEvent:I

    .line 6
    iput v0, p0, Lo/setStorageBucket$onPostMessage;->onNavigationEvent:I

    .line 1014
    iget v0, p1, Lo/setStorageBucket$onPostMessage;->ICustomTabsCallback:I

    .line 7
    iput v0, p0, Lo/setStorageBucket$onPostMessage;->ICustomTabsCallback:I

    .line 1015
    iget v0, p1, Lo/setStorageBucket$onPostMessage;->onPostMessage:I

    .line 8
    iput v0, p0, Lo/setStorageBucket$onPostMessage;->onPostMessage:I

    .line 1016
    iget-wide v0, p1, Lo/setStorageBucket$onPostMessage;->extraCallback:J

    .line 9
    iput-wide v0, p0, Lo/setStorageBucket$onPostMessage;->extraCallback:J

    .line 1017
    iget v0, p1, Lo/setStorageBucket$onPostMessage;->onMessageChannelReady:I

    .line 10
    iput v0, p0, Lo/setStorageBucket$onPostMessage;->onMessageChannelReady:I

    .line 1018
    iget p1, p1, Lo/setStorageBucket$onPostMessage;->asBinder:I

    .line 11
    iput p1, p0, Lo/setStorageBucket$onPostMessage;->asBinder:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lo/setStorageBucket$onPostMessage;->extraCallback:J

    return-wide v0
.end method

.method public final extraCallback()I
    .locals 1

    .line 13
    iget v0, p0, Lo/setStorageBucket$onPostMessage;->onNavigationEvent:I

    return v0
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 14
    iget v0, p0, Lo/setStorageBucket$onPostMessage;->ICustomTabsCallback:I

    return v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 17
    iget v0, p0, Lo/setStorageBucket$onPostMessage;->onMessageChannelReady:I

    return v0
.end method

.method public final onPostMessage()I
    .locals 1

    .line 15
    iget v0, p0, Lo/setStorageBucket$onPostMessage;->onPostMessage:I

    return v0
.end method
