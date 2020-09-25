.class public final Lo/cH$ICustomTabsCallback$Stub$onPostMessage;
.super Lo/fa$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cH$ICustomTabsCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa$onNavigationEvent<",
        "Lo/cH$ICustomTabsCallback$Stub;",
        "Lo/cH$ICustomTabsCallback$Stub$onPostMessage;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/cH$ICustomTabsCallback$Stub;->onPostMessage()Lo/cH$ICustomTabsCallback$Stub;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fa$onNavigationEvent;-><init>(Lo/fa;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/cI;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lo/cH$ICustomTabsCallback$Stub$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/cH$onPostMessage$onNavigationEvent;)Lo/cH$ICustomTabsCallback$Stub$onPostMessage;
    .locals 1

    .line 4
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 7
    :cond_0
    iget-object v0, p0, Lo/cH$ICustomTabsCallback$Stub$onPostMessage;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$ICustomTabsCallback$Stub;

    invoke-virtual {p1}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object p1

    check-cast p1, Lo/fa;

    check-cast p1, Lo/cH$onPostMessage;

    invoke-static {v0, p1}, Lo/cH$ICustomTabsCallback$Stub;->extraCallback(Lo/cH$ICustomTabsCallback$Stub;Lo/cH$onPostMessage;)V

    return-object p0
.end method
