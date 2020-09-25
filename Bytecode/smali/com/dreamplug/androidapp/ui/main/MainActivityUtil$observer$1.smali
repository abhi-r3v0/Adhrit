.class public final Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/updateHomeAccessibility;-><init>(Lo/asBinder;Lo/updateNavigationIcon;)V
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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onCreate",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onDestroy",
        "onPause",
        "onResume",
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
.field final synthetic ICustomTabsCallback:Lo/updateHomeAccessibility;

.field final synthetic onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;


# direct methods
.method public constructor <init>(Lo/updateHomeAccessibility;Lo/MediaControllerCompatApi21$CallbackProxy;Lo/updateNavigationIcon;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/MediaControllerCompatApi21$CallbackProxy;",
            "Lo/updateNavigationIcon;",
            ")V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    iput-object p2, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/toLegacyStreamType;)V
    .locals 6

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    new-instance v0, Lo/setSwitchMinWidth;

    iget-object v1, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    .line 1042
    iget-object v1, v1, Lo/updateHomeAccessibility;->onTransact:Lo/asBinder;

    .line 57
    check-cast v1, Lo/onSessionEvent;

    invoke-direct {v0, v1}, Lo/setSwitchMinWidth;-><init>(Lo/onSessionEvent;)V

    .line 2042
    iput-object v0, p1, Lo/updateHomeAccessibility;->onNavigationEvent:Lo/setSwitchMinWidth;

    .line 58
    iget-object p1, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    .line 3042
    iget-object p1, p1, Lo/updateHomeAccessibility;->onTransact:Lo/asBinder;

    const-string v0, "keyguard"

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 59
    sget-object p1, Lo/setSplitTrack;->ICustomTabsService:Lo/setSplitTrack;

    .line 4000
    sget-object p1, Lo/setSplitTrack;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setActive;

    .line 59
    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    .line 4042
    iget-object v0, v0, Lo/updateHomeAccessibility;->onTransact:Lo/asBinder;

    .line 59
    check-cast v0, Lo/toLegacyStreamType;

    new-instance v1, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1$onMessageChannelReady;

    invoke-direct {v1, p0}, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1$onMessageChannelReady;-><init>(Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 65
    sget-object p1, Lo/hitThumb;->asBinder:Lo/hitThumb;

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    .line 5042
    iget-object v0, v0, Lo/updateHomeAccessibility;->onTransact:Lo/asBinder;

    .line 65
    check-cast v0, Lo/toLegacyStreamType;

    new-instance v1, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1$onPostMessage;

    invoke-direct {v1, p0}, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1$onPostMessage;-><init>(Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 74
    iget-object p1, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    .line 6042
    iget-object p1, p1, Lo/updateHomeAccessibility;->extraCallback:Lo/setActive;

    .line 74
    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    .line 7042
    iget-object v0, v0, Lo/updateHomeAccessibility;->onTransact:Lo/asBinder;

    .line 74
    check-cast v0, Lo/toLegacyStreamType;

    new-instance v1, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1$ICustomTabsCallback;

    invoke-direct {v1, p0}, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1$ICustomTabsCallback;-><init>(Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 88
    sget-object p1, Lo/animateThumbToCheckedState;->extraCallback:Lo/animateThumbToCheckedState;

    iget-object p1, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    .line 8042
    iget-object p1, p1, Lo/updateHomeAccessibility;->onTransact:Lo/asBinder;

    .line 88
    check-cast p1, Lo/onSessionEvent;

    invoke-static {p1}, Lo/animateThumbToCheckedState;->extraCallback(Lo/onSessionEvent;)V

    .line 90
    sget-object p1, Lo/setTitleInt;->onTransact:Lo/setTitleInt;

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    .line 9042
    iget-object v0, v0, Lo/updateHomeAccessibility;->onTransact:Lo/asBinder;

    .line 90
    check-cast v0, Lo/toLegacyStreamType;

    new-instance v1, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1$extraCallback;

    invoke-direct {v1, p0}, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1$extraCallback;-><init>(Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 97
    sget-object p1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    invoke-static {}, Lo/updateItemAt;->onMessageChannelReady()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    .line 10042
    iget-object v0, v0, Lo/updateHomeAccessibility;->onTransact:Lo/asBinder;

    .line 97
    invoke-virtual {v0}, Lo/getMediaDescription;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "activity.lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0xc8

    new-instance v3, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1$onNavigationEvent;

    invoke-direct {v3, p0}, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1$onNavigationEvent;-><init>(Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;)V

    check-cast v3, Lo/getServerTime;

    invoke-static {p1, v0, v1, v2, v3}, Lo/getTextOn;->extraCallback(Landroid/os/Handler;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    .line 112
    sget-object p1, Lo/openOptionsMenu;->onMessageChannelReady:Lo/openOptionsMenu;

    iget-object p1, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    check-cast p1, Lo/openOptionsMenu$onPostMessage;

    invoke-static {p1}, Lo/openOptionsMenu;->onPostMessage(Lo/openOptionsMenu$onPostMessage;)V

    .line 113
    sget-object p1, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    iget-object p1, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    .line 11042
    iget-object p1, p1, Lo/updateHomeAccessibility;->onTransact:Lo/asBinder;

    .line 113
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "onboarding_deeplink"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_5

    sget-object p1, Lo/getFloat;->ICustomTabsCallback$Stub:Lo/getFloat;

    .line 11320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 11321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    .line 113
    :goto_1
    check-cast p1, Lo/getThumbTintList;

    if-eqz p1, :cond_3

    .line 12011
    iget-boolean v3, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v3, :cond_2

    goto :goto_2

    .line 12016
    :cond_2
    iget-object v0, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 113
    :goto_2
    check-cast v0, Lo/getFont;

    :cond_3
    if-nez v0, :cond_5

    sget-object p1, Lo/getDrawableIfKnown;->onMessageChannelReady:Lo/getDrawableIfKnown;

    invoke-static {}, Lo/getDrawableIfKnown;->onPostMessage()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 p1, 0x1

    :goto_4
    invoke-static {p1}, Lo/getTrackTintList;->ICustomTabsCallback(Z)V

    const/4 p1, 0x3

    new-array v0, p1, [Lo/addWrite;

    .line 116
    sget-object v3, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->newSession()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 12043
    new-instance v4, Lo/addWrite;

    const-string v5, "is_deeplink_launch"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v2

    .line 117
    iget-object v3, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    .line 13042
    iget-object v3, v3, Lo/updateHomeAccessibility;->onTransact:Lo/asBinder;

    .line 117
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "onboarding_cp_succeed"

    if-eqz v3, :cond_6

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 13043
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v4, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v1

    const/4 v1, 0x2

    .line 118
    iget-object v3, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    .line 14042
    iget-object v3, v3, Lo/updateHomeAccessibility;->onTransact:Lo/asBinder;

    .line 118
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string v4, "from_onboarding"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    :cond_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 14043
    new-instance v3, Lo/addWrite;

    const-string v4, "is_onboarding_flow"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const-string v1, "pairs"

    .line 116
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "main_screen_load"

    .line 114
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void

    .line 58
    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.KeyguardManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final asInterface(Lo/toLegacyStreamType;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    sget-object p1, Lo/openOptionsMenu;->onMessageChannelReady:Lo/openOptionsMenu;

    iget-object p1, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    check-cast p1, Lo/openOptionsMenu$onPostMessage;

    invoke-static {p1}, Lo/openOptionsMenu;->extraCallback(Lo/openOptionsMenu$onPostMessage;)V

    return-void
.end method

.method public final extraCallback(Lo/toLegacyStreamType;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    .line 23042
    iget-object p1, p1, Lo/updateHomeAccessibility;->onNavigationEvent:Lo/setSwitchMinWidth;

    if-nez p1, :cond_0

    const-string/jumbo v0, "updateManager"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 23246
    :cond_0
    iget-object v0, p1, Lo/setSwitchMinWidth;->onTransact:Lo/reauthenticate;

    iget-object p1, p1, Lo/setSwitchMinWidth;->onRelationshipValidationResult:Lo/detect;

    invoke-interface {v0, p1}, Lo/reauthenticate;->onNavigationEvent(Lo/detect;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/toLegacyStreamType;)V
    .locals 5

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    .line 15159
    iget-object v0, p1, Lo/updateHomeAccessibility;->onTransact:Lo/asBinder;

    check-cast v0, Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Lo/fromParcel;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 15160
    iget-object v0, p1, Lo/updateHomeAccessibility;->extraCallback:Lo/setActive;

    new-instance v1, Lo/ensureContentInsets$extraCallback;

    .line 15161
    sget-object v2, Lo/setCardBackgroundColor;->onNavigationEvent:Lo/setCardBackgroundColor$onPostMessage;

    .line 16020
    invoke-static {}, Lo/setCardBackgroundColor;->onMessageChannelReady()[Ljava/lang/String;

    move-result-object v2

    .line 15163
    iget-object v3, p1, Lo/updateHomeAccessibility;->ICustomTabsCallback:Lo/getServerTime;

    .line 15164
    iget-object v4, p1, Lo/updateHomeAccessibility;->ICustomTabsCallback$Stub:Lo/getServerTime;

    .line 15165
    iget-object p1, p1, Lo/updateHomeAccessibility;->ICustomTabsCallback:Lo/getServerTime;

    .line 15160
    invoke-direct {v1, v2, p1, v3, v4}, Lo/ensureContentInsets$extraCallback;-><init>([Ljava/lang/String;Lo/getServerTime;Lo/getServerTime;Lo/getServerTime;)V

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    goto :goto_0

    .line 15167
    :cond_0
    iget-object p1, p1, Lo/updateHomeAccessibility;->onPostMessage:Lo/setCardBackgroundColor;

    if-eqz p1, :cond_1

    .line 16058
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lo/fromParcel;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 16059
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 16192
    :cond_1
    :goto_0
    sget-object p1, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 17122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object p1

    const-string v0, "context"

    if-nez p1, :cond_2

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 16192
    :cond_2
    check-cast p1, Landroid/content/Context;

    const-string v1, "android.permission.READ_SMS"

    invoke-static {p1, v1}, Lo/fromParcel;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    .line 16193
    sget-object p1, Lo/setAutoMeasureEnabled;->ICustomTabsCallback:Lo/setAutoMeasureEnabled;

    new-instance p1, Lo/moveView;

    const-string/jumbo v1, "sms_permission"

    invoke-direct {p1, v1}, Lo/moveView;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lo/setAutoMeasureEnabled;->extraCallback(Lo/moveView;)V

    .line 16195
    :cond_3
    sget-object p1, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 18122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 16195
    :cond_4
    check-cast p1, Landroid/content/Context;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-static {p1, v1}, Lo/fromParcel;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_5

    .line 16196
    sget-object p1, Lo/setAutoMeasureEnabled;->ICustomTabsCallback:Lo/setAutoMeasureEnabled;

    new-instance p1, Lo/moveView;

    const-string v1, "contact_permission"

    invoke-direct {p1, v1}, Lo/moveView;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lo/setAutoMeasureEnabled;->extraCallback(Lo/moveView;)V

    .line 16198
    :cond_5
    sget-object p1, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 19122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 16198
    :cond_6
    check-cast p1, Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v0}, Lo/fromParcel;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_7

    .line 16199
    sget-object p1, Lo/setAutoMeasureEnabled;->ICustomTabsCallback:Lo/setAutoMeasureEnabled;

    new-instance p1, Lo/moveView;

    const-string v0, "location_permission"

    invoke-direct {p1, v0}, Lo/moveView;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lo/setAutoMeasureEnabled;->extraCallback(Lo/moveView;)V

    .line 125
    :cond_7
    iget-object p1, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    .line 20042
    iget-object p1, p1, Lo/updateHomeAccessibility;->onNavigationEvent:Lo/setSwitchMinWidth;

    const-string/jumbo v0, "updateManager"

    if-nez p1, :cond_8

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 20064
    :cond_8
    iget-object v1, p1, Lo/setSwitchMinWidth;->onTransact:Lo/reauthenticate;

    invoke-interface {v1}, Lo/reauthenticate;->ICustomTabsCallback()Lo/getMinidumpFile;

    move-result-object v1

    .line 20065
    new-instance v2, Lo/setSwitchMinWidth$extraCallback;

    invoke-direct {v2, p1}, Lo/setSwitchMinWidth$extraCallback;-><init>(Lo/setSwitchMinWidth;)V

    check-cast v2, Lo/getAppFile;

    invoke-virtual {v1, v2}, Lo/getMinidumpFile;->ICustomTabsCallback(Lo/getAppFile;)Lo/getMinidumpFile;

    .line 126
    iget-object p1, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    .line 21042
    iget-object p1, p1, Lo/updateHomeAccessibility;->onNavigationEvent:Lo/setSwitchMinWidth;

    if-nez p1, :cond_9

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 126
    :cond_9
    invoke-static {}, Lo/setSwitchMinWidth;->onNavigationEvent()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 127
    sget-object p1, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->ICustomTabsCallback$Stub()V

    .line 128
    iget-object p1, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    .line 22042
    iget-object p1, p1, Lo/updateHomeAccessibility;->onNavigationEvent:Lo/setSwitchMinWidth;

    if-nez p1, :cond_a

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 128
    :cond_a
    invoke-virtual {p1}, Lo/setSwitchMinWidth;->onMessageChannelReady()V

    :cond_b
    return-void
.end method
