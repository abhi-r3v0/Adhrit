.class final Lo/setAutoSizeTextTypeUniformWithConfiguration;
.super Lo/getAutoSizeTextAvailableSizes;
.source ""

# interfaces
.implements Lo/isShowingPopup;


# instance fields
.field private extraCallback:I

.field private onMessageChannelReady:I


# direct methods
.method constructor <init>(Lo/getSupportCompoundDrawablesTintList;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lo/getAutoSizeTextAvailableSizes;-><init>(Lo/getSupportCompoundDrawablesTintList;)V

    .line 15
    iput p2, p0, Lo/setAutoSizeTextTypeUniformWithConfiguration;->extraCallback:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/ActivityChooserView;)Z
    .locals 1

    .line 1132
    iget-object v0, p1, Lo/ActivityChooserView;->ICustomTabsCallback$Stub$Proxy:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-super {p0, p1}, Lo/getAutoSizeTextAvailableSizes;->ICustomTabsCallback(Lo/ActivityChooserView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lo/setAutoSizeTextTypeUniformWithConfiguration;->onMessageChannelReady:I

    iget v0, p0, Lo/setAutoSizeTextTypeUniformWithConfiguration;->extraCallback:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final extraCallback(Lo/dismissPopup;)V
    .locals 0

    .line 26
    check-cast p1, Lo/ActivityChooserView;

    invoke-super {p0, p1}, Lo/getAutoSizeTextAvailableSizes;->ICustomTabsCallback(Lo/ActivityChooserView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 27
    iget p1, p0, Lo/setAutoSizeTextTypeUniformWithConfiguration;->onMessageChannelReady:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/setAutoSizeTextTypeUniformWithConfiguration;->onMessageChannelReady:I

    :cond_0
    return-void
.end method
