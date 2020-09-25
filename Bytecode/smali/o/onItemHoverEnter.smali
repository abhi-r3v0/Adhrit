.class public final Lo/onItemHoverEnter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onItemHoverEnter$ICustomTabsCallback;,
        Lo/onItemHoverEnter$onPostMessage;,
        Lo/onItemHoverEnter$extraCallback;,
        Lo/onItemHoverEnter$onMessageChannelReady;,
        Lo/onItemHoverEnter$onNavigationEvent;,
        Lo/onItemHoverEnter$onTransact;,
        Lo/onItemHoverEnter$ICustomTabsCallback$Stub;,
        Lo/onItemHoverEnter$onRelationshipValidationResult;,
        Lo/onItemHoverEnter$asBinder;
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:D

.field public ICustomTabsCallback$Stub:I

.field public asBinder:I

.field public extraCallback:[D

.field public onMessageChannelReady:D

.field public onNavigationEvent:[D

.field public onPostMessage:I

.field public onTransact:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x3fa999999999999aL    # 0.05

    .line 1006
    iput-wide v0, p0, Lo/onItemHoverEnter;->ICustomTabsCallback:D

    .line 1007
    iput-wide v0, p0, Lo/onItemHoverEnter;->onMessageChannelReady:D

    const/16 v0, 0x80

    .line 1009
    iput v0, p0, Lo/onItemHoverEnter;->onPostMessage:I

    .line 1010
    iput v0, p0, Lo/onItemHoverEnter;->onTransact:I

    const/16 v0, 0x157c

    .line 1011
    iput v0, p0, Lo/onItemHoverEnter;->ICustomTabsCallback$Stub:I

    const/16 v0, 0x898

    .line 1012
    iput v0, p0, Lo/onItemHoverEnter;->asBinder:I

    return-void
.end method
