.class Lo/setHintEnabled;
.super Lo/setChipTextResource;
.source ""


# instance fields
.field protected final extraCallback:Lo/setHint;


# direct methods
.method constructor <init>(Lo/setHint;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lo/setHint;->IPostMessageService()Lo/setCheckedIcon;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/setChipTextResource;-><init>(Lo/setCheckedIcon;)V

    .line 2
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lo/setHintEnabled;->extraCallback:Lo/setHint;

    return-void
.end method


# virtual methods
.method public L_()Lo/setClickable;
    .locals 1

    .line 5
    iget-object v0, p0, Lo/setHintEnabled;->extraCallback:Lo/setHint;

    invoke-virtual {v0}, Lo/setHint;->ICustomTabsCallback()Lo/setClickable;

    move-result-object v0

    return-object v0
.end method

.method public M_()Lo/zzzv;
    .locals 1

    .line 6
    iget-object v0, p0, Lo/setHintEnabled;->extraCallback:Lo/setHint;

    invoke-virtual {v0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v0

    return-object v0
.end method

.method public N_()Lo/setErrorIconTintMode;
    .locals 1

    .line 7
    iget-object v0, p0, Lo/setHintEnabled;->extraCallback:Lo/setHint;

    invoke-virtual {v0}, Lo/setHint;->onRelationshipValidationResult()Lo/setErrorIconTintMode;

    move-result-object v0

    return-object v0
.end method

.method public O_()Lo/setErrorTextColor;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/setHintEnabled;->extraCallback:Lo/setHint;

    invoke-virtual {v0}, Lo/setHint;->ICustomTabsCallback$Stub()Lo/setErrorTextColor;

    move-result-object v0

    return-object v0
.end method

.method public P_()Lo/FloatingActionButton$BaseBehavior;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/setHintEnabled;->extraCallback:Lo/setHint;

    invoke-virtual {v0}, Lo/setHint;->asBinder()Lo/FloatingActionButton$BaseBehavior;

    move-result-object v0

    return-object v0
.end method
