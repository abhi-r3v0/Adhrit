.class public final Lo/beginTransaction$onMessageChannelReady$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/beginTransaction$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field public extraCallback:Lo/deleteTrackedQuery;

.field public onMessageChannelReady:Lo/serverCacheEstimatedSizeInBytes;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    sget-object v0, Lo/serverCacheEstimatedSizeInBytes;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

    iput-object v0, p0, Lo/beginTransaction$onMessageChannelReady$onMessageChannelReady;->onMessageChannelReady:Lo/serverCacheEstimatedSizeInBytes;

    .line 158
    sget-object v0, Lo/deleteTrackedQuery;->onPostMessage:Lo/deleteTrackedQuery;

    iput-object v0, p0, Lo/beginTransaction$onMessageChannelReady$onMessageChannelReady;->extraCallback:Lo/deleteTrackedQuery;

    return-void
.end method
