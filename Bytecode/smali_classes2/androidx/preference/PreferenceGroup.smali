.class public abstract Landroidx/preference/PreferenceGroup;
.super Landroidx/preference/Preference;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/PreferenceGroup$onPostMessage;,
        Landroidx/preference/PreferenceGroup$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Runnable;

.field final extraCallback:Lo/fromMediaItemList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fromMediaItemList<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field public onNavigationEvent:I

.field private final onPostMessage:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const/4 p4, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v0, 0x7fffffff

    .line 72
    iput v0, p0, Landroidx/preference/PreferenceGroup;->onNavigationEvent:I

    .line 76
    new-instance v1, Lo/fromMediaItemList;

    invoke-direct {v1}, Lo/fromMediaItemList;-><init>()V

    iput-object v1, p0, Landroidx/preference/PreferenceGroup;->extraCallback:Lo/fromMediaItemList;

    .line 78
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroidx/preference/PreferenceGroup;->onPostMessage:Landroid/os/Handler;

    .line 79
    new-instance v1, Landroidx/preference/PreferenceGroup$5;

    invoke-direct {v1, p0}, Landroidx/preference/PreferenceGroup$5;-><init>(Landroidx/preference/PreferenceGroup;)V

    iput-object v1, p0, Landroidx/preference/PreferenceGroup;->ICustomTabsCallback:Ljava/lang/Runnable;

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/preference/PreferenceGroup;->onMessageChannelReady:Ljava/util/List;

    .line 93
    sget-object v1, Lo/onFastForward$asBinder;->PreferenceGroup:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 96
    sget p2, Lo/onFastForward$asBinder;->PreferenceGroup_orderingFromXml:I

    const/4 p3, 0x1

    .line 1264
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 1265
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 100
    sget p2, Lo/onFastForward$asBinder;->PreferenceGroup_initialExpandedChildrenCount:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 101
    sget p2, Lo/onFastForward$asBinder;->PreferenceGroup_initialExpandedChildrenCount:I

    .line 1288
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 1289
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 101
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceGroup;->asInterface(I)V

    .line 105
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected ICustomTabsCallback(Landroid/os/Bundle;)V
    .locals 3

    .line 476
    invoke-super {p0, p1}, Landroidx/preference/Preference;->ICustomTabsCallback(Landroid/os/Bundle;)V

    .line 5189
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5199
    iget-object v2, p0, Landroidx/preference/PreferenceGroup;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    .line 481
    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->ICustomTabsCallback(Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public IPostMessageService$Stub$Proxy()V
    .locals 3

    .line 444
    invoke-super {p0}, Landroidx/preference/Preference;->IPostMessageService$Stub$Proxy()V

    .line 3189
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3199
    iget-object v2, p0, Landroidx/preference/PreferenceGroup;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    .line 452
    invoke-virtual {v2}, Landroidx/preference/Preference;->IPostMessageService$Stub$Proxy()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final asInterface(I)V
    .locals 2

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    .line 159
    invoke-virtual {p0}, Landroidx/preference/Preference;->updateVisuals()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " should have a key defined if it contains an expandable preference"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreferenceGroup"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    iput p1, p0, Landroidx/preference/PreferenceGroup;->onNavigationEvent:I

    return-void
.end method

.method public asInterface()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cancelAll()V
    .locals 3

    .line 429
    invoke-super {p0}, Landroidx/preference/Preference;->cancelAll()V

    .line 2189
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2199
    iget-object v2, p0, Landroidx/preference/PreferenceGroup;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    .line 438
    invoke-virtual {v2}, Landroidx/preference/Preference;->cancelAll()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onNavigationEvent(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 504
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/preference/PreferenceGroup$onPostMessage;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    check-cast p1, Landroidx/preference/PreferenceGroup$onPostMessage;

    .line 510
    iget v0, p1, Landroidx/preference/PreferenceGroup$onPostMessage;->onPostMessage:I

    iput v0, p0, Landroidx/preference/PreferenceGroup;->onNavigationEvent:I

    .line 511
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onNavigationEvent(Landroid/os/Parcelable;)V

    return-void

    .line 506
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onNavigationEvent(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onPostMessage()Landroid/os/Parcelable;
    .locals 3

    .line 498
    invoke-super {p0}, Landroidx/preference/Preference;->onPostMessage()Landroid/os/Parcelable;

    move-result-object v0

    .line 499
    new-instance v1, Landroidx/preference/PreferenceGroup$onPostMessage;

    iget v2, p0, Landroidx/preference/PreferenceGroup;->onNavigationEvent:I

    invoke-direct {v1, v0, v2}, Landroidx/preference/PreferenceGroup$onPostMessage;-><init>(Landroid/os/Parcelable;I)V

    return-object v1
.end method

.method protected onPostMessage(Landroid/os/Bundle;)V
    .locals 3

    .line 487
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onPostMessage(Landroid/os/Bundle;)V

    .line 6189
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 6199
    iget-object v2, p0, Landroidx/preference/PreferenceGroup;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    .line 492
    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->onPostMessage(Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPostMessage(Z)V
    .locals 3

    .line 458
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onPostMessage(Z)V

    .line 4189
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4199
    iget-object v2, p0, Landroidx/preference/PreferenceGroup;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    .line 464
    invoke-virtual {v2, p0, p1}, Landroidx/preference/Preference;->onMessageChannelReady(Landroidx/preference/Preference;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
