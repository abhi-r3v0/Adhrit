.class public final Lo/getConfiguredChannel$ICustomTabsCallback;
.super Lo/getConfiguredChannel$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getConfiguredChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getConfiguredChannel$onMessageChannelReady<",
        "Lo/getConfiguredChannel$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 400
    invoke-direct {p0}, Lo/getConfiguredChannel$onMessageChannelReady;-><init>()V

    .line 401
    iget-object v0, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo/getConfiguredChannel;->postMessage:Z

    return-void
.end method


# virtual methods
.method protected final bridge synthetic onNavigationEvent()Lo/getConfiguredChannel$onMessageChannelReady;
    .locals 0

    return-object p0
.end method
