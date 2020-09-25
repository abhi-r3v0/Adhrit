.class public final Lo/initRequest$onNavigationEvent;
.super Lo/onResponse$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/initRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private onMessageChannelReady:Lo/onResponse$ICustomTabsCallback;

.field private onPostMessage:Lo/onResponse$onMessageChannelReady;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/onResponse$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/onResponse$onMessageChannelReady;)Lo/onResponse$onNavigationEvent;
    .locals 0

    .line 1
    iput-object p1, p0, Lo/initRequest$onNavigationEvent;->onPostMessage:Lo/onResponse$onMessageChannelReady;

    return-object p0
.end method

.method public final extraCallback()Lo/onResponse;
    .locals 3

    .line 3
    new-instance v0, Lo/initRequest;

    iget-object v1, p0, Lo/initRequest$onNavigationEvent;->onPostMessage:Lo/onResponse$onMessageChannelReady;

    iget-object v2, p0, Lo/initRequest$onNavigationEvent;->onMessageChannelReady:Lo/onResponse$ICustomTabsCallback;

    invoke-direct {v0, v1, v2}, Lo/initRequest;-><init>(Lo/onResponse$onMessageChannelReady;Lo/onResponse$ICustomTabsCallback;)V

    return-object v0
.end method

.method public final onNavigationEvent(Lo/onResponse$ICustomTabsCallback;)Lo/onResponse$onNavigationEvent;
    .locals 0

    .line 2
    iput-object p1, p0, Lo/initRequest$onNavigationEvent;->onMessageChannelReady:Lo/onResponse$ICustomTabsCallback;

    return-object p0
.end method
