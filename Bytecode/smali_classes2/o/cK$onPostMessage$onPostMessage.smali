.class public final Lo/cK$onPostMessage$onPostMessage;
.super Lo/fa$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cK$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa$onNavigationEvent<",
        "Lo/cK$onPostMessage;",
        "Lo/cK$onPostMessage$onPostMessage;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/cK$onPostMessage;->onPostMessage()Lo/cK$onPostMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fa$onNavigationEvent;-><init>(Lo/fa;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/cL;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lo/cK$onPostMessage$onPostMessage;-><init>()V

    return-void
.end method