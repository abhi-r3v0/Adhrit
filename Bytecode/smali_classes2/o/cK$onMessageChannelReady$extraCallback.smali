.class public final Lo/cK$onMessageChannelReady$extraCallback;
.super Lo/fa$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cK$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa$onNavigationEvent<",
        "Lo/cK$onMessageChannelReady;",
        "Lo/cK$onMessageChannelReady$extraCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/cK$onMessageChannelReady;->onPostMessage()Lo/cK$onMessageChannelReady;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fa$onNavigationEvent;-><init>(Lo/fa;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/cL;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lo/cK$onMessageChannelReady$extraCallback;-><init>()V

    return-void
.end method
