.class final Lo/persistUserIdForSession;
.super Lo/finalizeReports;
.source ""


# instance fields
.field private final zzdx:Lo/onPageFinished;


# direct methods
.method constructor <init>(Lo/onPageFinished;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/finalizeReports;-><init>()V

    .line 2
    iput-object p1, p0, Lo/persistUserIdForSession;->zzdx:Lo/onPageFinished;

    return-void
.end method


# virtual methods
.method public final zzbt()Z
    .locals 1

    .line 4
    iget-object v0, p0, Lo/persistUserIdForSession;->zzdx:Lo/onPageFinished;

    invoke-virtual {v0}, Lo/onPageFinished;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/persistUserIdForSession;->zzdx:Lo/onPageFinished;

    .line 5
    invoke-virtual {v0}, Lo/onPageFinished;->extraCallback()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lo/persistUserIdForSession;->zzdx:Lo/onPageFinished;

    .line 6
    invoke-virtual {v0}, Lo/onPageFinished;->onNavigationEvent()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lo/persistUserIdForSession;->zzdx:Lo/onPageFinished;

    .line 7
    invoke-virtual {v0}, Lo/onPageFinished;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/persistUserIdForSession;->zzdx:Lo/onPageFinished;

    .line 8
    invoke-virtual {v0}, Lo/onPageFinished;->ICustomTabsCallback()Lo/shouldOverrideUrlLoading;

    move-result-object v0

    invoke-virtual {v0}, Lo/shouldOverrideUrlLoading;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
