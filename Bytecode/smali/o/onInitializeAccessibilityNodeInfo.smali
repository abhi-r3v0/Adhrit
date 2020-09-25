.class public final Lo/onInitializeAccessibilityNodeInfo;
.super Lo/onTextChanged;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lo/onTextChanged;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()Lo/getSupportCompoundDrawablesTintList;
    .locals 3

    .line 11
    new-instance v0, Lo/ParcelableVolumeInfo$1;

    invoke-direct {v0}, Lo/ParcelableVolumeInfo$1;-><init>()V

    .line 12
    iget v1, p0, Lo/onTextChanged;->ICustomTabsCallback:I

    if-eqz v1, :cond_0

    .line 13
    new-instance v1, Lo/getAutoSizeMinTextSize;

    iget v2, p0, Lo/onTextChanged;->ICustomTabsCallback:I

    invoke-direct {v1, v0, v2}, Lo/getAutoSizeMinTextSize;-><init>(Lo/getSupportCompoundDrawablesTintList;I)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public final onMessageChannelReady()Lo/getSupportCompoundDrawablesTintList;
    .locals 3

    .line 21
    new-instance v0, Lo/getAction;

    invoke-direct {v0}, Lo/getAction;-><init>()V

    .line 22
    iget v1, p0, Lo/onTextChanged;->ICustomTabsCallback:I

    if-eqz v1, :cond_0

    .line 23
    new-instance v1, Lo/getAutoSizeStepGranularity;

    iget v2, p0, Lo/onTextChanged;->ICustomTabsCallback:I

    invoke-direct {v1, v0, v2}, Lo/getAutoSizeStepGranularity;-><init>(Lo/getSupportCompoundDrawablesTintList;I)V

    move-object v0, v1

    .line 25
    :cond_0
    iget v1, p0, Lo/onTextChanged;->onNavigationEvent:I

    if-eqz v1, :cond_1

    .line 26
    new-instance v1, Lo/setAutoSizeTextTypeUniformWithConfiguration;

    iget v2, p0, Lo/onTextChanged;->onNavigationEvent:I

    invoke-direct {v1, v0, v2}, Lo/setAutoSizeTextTypeUniformWithConfiguration;-><init>(Lo/getSupportCompoundDrawablesTintList;I)V

    move-object v0, v1

    :cond_1
    return-object v0
.end method
