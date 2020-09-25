.class public final Lo/ez$onMessageChannelReady;
.super Lo/fU$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ez;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fU$onNavigationEvent<",
        "Lo/ez;",
        "Lo/ez$onMessageChannelReady;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/ez;->extraCallback()Lo/ez;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fU$onNavigationEvent;-><init>(Lo/fU;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/eA;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lo/ez$onMessageChannelReady;-><init>()V

    return-void
.end method
