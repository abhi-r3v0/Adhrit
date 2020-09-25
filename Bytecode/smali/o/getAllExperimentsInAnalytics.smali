.class public Lo/getAllExperimentsInAnalytics;
.super Lo/newSession;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lo/newSession;-><init>()V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 42
    new-instance p1, Lo/createAbtInstance;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lo/onAudioInfoChanged;->asBinder()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lo/createAbtInstance;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public m_()V
    .locals 2

    .line 1064
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->l_()Landroid/app/Dialog;

    move-result-object v0

    .line 1065
    instance-of v1, v0, Lo/createAbtInstance;

    if-eqz v1, :cond_0

    .line 1066
    check-cast v0, Lo/createAbtInstance;

    .line 1159
    iget-object v1, v0, Lo/createAbtInstance;->onTransact:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v1, :cond_0

    .line 1161
    invoke-virtual {v0}, Lo/createAbtInstance;->ICustomTabsCallback()Landroid/widget/FrameLayout;

    .line 48
    :cond_0
    invoke-super {p0}, Lo/newSession;->m_()V

    return-void
.end method

.method public onMessageChannelReady()V
    .locals 2

    .line 3064
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->l_()Landroid/app/Dialog;

    move-result-object v0

    .line 3065
    instance-of v1, v0, Lo/createAbtInstance;

    if-eqz v1, :cond_0

    .line 3066
    check-cast v0, Lo/createAbtInstance;

    .line 3159
    iget-object v1, v0, Lo/createAbtInstance;->onTransact:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v1, :cond_0

    .line 3161
    invoke-virtual {v0}, Lo/createAbtInstance;->ICustomTabsCallback()Landroid/widget/FrameLayout;

    .line 55
    :cond_0
    invoke-super {p0}, Lo/newSession;->onMessageChannelReady()V

    return-void
.end method
