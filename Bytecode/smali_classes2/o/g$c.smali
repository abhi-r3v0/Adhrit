.class public Lo/g$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageChannelReady(Lo/allow;I)Z
    .locals 0

    .line 40
    invoke-interface {p1, p2}, Lo/allow;->onMessageChannelReady(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onMessageChannelReady(Lo/allow;IJ)Z
    .locals 0

    .line 34
    invoke-interface {p1, p2, p3, p4}, Lo/allow;->extraCallback(IJ)V

    const/4 p1, 0x1

    return p1
.end method

.method public onMessageChannelReady(Lo/allow;Z)Z
    .locals 0

    .line 28
    invoke-interface {p1, p2}, Lo/allow;->onNavigationEvent(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public onPostMessage(Lo/allow;Z)Z
    .locals 0

    .line 46
    invoke-interface {p1, p2}, Lo/allow;->onPostMessage(Z)V

    const/4 p1, 0x1

    return p1
.end method
