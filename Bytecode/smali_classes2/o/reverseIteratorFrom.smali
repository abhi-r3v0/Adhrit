.class public abstract Lo/reverseIteratorFrom;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/reverseIteratorFrom$onPostMessage;,
        Lo/reverseIteratorFrom$asInterface;,
        Lo/reverseIteratorFrom$onRelationshipValidationResult;,
        Lo/reverseIteratorFrom$onMessageChannelReady;,
        Lo/reverseIteratorFrom$onNavigationEvent;,
        Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;,
        Lo/reverseIteratorFrom$ICustomTabsCallback;,
        Lo/reverseIteratorFrom$extraCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()V
    .locals 0

    return-void
.end method

.method public abstract extraCallback()Ljava/lang/String;
.end method

.method public onMessageChannelReady(Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;)V
    .locals 1

    .line 1079
    instance-of v0, p1, Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;

    if-eqz v0, :cond_0

    .line 1080
    check-cast p1, Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;

    invoke-virtual {p0, p1}, Lo/reverseIteratorFrom;->onMessageChannelReady(Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;)V

    return-void

    .line 1082
    :cond_0
    new-instance v0, Lo/reverseIteratorFrom$5;

    invoke-direct {v0, p1}, Lo/reverseIteratorFrom$5;-><init>(Lo/reverseIteratorFrom$ICustomTabsCallback;)V

    invoke-virtual {p0, v0}, Lo/reverseIteratorFrom;->onMessageChannelReady(Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;)V

    return-void
.end method

.method public abstract onNavigationEvent()V
.end method
