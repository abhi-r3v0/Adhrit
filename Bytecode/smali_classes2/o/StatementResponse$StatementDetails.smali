.class public final Lo/StatementResponse$StatementDetails;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Z

.field private final onMessageChannelReady:Z

.field private final onNavigationEvent:Z


# direct methods
.method public constructor <init>(Lo/WinLuckyNumberResponseJsonAdapter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lo/WinLuckyNumberResponseJsonAdapter;->ICustomTabsCallback:Z

    iput-boolean v0, p0, Lo/StatementResponse$StatementDetails;->onMessageChannelReady:Z

    iget-boolean v0, p1, Lo/WinLuckyNumberResponseJsonAdapter;->onPostMessage:Z

    iput-boolean v0, p0, Lo/StatementResponse$StatementDetails;->onNavigationEvent:Z

    iget-boolean p1, p1, Lo/WinLuckyNumberResponseJsonAdapter;->onMessageChannelReady:Z

    iput-boolean p1, p0, Lo/StatementResponse$StatementDetails;->ICustomTabsCallback:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 1

    iget-boolean v0, p0, Lo/StatementResponse$StatementDetails;->onNavigationEvent:Z

    return v0
.end method

.method public final extraCallback()Z
    .locals 1

    iget-boolean v0, p0, Lo/StatementResponse$StatementDetails;->onMessageChannelReady:Z

    return v0
.end method

.method public final onPostMessage()Z
    .locals 1

    iget-boolean v0, p0, Lo/StatementResponse$StatementDetails;->ICustomTabsCallback:Z

    return v0
.end method
