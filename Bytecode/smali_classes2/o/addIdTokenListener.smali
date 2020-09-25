.class public Lo/addIdTokenListener;
.super Landroidx/appcompat/widget/AppCompatImageButton;
.source ""

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/addIdTokenListener$extraCallback;
    }
.end annotation


# static fields
.field private static final onNavigationEvent:[I


# instance fields
.field private ICustomTabsCallback:Z

.field onMessageChannelReady:Z

.field private onPostMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 41
    sput-object v0, Lo/addIdTokenListener;->onNavigationEvent:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lo/addIdTokenListener;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 52
    sget v0, Lo/extraCallback$ICustomTabsCallback;->imageButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lo/addIdTokenListener;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lo/addIdTokenListener;->onMessageChannelReady:Z

    .line 45
    iput-boolean p1, p0, Lo/addIdTokenListener;->ICustomTabsCallback:Z

    .line 58
    new-instance p1, Lo/addIdTokenListener$2;

    invoke-direct {p1, p0}, Lo/addIdTokenListener$2;-><init>(Lo/addIdTokenListener;)V

    invoke-static {p0, p1}, Lo/unregisterCallbackListener;->onMessageChannelReady(Landroid/view/View;Lo/onSessionDestroyed;)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lo/addIdTokenListener;->onPostMessage:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    .line 105
    iget-boolean v0, p0, Lo/addIdTokenListener;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lo/addIdTokenListener;->onNavigationEvent:[I

    array-length v0, v0

    add-int/2addr p1, v0

    .line 107
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->onCreateDrawableState(I)[I

    move-result-object p1

    sget-object v0, Lo/addIdTokenListener;->onNavigationEvent:[I

    .line 106
    invoke-static {p1, v0}, Lo/addIdTokenListener;->mergeDrawableStates([I[I)[I

    move-result-object p1

    return-object p1

    .line 110
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->onCreateDrawableState(I)[I

    move-result-object p1

    return-object p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 125
    instance-of v0, p1, Lo/addIdTokenListener$extraCallback;

    if-nez v0, :cond_0

    .line 126
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 129
    :cond_0
    check-cast p1, Lo/addIdTokenListener$extraCallback;

    .line 130
    invoke-virtual {p1}, Lo/pause;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 131
    iget-boolean p1, p1, Lo/addIdTokenListener$extraCallback;->onPostMessage:Z

    invoke-virtual {p0, p1}, Lo/addIdTokenListener;->setChecked(Z)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 117
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 118
    new-instance v1, Lo/addIdTokenListener$extraCallback;

    invoke-direct {v1, v0}, Lo/addIdTokenListener$extraCallback;-><init>(Landroid/os/Parcelable;)V

    .line 119
    iget-boolean v0, p0, Lo/addIdTokenListener;->onPostMessage:Z

    iput-boolean v0, v1, Lo/addIdTokenListener$extraCallback;->onPostMessage:Z

    return-object v1
.end method

.method public setCheckable(Z)V
    .locals 1

    .line 136
    iget-boolean v0, p0, Lo/addIdTokenListener;->onMessageChannelReady:Z

    if-eq v0, p1, :cond_0

    .line 137
    iput-boolean p1, p0, Lo/addIdTokenListener;->onMessageChannelReady:Z

    const/4 p1, 0x0

    .line 138
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 79
    iget-boolean v0, p0, Lo/addIdTokenListener;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/addIdTokenListener;->onPostMessage:Z

    if-eq v0, p1, :cond_0

    .line 80
    iput-boolean p1, p0, Lo/addIdTokenListener;->onPostMessage:Z

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    const/16 p1, 0x800

    .line 82
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public setPressable(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lo/addIdTokenListener;->ICustomTabsCallback:Z

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 98
    iget-boolean v0, p0, Lo/addIdTokenListener;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 93
    iget-boolean v0, p0, Lo/addIdTokenListener;->onPostMessage:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lo/addIdTokenListener;->setChecked(Z)V

    return-void
.end method
