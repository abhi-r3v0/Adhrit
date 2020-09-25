.class public final Lo/onChildRemoved$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onChildRemoved;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field public ICustomTabsCallback:Z

.field ICustomTabsCallback$Stub:Z

.field extraCallback:I

.field onMessageChannelReady:I

.field public onNavigationEvent:Z

.field onPostMessage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 275
    iput v0, p0, Lo/onChildRemoved$onMessageChannelReady;->onMessageChannelReady:I

    .line 276
    iput v0, p0, Lo/onChildRemoved$onMessageChannelReady;->onPostMessage:I

    .line 277
    iput v0, p0, Lo/onChildRemoved$onMessageChannelReady;->extraCallback:I

    return-void
.end method
