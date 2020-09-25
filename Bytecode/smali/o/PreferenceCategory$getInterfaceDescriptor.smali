.class public final Lo/PreferenceCategory$getInterfaceDescriptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PreferenceCategory;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J*\u0010\r\u001a\u00020\u00032\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/control/bankoffers/BankOffersFragment$onViewCreated$7",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "editable",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "chars",
        "",
        "p1",
        "",
        "p2",
        "p3",
        "onTextChanged",
        "p0",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/PreferenceCategory;


# direct methods
.method constructor <init>(Lo/PreferenceCategory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 303
    iput-object p1, p0, Lo/PreferenceCategory$getInterfaceDescriptor;->onPostMessage:Lo/PreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    if-eqz p1, :cond_5

    .line 306
    iget-object v0, p0, Lo/PreferenceCategory$getInterfaceDescriptor;->onPostMessage:Lo/PreferenceCategory;

    invoke-static {v0}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;)Lo/PreferenceGroup;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<set-?>"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1036
    iput-object v1, v0, Lo/PreferenceGroup;->extraCallback:Ljava/lang/String;

    .line 307
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v2, "crossIcon"

    const-string/jumbo v3, "searchIcon"

    if-eqz p1, :cond_3

    .line 308
    iget-object p1, p0, Lo/PreferenceCategory$getInterfaceDescriptor;->onPostMessage:Lo/PreferenceCategory;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->searchIcon:I

    invoke-virtual {p1, v4}, Lo/PreferenceCategory;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getRemainingScrollVertical;

    invoke-static {p1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lo/getRemainingScrollVertical;->setVisibility(I)V

    .line 309
    iget-object p1, p0, Lo/PreferenceCategory$getInterfaceDescriptor;->onPostMessage:Lo/PreferenceCategory;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->crossIcon:I

    invoke-virtual {p1, v1}, Lo/PreferenceCategory;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 310
    iget-object p1, p0, Lo/PreferenceCategory$getInterfaceDescriptor;->onPostMessage:Lo/PreferenceCategory;

    invoke-static {p1}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;)Lo/PreferenceGroup;

    move-result-object p1

    .line 1106
    iput v0, p1, Lo/PreferenceGroup;->postMessage:I

    .line 1107
    iput-boolean v0, p1, Lo/PreferenceGroup;->updateVisuals:Z

    .line 1108
    iget-object p1, p1, Lo/PreferenceGroup;->extraCommand:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 311
    iget-object p1, p0, Lo/PreferenceCategory$getInterfaceDescriptor;->onPostMessage:Lo/PreferenceCategory;

    invoke-static {p1}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;)Lo/PreferenceGroup;

    move-result-object p1

    .line 2061
    iput-boolean v0, p1, Lo/PreferenceGroup;->onRelationshipValidationResult:Z

    .line 312
    iget-object p1, p0, Lo/PreferenceCategory$getInterfaceDescriptor;->onPostMessage:Lo/PreferenceCategory;

    invoke-static {p1}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;)Lo/PreferenceGroup;

    move-result-object p1

    iget-object v0, p0, Lo/PreferenceCategory$getInterfaceDescriptor;->onPostMessage:Lo/PreferenceCategory;

    invoke-static {v0}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;)Lo/PreferenceGroup;

    move-result-object v0

    .line 3032
    iget-object v0, v0, Lo/PreferenceGroup;->onPostMessage:Lo/setActive;

    .line 3320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 312
    :goto_1
    check-cast v0, Lo/onDetach$onRelationshipValidationResult;

    if-eqz v0, :cond_2

    .line 4081
    iget-object v2, v0, Lo/onDetach$onRelationshipValidationResult;->extraCallback:Ljava/lang/String;

    .line 312
    :cond_2
    invoke-virtual {p1, v2}, Lo/PreferenceGroup;->extraCallback(Ljava/lang/String;)V

    return-void

    .line 315
    :cond_3
    iget-object p1, p0, Lo/PreferenceCategory$getInterfaceDescriptor;->onPostMessage:Lo/PreferenceCategory;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->searchIcon:I

    invoke-virtual {p1, v0}, Lo/PreferenceCategory;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getRemainingScrollVertical;

    invoke-static {p1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lo/getRemainingScrollVertical;->setVisibility(I)V

    .line 316
    iget-object p1, p0, Lo/PreferenceCategory$getInterfaceDescriptor;->onPostMessage:Lo/PreferenceCategory;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->crossIcon:I

    invoke-virtual {p1, v0}, Lo/PreferenceCategory;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 318
    iget-object p1, p0, Lo/PreferenceCategory$getInterfaceDescriptor;->onPostMessage:Lo/PreferenceCategory;

    invoke-static {p1}, Lo/PreferenceCategory;->ICustomTabsCallback$Stub(Lo/PreferenceCategory;)Ljava/io/Closeable;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    .line 319
    :cond_4
    iget-object p1, p0, Lo/PreferenceCategory$getInterfaceDescriptor;->onPostMessage:Lo/PreferenceCategory;

    sget-object v0, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    new-instance v0, Lo/PreferenceCategory$getInterfaceDescriptor$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/PreferenceCategory$getInterfaceDescriptor$onNavigationEvent;-><init>(Lo/PreferenceCategory$getInterfaceDescriptor;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "command"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x1f4

    .line 5018
    new-instance v3, Lo/updateItemAt$extraCallback;

    invoke-direct {v3, v0}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-static {v1, v2, v3}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    move-result-object v0

    .line 319
    invoke-static {p1, v0}, Lo/PreferenceCategory;->ICustomTabsCallback(Lo/PreferenceCategory;Ljava/io/Closeable;)V

    :cond_5
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
