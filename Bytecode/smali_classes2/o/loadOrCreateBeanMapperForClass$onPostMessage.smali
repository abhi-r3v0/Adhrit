.class public final Lo/loadOrCreateBeanMapperForClass$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/loadOrCreateBeanMapperForClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# instance fields
.field ICustomTabsCallback:Z

.field extraCallback:I

.field onMessageChannelReady:I

.field onNavigationEvent:I

.field public onPostMessage:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 281
    iput v0, p0, Lo/loadOrCreateBeanMapperForClass$onPostMessage;->extraCallback:I

    .line 282
    iput v0, p0, Lo/loadOrCreateBeanMapperForClass$onPostMessage;->onNavigationEvent:I

    .line 283
    iput v0, p0, Lo/loadOrCreateBeanMapperForClass$onPostMessage;->onMessageChannelReady:I

    return-void
.end method
