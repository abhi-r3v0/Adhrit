.class public final Lo/dA$extraCallback;
.super Lo/fU$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/dA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fU$onNavigationEvent<",
        "Lo/dA;",
        "Lo/dA$extraCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/dA;->onMessageChannelReady()Lo/dA;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fU$onNavigationEvent;-><init>(Lo/fU;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/ArticleDetailActivity$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lo/dA$extraCallback;-><init>()V

    return-void
.end method
