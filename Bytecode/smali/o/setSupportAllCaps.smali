.class public final Lo/setSupportAllCaps;
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

    .line 10
    new-instance v0, Lo/getAction$onNavigationEvent;

    invoke-direct {v0}, Lo/getAction$onNavigationEvent;-><init>()V

    .line 11
    iget v1, p0, Lo/onTextChanged;->ICustomTabsCallback:I

    if-eqz v1, :cond_0

    .line 12
    new-instance v1, Lo/setAutoSizeTextTypeUniformWithPresetSizes;

    iget v2, p0, Lo/onTextChanged;->ICustomTabsCallback:I

    invoke-direct {v1, v0, v2}, Lo/setAutoSizeTextTypeUniformWithPresetSizes;-><init>(Lo/getSupportCompoundDrawablesTintList;I)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public final onMessageChannelReady()Lo/getSupportCompoundDrawablesTintList;
    .locals 3

    .line 20
    new-instance v0, Lo/fromQueueItemList;

    invoke-direct {v0}, Lo/fromQueueItemList;-><init>()V

    .line 21
    iget v1, p0, Lo/onTextChanged;->ICustomTabsCallback:I

    if-eqz v1, :cond_0

    .line 22
    new-instance v1, Lo/getAutoSizeTextType;

    iget v2, p0, Lo/onTextChanged;->ICustomTabsCallback:I

    invoke-direct {v1, v0, v2}, Lo/getAutoSizeTextType;-><init>(Lo/getSupportCompoundDrawablesTintList;I)V

    move-object v0, v1

    .line 24
    :cond_0
    iget v1, p0, Lo/onTextChanged;->onNavigationEvent:I

    if-eqz v1, :cond_1

    .line 25
    new-instance v1, Lo/setAutoSizeTextTypeUniformWithConfiguration;

    iget v2, p0, Lo/onTextChanged;->onNavigationEvent:I

    invoke-direct {v1, v0, v2}, Lo/setAutoSizeTextTypeUniformWithConfiguration;-><init>(Lo/getSupportCompoundDrawablesTintList;I)V

    move-object v0, v1

    :cond_1
    return-object v0
.end method
