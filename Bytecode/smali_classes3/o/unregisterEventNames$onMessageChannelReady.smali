.class public Lo/unregisterEventNames$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/unregisterEventNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field public extraCallback:F

.field public onMessageChannelReady:F

.field public onNavigationEvent:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lo/unregisterEventNames$onMessageChannelReady;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput p1, p0, Lo/unregisterEventNames$onMessageChannelReady;->onMessageChannelReady:F

    .line 148
    iput p2, p0, Lo/unregisterEventNames$onMessageChannelReady;->extraCallback:F

    .line 149
    iput p3, p0, Lo/unregisterEventNames$onMessageChannelReady;->onNavigationEvent:F

    return-void
.end method

.method public constructor <init>(Lo/unregisterEventNames$onMessageChannelReady;)V
    .locals 2

    .line 153
    iget v0, p1, Lo/unregisterEventNames$onMessageChannelReady;->onMessageChannelReady:F

    iget v1, p1, Lo/unregisterEventNames$onMessageChannelReady;->extraCallback:F

    iget p1, p1, Lo/unregisterEventNames$onMessageChannelReady;->onNavigationEvent:F

    invoke-direct {p0, v0, v1, p1}, Lo/unregisterEventNames$onMessageChannelReady;-><init>(FFF)V

    return-void
.end method
