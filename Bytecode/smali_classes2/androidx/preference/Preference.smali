.class public Landroidx/preference/Preference;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/Preference$onNavigationEvent;,
        Landroidx/preference/Preference$extraCallback;,
        Landroidx/preference/Preference$onPostMessage;,
        Landroidx/preference/Preference$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field private AudioAttributesCompatParcelizer:Z

.field private ICustomTabsCallback:J

.field private ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

.field private ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

.field private ICustomTabsService:Landroid/content/Intent;

.field private ICustomTabsService$Stub:Z

.field private ICustomTabsService$Stub$Proxy:Z

.field private INotificationSideChannel:Z

.field private INotificationSideChannel$Default:I

.field private INotificationSideChannel$Stub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private INotificationSideChannel$Stub$Proxy:Landroidx/preference/Preference$extraCallback;

.field private IPostMessageService:Z

.field private IPostMessageService$Stub:Z

.field private IPostMessageService$Stub$Proxy:Z

.field private asBinder:I

.field private asInterface:I

.field private cancel:Z

.field private cancelAll:Z

.field private extraCallback:Landroid/content/Context;

.field private extraCommand:Z

.field private getDefaultImpl:Z

.field private getInterfaceDescriptor:Ljava/lang/String;

.field private mayLaunchUrl:Z

.field private newSession:I

.field private notify:I

.field private onMessageChannelReady:Lo/onPlayFromUri;

.field private onNavigationEvent:Lo/handleMediaPlayPauseKeySingleTapIfPending;

.field private onPostMessage:Landroidx/preference/Preference$onMessageChannelReady;

.field private onRelationshipValidationResult:Landroidx/preference/Preference$onPostMessage;

.field private onTransact:Ljava/lang/CharSequence;

.field private postMessage:Ljava/lang/Object;

.field private final read:Landroid/view/View$OnClickListener;

.field private requestPostMessageChannel:Ljava/lang/String;

.field private setDefaultImpl:Landroidx/preference/PreferenceGroup;

.field private updateVisuals:Z

.field private validateRelationship:Z

.field private warmup:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 383
    invoke-direct {p0, p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 373
    sget v0, Lo/onFastForward$ICustomTabsCallback;->preferenceStyle:I

    .line 15354
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 15355
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 15356
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x101008e

    .line 373
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 355
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 124
    iput v0, p0, Landroidx/preference/Preference;->asInterface:I

    const/4 v1, 0x0

    .line 125
    iput v1, p0, Landroidx/preference/Preference;->asBinder:I

    const/4 v2, 0x1

    .line 137
    iput-boolean v2, p0, Landroidx/preference/Preference;->mayLaunchUrl:Z

    .line 138
    iput-boolean v2, p0, Landroidx/preference/Preference;->updateVisuals:Z

    .line 140
    iput-boolean v2, p0, Landroidx/preference/Preference;->extraCommand:Z

    .line 143
    iput-boolean v2, p0, Landroidx/preference/Preference;->validateRelationship:Z

    .line 144
    iput-boolean v2, p0, Landroidx/preference/Preference;->IPostMessageService$Stub:Z

    .line 145
    iput-boolean v2, p0, Landroidx/preference/Preference;->ICustomTabsService$Stub$Proxy:Z

    .line 147
    iput-boolean v2, p0, Landroidx/preference/Preference;->IPostMessageService:Z

    .line 148
    iput-boolean v2, p0, Landroidx/preference/Preference;->ICustomTabsService$Stub:Z

    .line 150
    iput-boolean v2, p0, Landroidx/preference/Preference;->cancelAll:Z

    .line 156
    iput-boolean v2, p0, Landroidx/preference/Preference;->INotificationSideChannel:Z

    .line 158
    sget v3, Lo/onFastForward$onNavigationEvent;->preference:I

    iput v3, p0, Landroidx/preference/Preference;->notify:I

    .line 169
    new-instance v3, Landroidx/preference/Preference$2;

    invoke-direct {v3, p0}, Landroidx/preference/Preference$2;-><init>(Landroidx/preference/Preference;)V

    iput-object v3, p0, Landroidx/preference/Preference;->read:Landroid/view/View$OnClickListener;

    .line 262
    iput-object p1, p0, Landroidx/preference/Preference;->extraCallback:Landroid/content/Context;

    .line 264
    sget-object v3, Lo/onFastForward$asBinder;->Preference:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 267
    sget p2, Lo/onFastForward$asBinder;->Preference_icon:I

    sget p3, Lo/onFastForward$asBinder;->Preference_android_icon:I

    .line 2299
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 2300
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 267
    iput p2, p0, Landroidx/preference/Preference;->newSession:I

    .line 270
    sget p2, Lo/onFastForward$asBinder;->Preference_key:I

    sget p3, Lo/onFastForward$asBinder;->Preference_android_key:I

    .line 2310
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 2312
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 270
    :cond_0
    iput-object p2, p0, Landroidx/preference/Preference;->getInterfaceDescriptor:Ljava/lang/String;

    .line 273
    sget p2, Lo/onFastForward$asBinder;->Preference_title:I

    sget p3, Lo/onFastForward$asBinder;->Preference_android_title:I

    .line 2326
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    if-nez p2, :cond_1

    .line 2328
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 273
    :cond_1
    iput-object p2, p0, Landroidx/preference/Preference;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    .line 276
    sget p2, Lo/onFastForward$asBinder;->Preference_summary:I

    sget p3, Lo/onFastForward$asBinder;->Preference_android_summary:I

    .line 3326
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    if-nez p2, :cond_2

    .line 3328
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 276
    :cond_2
    iput-object p2, p0, Landroidx/preference/Preference;->onTransact:Ljava/lang/CharSequence;

    .line 279
    sget p2, Lo/onFastForward$asBinder;->Preference_order:I

    sget p3, Lo/onFastForward$asBinder;->Preference_android_order:I

    .line 4288
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 4289
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 279
    iput p2, p0, Landroidx/preference/Preference;->asInterface:I

    .line 282
    sget p2, Lo/onFastForward$asBinder;->Preference_fragment:I

    sget p3, Lo/onFastForward$asBinder;->Preference_android_fragment:I

    .line 4310
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    .line 4312
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 282
    :cond_3
    iput-object p2, p0, Landroidx/preference/Preference;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 285
    sget p2, Lo/onFastForward$asBinder;->Preference_layout:I

    sget p3, Lo/onFastForward$asBinder;->Preference_android_layout:I

    sget p4, Lo/onFastForward$onNavigationEvent;->preference:I

    .line 5299
    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 5300
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 285
    iput p2, p0, Landroidx/preference/Preference;->notify:I

    .line 288
    sget p2, Lo/onFastForward$asBinder;->Preference_widgetLayout:I

    sget p3, Lo/onFastForward$asBinder;->Preference_android_widgetLayout:I

    .line 6299
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 6300
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 288
    iput p2, p0, Landroidx/preference/Preference;->INotificationSideChannel$Default:I

    .line 291
    sget p2, Lo/onFastForward$asBinder;->Preference_enabled:I

    sget p3, Lo/onFastForward$asBinder;->Preference_android_enabled:I

    .line 7264
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 7265
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 291
    iput-boolean p2, p0, Landroidx/preference/Preference;->mayLaunchUrl:Z

    .line 294
    sget p2, Lo/onFastForward$asBinder;->Preference_selectable:I

    sget p3, Lo/onFastForward$asBinder;->Preference_android_selectable:I

    .line 8264
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 8265
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 294
    iput-boolean p2, p0, Landroidx/preference/Preference;->updateVisuals:Z

    .line 297
    sget p2, Lo/onFastForward$asBinder;->Preference_persistent:I

    sget p3, Lo/onFastForward$asBinder;->Preference_android_persistent:I

    .line 9264
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 9265
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 297
    iput-boolean p2, p0, Landroidx/preference/Preference;->extraCommand:Z

    .line 300
    sget p2, Lo/onFastForward$asBinder;->Preference_dependency:I

    sget p3, Lo/onFastForward$asBinder;->Preference_android_dependency:I

    .line 9310
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    .line 9312
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 300
    :cond_4
    iput-object p2, p0, Landroidx/preference/Preference;->requestPostMessageChannel:Ljava/lang/String;

    .line 303
    sget p2, Lo/onFastForward$asBinder;->Preference_allowDividerAbove:I

    iget-boolean p3, p0, Landroidx/preference/Preference;->updateVisuals:Z

    .line 10264
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 10265
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 303
    iput-boolean p2, p0, Landroidx/preference/Preference;->IPostMessageService:Z

    .line 306
    sget p2, Lo/onFastForward$asBinder;->Preference_allowDividerBelow:I

    iget-boolean p3, p0, Landroidx/preference/Preference;->updateVisuals:Z

    .line 11264
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 11265
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 306
    iput-boolean p2, p0, Landroidx/preference/Preference;->ICustomTabsService$Stub:Z

    .line 309
    sget p2, Lo/onFastForward$asBinder;->Preference_defaultValue:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 310
    sget p2, Lo/onFastForward$asBinder;->Preference_defaultValue:I

    invoke-virtual {p0, p1, p2}, Landroidx/preference/Preference;->onNavigationEvent(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->postMessage:Ljava/lang/Object;

    goto :goto_0

    .line 311
    :cond_5
    sget p2, Lo/onFastForward$asBinder;->Preference_android_defaultValue:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 312
    sget p2, Lo/onFastForward$asBinder;->Preference_android_defaultValue:I

    invoke-virtual {p0, p1, p2}, Landroidx/preference/Preference;->onNavigationEvent(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->postMessage:Ljava/lang/Object;

    .line 315
    :cond_6
    :goto_0
    sget p2, Lo/onFastForward$asBinder;->Preference_shouldDisableView:I

    sget p3, Lo/onFastForward$asBinder;->Preference_android_shouldDisableView:I

    .line 12264
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 12265
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 316
    iput-boolean p2, p0, Landroidx/preference/Preference;->INotificationSideChannel:Z

    .line 319
    sget p2, Lo/onFastForward$asBinder;->Preference_singleLineTitle:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->IPostMessageService$Stub$Proxy:Z

    if-eqz p2, :cond_7

    .line 321
    sget p2, Lo/onFastForward$asBinder;->Preference_singleLineTitle:I

    sget p3, Lo/onFastForward$asBinder;->Preference_android_singleLineTitle:I

    .line 13264
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 13265
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 321
    iput-boolean p2, p0, Landroidx/preference/Preference;->cancelAll:Z

    .line 325
    :cond_7
    sget p2, Lo/onFastForward$asBinder;->Preference_iconSpaceReserved:I

    sget p3, Lo/onFastForward$asBinder;->Preference_android_iconSpaceReserved:I

    .line 14264
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 14265
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 325
    iput-boolean p2, p0, Landroidx/preference/Preference;->cancel:Z

    .line 328
    sget p2, Lo/onFastForward$asBinder;->Preference_isPreferenceVisible:I

    .line 15264
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 15265
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 328
    iput-boolean p2, p0, Landroidx/preference/Preference;->ICustomTabsService$Stub$Proxy:Z

    .line 331
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private ICustomTabsCallback(Landroid/view/View;Z)V
    .locals 2

    .line 640
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 642
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 643
    check-cast p1, Landroid/view/ViewGroup;

    .line 644
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 645
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroidx/preference/Preference;->ICustomTabsCallback(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private asBinder()V
    .locals 1

    .line 1377
    iget-object v0, p0, Landroidx/preference/Preference;->requestPostMessageChannel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1378
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->onMessageChannelReady(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1380
    invoke-direct {v0, p0}, Landroidx/preference/Preference;->extraCallback(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method private asInterface()V
    .locals 3

    .line 1365
    iget-object v0, p0, Landroidx/preference/Preference;->requestPostMessageChannel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1367
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->requestPostMessageChannel:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->onMessageChannelReady(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1369
    invoke-direct {v0, p0}, Landroidx/preference/Preference;->onPostMessage(Landroidx/preference/Preference;)V

    return-void

    .line 1371
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dependency \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/preference/Preference;->requestPostMessageChannel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" not found for preference \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/preference/Preference;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" (title: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/preference/Preference;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private extraCallback(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .line 1613
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private extraCallback(Landroidx/preference/Preference;)V
    .locals 1

    .line 1429
    iget-object v0, p0, Landroidx/preference/Preference;->INotificationSideChannel$Stub:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1430
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private onPostMessage(Landroidx/preference/Preference;)V
    .locals 1

    .line 1413
    iget-object v0, p0, Landroidx/preference/Preference;->INotificationSideChannel$Stub:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/preference/Preference;->INotificationSideChannel$Stub:Ljava/util/List;

    .line 1417
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->INotificationSideChannel$Stub:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1419
    invoke-virtual {p0}, Landroidx/preference/Preference;->ICustomTabsCallback()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroidx/preference/Preference;->onNavigationEvent(Landroidx/preference/Preference;Z)V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(I)V
    .locals 1

    .line 664
    iget v0, p0, Landroidx/preference/Preference;->asInterface:I

    if-eq p1, v0, :cond_0

    .line 665
    iput p1, p0, Landroidx/preference/Preference;->asInterface:I

    .line 668
    invoke-virtual {p0}, Landroidx/preference/Preference;->validateRelationship()V

    :cond_0
    return-void
.end method

.method ICustomTabsCallback(Landroid/os/Bundle;)V
    .locals 2

    .line 2000
    invoke-virtual {p0}, Landroidx/preference/Preference;->updateVisuals()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2001
    iput-boolean v0, p0, Landroidx/preference/Preference;->AudioAttributesCompatParcelizer:Z

    .line 2002
    invoke-virtual {p0}, Landroidx/preference/Preference;->onPostMessage()Landroid/os/Parcelable;

    move-result-object v0

    .line 2003
    iget-boolean v1, p0, Landroidx/preference/Preference;->AudioAttributesCompatParcelizer:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 2008
    iget-object v1, p0, Landroidx/preference/Preference;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 2004
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public ICustomTabsCallback(Lo/getPlaybackState;)V
    .locals 0

    return-void
.end method

.method public ICustomTabsCallback()Z
    .locals 1

    .line 1495
    invoke-virtual {p0}, Landroidx/preference/Preference;->mayLaunchUrl()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ICustomTabsCallback(Ljava/lang/Object;)Z
    .locals 0

    .line 1101
    iget-object p1, p0, Landroidx/preference/Preference;->onPostMessage:Landroidx/preference/Preference$onMessageChannelReady;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroidx/preference/Preference$onMessageChannelReady;->onPostMessage()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected ICustomTabsCallback(Z)Z
    .locals 4

    .line 1932
    invoke-virtual {p0}, Landroidx/preference/Preference;->ICustomTabsService$Stub()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 1936
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->warmup()Lo/handleMediaPlayPauseKeySingleTapIfPending;

    move-result-object v0

    if-eqz v0, :cond_1

    return p1

    .line 1941
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->onMessageChannelReady:Lo/onPlayFromUri;

    .line 37320
    iget-object v1, v0, Lo/onPlayFromUri;->extraCallback:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2

    .line 37327
    iget-object v1, v0, Lo/onPlayFromUri;->onPostMessage:Landroid/content/Context;

    .line 37331
    iget-object v2, v0, Lo/onPlayFromUri;->onNavigationEvent:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lo/onPlayFromUri;->extraCallback:Landroid/content/SharedPreferences;

    .line 37335
    :cond_2
    iget-object v0, v0, Lo/onPlayFromUri;->extraCallback:Landroid/content/SharedPreferences;

    .line 1941
    iget-object v1, p0, Landroidx/preference/Preference;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public ICustomTabsCallback$Stub()Landroid/content/Intent;
    .locals 1

    .line 419
    iget-object v0, p0, Landroidx/preference/Preference;->ICustomTabsService:Landroid/content/Intent;

    return-object v0
.end method

.method public ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;
    .locals 1

    .line 437
    iget-object v0, p0, Landroidx/preference/Preference;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    return-object v0
.end method

.method public final ICustomTabsService()I
    .locals 1

    .line 524
    iget v0, p0, Landroidx/preference/Preference;->notify:I

    return v0
.end method

.method protected ICustomTabsService$Stub()Z
    .locals 1

    .line 1027
    iget-object v0, p0, Landroidx/preference/Preference;->onMessageChannelReady:Lo/onPlayFromUri;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->requestPostMessageChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->updateVisuals()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ICustomTabsService$Stub$Proxy()V
    .locals 2

    .line 1159
    invoke-virtual {p0}, Landroidx/preference/Preference;->mayLaunchUrl()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1163
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->extraCallback()V

    .line 1165
    iget-object v0, p0, Landroidx/preference/Preference;->onRelationshipValidationResult:Landroidx/preference/Preference$onPostMessage;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/preference/Preference$onPostMessage;->onNavigationEvent()Z

    return-void

    .line 1169
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->IPostMessageService()Lo/onPlayFromUri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 17567
    iget-object v0, v0, Lo/onPlayFromUri;->onMessageChannelReady:Lo/onPlayFromUri$extraCallback;

    if-eqz v0, :cond_2

    .line 1173
    invoke-interface {v0}, Lo/onPlayFromUri$extraCallback;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 1178
    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->ICustomTabsService:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 1179
    invoke-virtual {p0}, Landroidx/preference/Preference;->IPostMessageService$Stub()Landroid/content/Context;

    move-result-object v0

    .line 1180
    iget-object v1, p0, Landroidx/preference/Preference;->ICustomTabsService:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method public INotificationSideChannel()Landroidx/preference/PreferenceGroup;
    .locals 1

    .line 1531
    iget-object v0, p0, Landroidx/preference/Preference;->setDefaultImpl:Landroidx/preference/PreferenceGroup;

    return-object v0
.end method

.method public IPostMessageService()Lo/onPlayFromUri;
    .locals 1

    .line 1277
    iget-object v0, p0, Landroidx/preference/Preference;->onMessageChannelReady:Lo/onPlayFromUri;

    return-object v0
.end method

.method public IPostMessageService$Stub()Landroid/content/Context;
    .locals 1

    .line 1193
    iget-object v0, p0, Landroidx/preference/Preference;->extraCallback:Landroid/content/Context;

    return-object v0
.end method

.method public IPostMessageService$Stub$Proxy()V
    .locals 1

    .line 1340
    invoke-direct {p0}, Landroidx/preference/Preference;->asBinder()V

    const/4 v0, 0x1

    .line 1341
    iput-boolean v0, p0, Landroidx/preference/Preference;->getDefaultImpl:Z

    return-void
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x0

    .line 1360
    iput-boolean v0, p0, Landroidx/preference/Preference;->getDefaultImpl:Z

    return-void
.end method

.method public cancelAll()V
    .locals 0

    .line 1330
    invoke-direct {p0}, Landroidx/preference/Preference;->asInterface()V

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 90
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->onMessageChannelReady(Landroidx/preference/Preference;)I

    move-result p1

    return p1
.end method

.method protected extraCallback()V
    .locals 0

    return-void
.end method

.method public extraCallback(I)V
    .locals 0

    .line 515
    iput p1, p0, Landroidx/preference/Preference;->notify:I

    return-void
.end method

.method public extraCallback(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    .line 737
    iget-object v0, p0, Landroidx/preference/Preference;->warmup:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/preference/Preference;->warmup:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 738
    :cond_1
    iput-object p1, p0, Landroidx/preference/Preference;->warmup:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 739
    iput p1, p0, Landroidx/preference/Preference;->newSession:I

    .line 740
    invoke-virtual {p0}, Landroidx/preference/Preference;->onNavigationEvent()V

    :cond_2
    return-void
.end method

.method public extraCallback(Landroid/os/Bundle;)V
    .locals 0

    .line 1986
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->ICustomTabsCallback(Landroid/os/Bundle;)V

    return-void
.end method

.method protected extraCallback(Landroid/view/View;)V
    .locals 0

    .line 1148
    invoke-virtual {p0}, Landroidx/preference/Preference;->ICustomTabsService$Stub$Proxy()V

    return-void
.end method

.method public extraCallback(Landroidx/preference/Preference$onPostMessage;)V
    .locals 0

    .line 1131
    iput-object p1, p0, Landroidx/preference/Preference;->onRelationshipValidationResult:Landroidx/preference/Preference$onPostMessage;

    return-void
.end method

.method public extraCallback(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 784
    iget-object v0, p0, Landroidx/preference/Preference;->onTransact:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/preference/Preference;->onTransact:Ljava/lang/CharSequence;

    .line 785
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 786
    :cond_1
    iput-object p1, p0, Landroidx/preference/Preference;->onTransact:Ljava/lang/CharSequence;

    .line 787
    invoke-virtual {p0}, Landroidx/preference/Preference;->onNavigationEvent()V

    :cond_2
    return-void
.end method

.method public extraCommand()Z
    .locals 1

    .line 845
    iget-boolean v0, p0, Landroidx/preference/Preference;->updateVisuals:Z

    return v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/CharSequence;
    .locals 1

    .line 725
    iget-object v0, p0, Landroidx/preference/Preference;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public mayLaunchUrl()Z
    .locals 1

    .line 824
    iget-boolean v0, p0, Landroidx/preference/Preference;->mayLaunchUrl:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/Preference;->validateRelationship:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/Preference;->IPostMessageService$Stub:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final newSession()I
    .locals 1

    .line 549
    iget v0, p0, Landroidx/preference/Preference;->INotificationSideChannel$Default:I

    return v0
.end method

.method public onMessageChannelReady(Landroidx/preference/Preference;)I
    .locals 2

    .line 1225
    iget v0, p0, Landroidx/preference/Preference;->asInterface:I

    iget v1, p1, Landroidx/preference/Preference;->asInterface:I

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    .line 1228
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroidx/preference/Preference;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    if-nez v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    if-nez v1, :cond_3

    const/4 p1, -0x1

    return p1

    .line 1237
    :cond_3
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroidx/preference/Preference;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public onMessageChannelReady()J
    .locals 2

    .line 948
    iget-wide v0, p0, Landroidx/preference/Preference;->ICustomTabsCallback:J

    return-wide v0
.end method

.method protected onMessageChannelReady(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 1

    .line 1396
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/preference/Preference;->onMessageChannelReady:Lo/onPlayFromUri;

    if-nez p1, :cond_0

    nop

    :cond_0
    return-object v0
.end method

.method public onMessageChannelReady(Ljava/util/Set;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1712
    invoke-virtual {p0}, Landroidx/preference/Preference;->ICustomTabsService$Stub()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 1716
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->warmup()Lo/handleMediaPlayPauseKeySingleTapIfPending;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object p1

    .line 1721
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->onMessageChannelReady:Lo/onPlayFromUri;

    .line 27320
    iget-object v1, v0, Lo/onPlayFromUri;->extraCallback:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2

    .line 27327
    iget-object v1, v0, Lo/onPlayFromUri;->onPostMessage:Landroid/content/Context;

    .line 27331
    iget-object v2, v0, Lo/onPlayFromUri;->onNavigationEvent:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lo/onPlayFromUri;->extraCallback:Landroid/content/SharedPreferences;

    .line 27335
    :cond_2
    iget-object v0, v0, Lo/onPlayFromUri;->extraCallback:Landroid/content/SharedPreferences;

    .line 1721
    iget-object v1, p0, Landroidx/preference/Preference;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public onMessageChannelReady(I)V
    .locals 1

    .line 751
    iget-object v0, p0, Landroidx/preference/Preference;->extraCallback:Landroid/content/Context;

    invoke-static {v0, p1}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->extraCallback(Landroid/graphics/drawable/Drawable;)V

    .line 752
    iput p1, p0, Landroidx/preference/Preference;->newSession:I

    return-void
.end method

.method public onMessageChannelReady(Landroidx/preference/Preference;Z)V
    .locals 0

    .line 1478
    iget-boolean p1, p0, Landroidx/preference/Preference;->IPostMessageService$Stub:Z

    if-ne p1, p2, :cond_0

    xor-int/lit8 p1, p2, 0x1

    .line 1479
    iput-boolean p1, p0, Landroidx/preference/Preference;->IPostMessageService$Stub:Z

    .line 1482
    invoke-virtual {p0}, Landroidx/preference/Preference;->ICustomTabsCallback()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->onPostMessage(Z)V

    .line 1484
    invoke-virtual {p0}, Landroidx/preference/Preference;->onNavigationEvent()V

    :cond_0
    return-void
.end method

.method public onMessageChannelReady(Lo/onPlayFromMediaId;)V
    .locals 6

    .line 565
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroidx/preference/Preference;->read:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Landroidx/preference/Preference;->asBinder:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const v0, 0x1020016

    .line 568
    invoke-virtual {p1, v0}, Lo/onPlayFromMediaId;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 570
    invoke-virtual {p0}, Landroidx/preference/Preference;->getInterfaceDescriptor()Ljava/lang/CharSequence;

    move-result-object v3

    .line 571
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 572
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 574
    iget-boolean v3, p0, Landroidx/preference/Preference;->IPostMessageService$Stub$Proxy:Z

    if-eqz v3, :cond_1

    .line 575
    iget-boolean v3, p0, Landroidx/preference/Preference;->cancelAll:Z

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0

    .line 578
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    const v0, 0x1020010

    .line 582
    invoke-virtual {p1, v0}, Lo/onPlayFromMediaId;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 584
    invoke-virtual {p0}, Landroidx/preference/Preference;->onTransact()Ljava/lang/CharSequence;

    move-result-object v3

    .line 585
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 586
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 589
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    const v0, 0x1020006

    .line 593
    invoke-virtual {p1, v0}, Lo/onPlayFromMediaId;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x4

    if-eqz v0, :cond_9

    .line 595
    iget v4, p0, Landroidx/preference/Preference;->newSession:I

    if-nez v4, :cond_4

    iget-object v4, p0, Landroidx/preference/Preference;->warmup:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 596
    :cond_4
    iget-object v4, p0, Landroidx/preference/Preference;->warmup:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_5

    .line 597
    invoke-virtual {p0}, Landroidx/preference/Preference;->IPostMessageService$Stub()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Landroidx/preference/Preference;->newSession:I

    invoke-static {v4, v5}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroidx/preference/Preference;->warmup:Landroid/graphics/drawable/Drawable;

    .line 599
    :cond_5
    iget-object v4, p0, Landroidx/preference/Preference;->warmup:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 600
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 603
    :cond_6
    iget-object v4, p0, Landroidx/preference/Preference;->warmup:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    goto :goto_2

    .line 606
    :cond_7
    iget-boolean v4, p0, Landroidx/preference/Preference;->cancel:Z

    if-eqz v4, :cond_8

    const/4 v4, 0x4

    goto :goto_2

    :cond_8
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 610
    :cond_9
    sget v0, Lo/onFastForward$onPostMessage;->icon_frame:I

    invoke-virtual {p1, v0}, Lo/onPlayFromMediaId;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    const v0, 0x102003e

    .line 612
    invoke-virtual {p1, v0}, Lo/onPlayFromMediaId;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    :cond_a
    if-eqz v0, :cond_d

    .line 615
    iget-object v4, p0, Landroidx/preference/Preference;->warmup:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_b

    goto :goto_3

    .line 618
    :cond_b
    iget-boolean v1, p0, Landroidx/preference/Preference;->cancel:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x4

    goto :goto_3

    :cond_c
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 622
    :cond_d
    iget-boolean v0, p0, Landroidx/preference/Preference;->INotificationSideChannel:Z

    if-eqz v0, :cond_e

    .line 623
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/preference/Preference;->mayLaunchUrl()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/preference/Preference;->ICustomTabsCallback(Landroid/view/View;Z)V

    goto :goto_4

    .line 625
    :cond_e
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/preference/Preference;->ICustomTabsCallback(Landroid/view/View;Z)V

    .line 628
    :goto_4
    invoke-virtual {p0}, Landroidx/preference/Preference;->extraCommand()Z

    move-result v0

    .line 629
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 630
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 632
    iget-boolean v0, p0, Landroidx/preference/Preference;->IPostMessageService:Z

    .line 17095
    iput-boolean v0, p1, Lo/onPlayFromMediaId;->onNavigationEvent:Z

    .line 633
    iget-boolean v0, p0, Landroidx/preference/Preference;->ICustomTabsService$Stub:Z

    .line 17119
    iput-boolean v0, p1, Lo/onPlayFromMediaId;->onPostMessage:Z

    return-void
.end method

.method protected onNavigationEvent(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onNavigationEvent()V
    .locals 1

    .line 1255
    iget-object v0, p0, Landroidx/preference/Preference;->INotificationSideChannel$Stub$Proxy:Landroidx/preference/Preference$extraCallback;

    if-eqz v0, :cond_0

    .line 1256
    invoke-interface {v0, p0}, Landroidx/preference/Preference$extraCallback;->onMessageChannelReady(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public onNavigationEvent(I)V
    .locals 1

    .line 715
    iget-object v0, p0, Landroidx/preference/Preference;->extraCallback:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->onPostMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onNavigationEvent(Landroid/os/Bundle;)V
    .locals 0

    .line 2039
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->onPostMessage(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onNavigationEvent(Landroid/os/Parcelable;)V
    .locals 1

    const/4 v0, 0x1

    .line 2077
    iput-boolean v0, p0, Landroidx/preference/Preference;->AudioAttributesCompatParcelizer:Z

    .line 2078
    sget-object v0, Landroidx/preference/Preference$onNavigationEvent;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2079
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong state class -- expecting Preference State"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public onNavigationEvent(Landroidx/preference/Preference;Z)V
    .locals 0

    .line 1461
    iget-boolean p1, p0, Landroidx/preference/Preference;->validateRelationship:Z

    if-ne p1, p2, :cond_0

    xor-int/lit8 p1, p2, 0x1

    .line 1462
    iput-boolean p1, p0, Landroidx/preference/Preference;->validateRelationship:Z

    .line 1465
    invoke-virtual {p0}, Landroidx/preference/Preference;->ICustomTabsCallback()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->onPostMessage(Z)V

    .line 1467
    invoke-virtual {p0}, Landroidx/preference/Preference;->onNavigationEvent()V

    :cond_0
    return-void
.end method

.method protected onNavigationEvent(Ljava/lang/String;)Z
    .locals 5

    .line 1628
    invoke-virtual {p0}, Landroidx/preference/Preference;->ICustomTabsService$Stub()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 1633
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->onRelationshipValidationResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 1638
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->warmup()Lo/handleMediaPlayPauseKeySingleTapIfPending;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1642
    iget-object v0, p0, Landroidx/preference/Preference;->onMessageChannelReady:Lo/onPlayFromUri;

    .line 20320
    iget-object v3, v0, Lo/onPlayFromUri;->extraCallback:Landroid/content/SharedPreferences;

    if-nez v3, :cond_2

    .line 20327
    iget-object v3, v0, Lo/onPlayFromUri;->onPostMessage:Landroid/content/Context;

    .line 20331
    iget-object v4, v0, Lo/onPlayFromUri;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lo/onPlayFromUri;->extraCallback:Landroid/content/SharedPreferences;

    .line 20335
    :cond_2
    iget-object v0, v0, Lo/onPlayFromUri;->extraCallback:Landroid/content/SharedPreferences;

    .line 19494
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1643
    iget-object v1, p0, Landroidx/preference/Preference;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1644
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->extraCallback(Landroid/content/SharedPreferences$Editor;)V

    return v2

    .line 19055
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented on this data store"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onNavigationEvent(Ljava/util/Set;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1682
    invoke-virtual {p0}, Landroidx/preference/Preference;->ICustomTabsService$Stub()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 1687
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->onMessageChannelReady(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 1692
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->warmup()Lo/handleMediaPlayPauseKeySingleTapIfPending;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1696
    iget-object v0, p0, Landroidx/preference/Preference;->onMessageChannelReady:Lo/onPlayFromUri;

    .line 25320
    iget-object v3, v0, Lo/onPlayFromUri;->extraCallback:Landroid/content/SharedPreferences;

    if-nez v3, :cond_2

    .line 25327
    iget-object v3, v0, Lo/onPlayFromUri;->onPostMessage:Landroid/content/Context;

    .line 25331
    iget-object v4, v0, Lo/onPlayFromUri;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lo/onPlayFromUri;->extraCallback:Landroid/content/SharedPreferences;

    .line 25335
    :cond_2
    iget-object v0, v0, Lo/onPlayFromUri;->extraCallback:Landroid/content/SharedPreferences;

    .line 24494
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1697
    iget-object v1, p0, Landroidx/preference/Preference;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1698
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->extraCallback(Landroid/content/SharedPreferences$Editor;)V

    return v2

    .line 24068
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented on this data store"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onNavigationEvent(Z)Z
    .locals 5

    .line 1901
    invoke-virtual {p0}, Landroidx/preference/Preference;->ICustomTabsService$Stub()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    .line 1905
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->ICustomTabsCallback(Z)Z

    move-result v0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    return v2

    .line 1910
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->warmup()Lo/handleMediaPlayPauseKeySingleTapIfPending;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1914
    iget-object v0, p0, Landroidx/preference/Preference;->onMessageChannelReady:Lo/onPlayFromUri;

    .line 35320
    iget-object v3, v0, Lo/onPlayFromUri;->extraCallback:Landroid/content/SharedPreferences;

    if-nez v3, :cond_2

    .line 35327
    iget-object v3, v0, Lo/onPlayFromUri;->onPostMessage:Landroid/content/Context;

    .line 35331
    iget-object v4, v0, Lo/onPlayFromUri;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lo/onPlayFromUri;->extraCallback:Landroid/content/SharedPreferences;

    .line 35335
    :cond_2
    iget-object v0, v0, Lo/onPlayFromUri;->extraCallback:Landroid/content/SharedPreferences;

    .line 34494
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1915
    iget-object v1, p0, Landroidx/preference/Preference;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1916
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->extraCallback(Landroid/content/SharedPreferences$Editor;)V

    return v2

    .line 34120
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented on this data store"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onPostMessage()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x1

    .line 2026
    iput-boolean v0, p0, Landroidx/preference/Preference;->AudioAttributesCompatParcelizer:Z

    .line 2027
    sget-object v0, Landroidx/preference/Preference$onNavigationEvent;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method onPostMessage(Landroid/os/Bundle;)V
    .locals 1

    .line 2053
    invoke-virtual {p0}, Landroidx/preference/Preference;->updateVisuals()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2054
    iget-object v0, p0, Landroidx/preference/Preference;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 2056
    iput-boolean v0, p0, Landroidx/preference/Preference;->AudioAttributesCompatParcelizer:Z

    .line 2057
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->onNavigationEvent(Landroid/os/Parcelable;)V

    .line 2058
    iget-boolean p1, p0, Landroidx/preference/Preference;->AudioAttributesCompatParcelizer:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2059
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final onPostMessage(Landroidx/preference/Preference$extraCallback;)V
    .locals 0

    .line 1248
    iput-object p1, p0, Landroidx/preference/Preference;->INotificationSideChannel$Stub$Proxy:Landroidx/preference/Preference$extraCallback;

    return-void
.end method

.method public onPostMessage(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 702
    iget-object v0, p0, Landroidx/preference/Preference;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/preference/Preference;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 703
    :cond_1
    iput-object p1, p0, Landroidx/preference/Preference;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    .line 704
    invoke-virtual {p0}, Landroidx/preference/Preference;->onNavigationEvent()V

    :cond_2
    return-void
.end method

.method public onPostMessage(Z)V
    .locals 4

    .line 1442
    iget-object v0, p0, Landroidx/preference/Preference;->INotificationSideChannel$Stub:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 1448
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1450
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    invoke-virtual {v3, p0, p1}, Landroidx/preference/Preference;->onNavigationEvent(Landroidx/preference/Preference;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onPostMessage(I)Z
    .locals 5

    .line 1736
    invoke-virtual {p0}, Landroidx/preference/Preference;->ICustomTabsService$Stub()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    not-int v0, p1

    .line 1740
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->onRelationshipValidationResult(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    return v2

    .line 1745
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->warmup()Lo/handleMediaPlayPauseKeySingleTapIfPending;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1749
    iget-object v0, p0, Landroidx/preference/Preference;->onMessageChannelReady:Lo/onPlayFromUri;

    .line 30320
    iget-object v3, v0, Lo/onPlayFromUri;->extraCallback:Landroid/content/SharedPreferences;

    if-nez v3, :cond_2

    .line 30327
    iget-object v3, v0, Lo/onPlayFromUri;->onPostMessage:Landroid/content/Context;

    .line 30331
    iget-object v4, v0, Lo/onPlayFromUri;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lo/onPlayFromUri;->extraCallback:Landroid/content/SharedPreferences;

    .line 30335
    :cond_2
    iget-object v0, v0, Lo/onPlayFromUri;->extraCallback:Landroid/content/SharedPreferences;

    .line 29494
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1750
    iget-object v1, p0, Landroidx/preference/Preference;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1751
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->extraCallback(Landroid/content/SharedPreferences$Editor;)V

    return v2

    .line 29081
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented on this data store"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onRelationshipValidationResult(I)I
    .locals 4

    .line 1767
    invoke-virtual {p0}, Landroidx/preference/Preference;->ICustomTabsService$Stub()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 1771
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->warmup()Lo/handleMediaPlayPauseKeySingleTapIfPending;

    move-result-object v0

    if-eqz v0, :cond_1

    return p1

    .line 1776
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->onMessageChannelReady:Lo/onPlayFromUri;

    .line 32320
    iget-object v1, v0, Lo/onPlayFromUri;->extraCallback:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2

    .line 32327
    iget-object v1, v0, Lo/onPlayFromUri;->onPostMessage:Landroid/content/Context;

    .line 32331
    iget-object v2, v0, Lo/onPlayFromUri;->onNavigationEvent:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lo/onPlayFromUri;->extraCallback:Landroid/content/SharedPreferences;

    .line 32335
    :cond_2
    iget-object v0, v0, Lo/onPlayFromUri;->extraCallback:Landroid/content/SharedPreferences;

    .line 1776
    iget-object v1, p0, Landroidx/preference/Preference;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method protected onRelationshipValidationResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1659
    invoke-virtual {p0}, Landroidx/preference/Preference;->ICustomTabsService$Stub()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 1663
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->warmup()Lo/handleMediaPlayPauseKeySingleTapIfPending;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object p1

    .line 1668
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->onMessageChannelReady:Lo/onPlayFromUri;

    .line 22320
    iget-object v1, v0, Lo/onPlayFromUri;->extraCallback:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2

    .line 22327
    iget-object v1, v0, Lo/onPlayFromUri;->onPostMessage:Landroid/content/Context;

    .line 22331
    iget-object v2, v0, Lo/onPlayFromUri;->onNavigationEvent:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lo/onPlayFromUri;->extraCallback:Landroid/content/SharedPreferences;

    .line 22335
    :cond_2
    iget-object v0, v0, Lo/onPlayFromUri;->extraCallback:Landroid/content/SharedPreferences;

    .line 1668
    iget-object v1, p0, Landroidx/preference/Preference;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onTransact()Ljava/lang/CharSequence;
    .locals 1

    .line 775
    iget-object v0, p0, Landroidx/preference/Preference;->onTransact:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final postMessage()Z
    .locals 1

    .line 906
    iget-boolean v0, p0, Landroidx/preference/Preference;->ICustomTabsService$Stub$Proxy:Z

    return v0
.end method

.method public requestPostMessageChannel()Z
    .locals 1

    .line 1015
    iget-boolean v0, p0, Landroidx/preference/Preference;->extraCommand:Z

    return v0
.end method

.method setDefaultImpl()Ljava/lang/StringBuilder;
    .locals 4

    .line 1961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1962
    invoke-virtual {p0}, Landroidx/preference/Preference;->getInterfaceDescriptor()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1963
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_0

    .line 1964
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1966
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->onTransact()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1967
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1968
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1970
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1972
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1946
    invoke-virtual {p0}, Landroidx/preference/Preference;->setDefaultImpl()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateVisuals()Z
    .locals 1

    .line 1004
    iget-object v0, p0, Landroidx/preference/Preference;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected validateRelationship()V
    .locals 1

    .line 1266
    iget-object v0, p0, Landroidx/preference/Preference;->INotificationSideChannel$Stub$Proxy:Landroidx/preference/Preference$extraCallback;

    if-eqz v0, :cond_0

    .line 1267
    invoke-interface {v0}, Landroidx/preference/Preference$extraCallback;->onMessageChannelReady()V

    :cond_0
    return-void
.end method

.method public warmup()Lo/handleMediaPlayPauseKeySingleTapIfPending;
    .locals 2

    .line 469
    iget-object v0, p0, Landroidx/preference/Preference;->onNavigationEvent:Lo/handleMediaPlayPauseKeySingleTapIfPending;

    if-eqz v0, :cond_0

    return-object v0

    .line 471
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->onMessageChannelReady:Lo/onPlayFromUri;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :cond_1
    return-object v1
.end method
