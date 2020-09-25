.class Landroidx/appcompat/widget/AppCompatSpinner$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/appcompat/widget/AppCompatSpinner$extraCallback;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/lang/CharSequence;

.field extraCallback:Lo/onTransact;

.field final synthetic onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

.field private onPostMessage:Landroid/widget/ListAdapter;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner;)V
    .locals 0

    .line 858
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 866
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$onPostMessage;->extraCallback:Lo/onTransact;

    if-eqz v0, :cond_0

    .line 867
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 868
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$onPostMessage;->extraCallback:Lo/onTransact;

    :cond_0
    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 874
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$onPostMessage;->extraCallback:Lo/onTransact;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 913
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 914
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 915
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$onPostMessage;->onPostMessage:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 917
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$onPostMessage;->dismiss()V

    return-void
.end method

.method public onMessageChannelReady()Ljava/lang/CharSequence;
    .locals 1

    .line 889
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$onPostMessage;->ICustomTabsCallback:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onMessageChannelReady(I)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring"

    .line 952
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNavigationEvent(II)V
    .locals 4

    .line 894
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$onPostMessage;->onPostMessage:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    .line 897
    :cond_0
    new-instance v0, Lo/onTransact$onNavigationEvent;

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatSpinner;->getPopupContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/onTransact$onNavigationEvent;-><init>(Landroid/content/Context;)V

    .line 898
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$onPostMessage;->ICustomTabsCallback:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 1377
    iget-object v2, v0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v1, v2, Lo/onRelationshipValidationResult$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/CharSequence;

    .line 901
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$onPostMessage;->onPostMessage:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatSpinner$onPostMessage;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 902
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 1853
    iget-object v3, v0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v1, v3, Lo/onRelationshipValidationResult$ICustomTabsCallback;->newSession:Landroid/widget/ListAdapter;

    .line 1854
    iget-object v1, v0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object p0, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->requestPostMessageChannel:Landroid/content/DialogInterface$OnClickListener;

    .line 1855
    iget-object v1, v0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput v2, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsService$Stub$Proxy:I

    .line 1856
    iget-object v1, v0, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->updateVisuals:Z

    .line 902
    invoke-virtual {v0}, Lo/onTransact$onNavigationEvent;->onNavigationEvent()Lo/onTransact;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$onPostMessage;->extraCallback:Lo/onTransact;

    .line 2140
    iget-object v0, v0, Lo/onTransact;->extraCallback:Lo/onRelationshipValidationResult;

    .line 2404
    iget-object v0, v0, Lo/onRelationshipValidationResult;->asBinder:Landroid/widget/ListView;

    .line 904
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    .line 905
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 906
    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 908
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$onPostMessage;->extraCallback:Lo/onTransact;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onNavigationEvent(Ljava/lang/CharSequence;)V
    .locals 0

    .line 884
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$onPostMessage;->ICustomTabsCallback:Ljava/lang/CharSequence;

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 879
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$onPostMessage;->onPostMessage:Landroid/widget/ListAdapter;

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set popup background for MODE_DIALOG, ignoring"

    .line 922
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    .line 932
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    .line 927
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
