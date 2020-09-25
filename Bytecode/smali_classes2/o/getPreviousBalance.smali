.class public final Lo/getPreviousBalance;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getPreviousBalance$extraCallback;
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Z

.field private final extraCallback:I

.field private final onMessageChannelReady:Lo/StatementResponse$StatementDetails;

.field private final onNavigationEvent:Z

.field private final onPostMessage:I


# direct methods
.method private constructor <init>(Lo/getPreviousBalance$extraCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1000
    iget-boolean v0, p1, Lo/getPreviousBalance$extraCallback;->ICustomTabsCallback:Z

    iput-boolean v0, p0, Lo/getPreviousBalance;->ICustomTabsCallback:Z

    .line 2000
    iget v0, p1, Lo/getPreviousBalance$extraCallback;->onPostMessage:I

    iput v0, p0, Lo/getPreviousBalance;->onPostMessage:I

    .line 3000
    iget-boolean v0, p1, Lo/getPreviousBalance$extraCallback;->onNavigationEvent:Z

    iput-boolean v0, p0, Lo/getPreviousBalance;->onNavigationEvent:Z

    .line 4000
    iget v0, p1, Lo/getPreviousBalance$extraCallback;->extraCallback:I

    iput v0, p0, Lo/getPreviousBalance;->extraCallback:I

    .line 5000
    iget-object p1, p1, Lo/getPreviousBalance$extraCallback;->onMessageChannelReady:Lo/StatementResponse$StatementDetails;

    iput-object p1, p0, Lo/getPreviousBalance;->onMessageChannelReady:Lo/StatementResponse$StatementDetails;

    return-void
.end method

.method synthetic constructor <init>(Lo/getPreviousBalance$extraCallback;B)V
    .locals 0

    invoke-direct {p0, p1}, Lo/getPreviousBalance;-><init>(Lo/getPreviousBalance$extraCallback;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 1

    iget-boolean v0, p0, Lo/getPreviousBalance;->ICustomTabsCallback:Z

    return v0
.end method

.method public final extraCallback()I
    .locals 1

    iget v0, p0, Lo/getPreviousBalance;->extraCallback:I

    return v0
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    iget-boolean v0, p0, Lo/getPreviousBalance;->onNavigationEvent:Z

    return v0
.end method

.method public final onNavigationEvent()Lo/StatementResponse$StatementDetails;
    .locals 1

    iget-object v0, p0, Lo/getPreviousBalance;->onMessageChannelReady:Lo/StatementResponse$StatementDetails;

    return-object v0
.end method

.method public final onPostMessage()I
    .locals 1

    iget v0, p0, Lo/getPreviousBalance;->onPostMessage:I

    return v0
.end method
