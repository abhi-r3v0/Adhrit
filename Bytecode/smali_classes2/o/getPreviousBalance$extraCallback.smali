.class public final Lo/getPreviousBalance$extraCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPreviousBalance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# instance fields
.field ICustomTabsCallback:Z

.field extraCallback:I

.field onMessageChannelReady:Lo/StatementResponse$StatementDetails;

.field onNavigationEvent:Z

.field onPostMessage:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/getPreviousBalance$extraCallback;->ICustomTabsCallback:Z

    const/4 v1, -0x1

    iput v1, p0, Lo/getPreviousBalance$extraCallback;->onPostMessage:I

    iput-boolean v0, p0, Lo/getPreviousBalance$extraCallback;->onNavigationEvent:Z

    const/4 v0, 0x1

    iput v0, p0, Lo/getPreviousBalance$extraCallback;->extraCallback:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Z)Lo/getPreviousBalance$extraCallback;
    .locals 0

    iput-boolean p1, p0, Lo/getPreviousBalance$extraCallback;->onNavigationEvent:Z

    return-object p0
.end method

.method public final ICustomTabsCallback()Lo/getPreviousBalance;
    .locals 2

    new-instance v0, Lo/getPreviousBalance;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/getPreviousBalance;-><init>(Lo/getPreviousBalance$extraCallback;B)V

    return-object v0
.end method

.method public final extraCallback(Lo/StatementResponse$StatementDetails;)Lo/getPreviousBalance$extraCallback;
    .locals 0

    iput-object p1, p0, Lo/getPreviousBalance$extraCallback;->onMessageChannelReady:Lo/StatementResponse$StatementDetails;

    return-object p0
.end method

.method public final onMessageChannelReady(I)Lo/getPreviousBalance$extraCallback;
    .locals 0

    iput p1, p0, Lo/getPreviousBalance$extraCallback;->extraCallback:I

    return-object p0
.end method

.method public final onNavigationEvent(I)Lo/getPreviousBalance$extraCallback;
    .locals 0

    iput p1, p0, Lo/getPreviousBalance$extraCallback;->onPostMessage:I

    return-object p0
.end method

.method public final onNavigationEvent(Z)Lo/getPreviousBalance$extraCallback;
    .locals 0

    iput-boolean p1, p0, Lo/getPreviousBalance$extraCallback;->ICustomTabsCallback:Z

    return-object p0
.end method
