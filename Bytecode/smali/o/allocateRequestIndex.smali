.class public final Lo/allocateRequestIndex;
.super Lo/getReenterTransition;
.source ""

# interfaces
.implements Lo/removeItemAt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/allocateRequestIndex$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00a8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0018\u0000 I2\u00020\u00012\u00020\u0002:\u0001IB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0002J\u0008\u0010\'\u001a\u00020$H\u0002J\u0012\u0010(\u001a\u00020$2\u0008\u0010)\u001a\u0004\u0018\u00010*H\u0016J-\u0010+\u001a\u00020$2\u0006\u0010,\u001a\u00020-2\u000e\u0010.\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002000/2\u0006\u00101\u001a\u000202H\u0016\u00a2\u0006\u0002\u00103J\u0008\u00104\u001a\u00020$H\u0016J\u0008\u00105\u001a\u00020$H\u0016J\u001a\u00106\u001a\u00020$2\u0006\u00107\u001a\u0002082\u0008\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u0008\u00109\u001a\u00020$H\u0002J\u0010\u0010:\u001a\u00020$2\u0006\u0010;\u001a\u00020<H\u0016J\u0010\u0010=\u001a\u00020$2\u0006\u0010>\u001a\u00020?H\u0002J\u001e\u0010@\u001a\u00020$2\u0006\u0010A\u001a\u00020\u001d2\u000c\u0010B\u001a\u0008\u0012\u0004\u0012\u00020$0CH\u0002J(\u0010D\u001a\u00020$2\u0006\u0010E\u001a\u0002002\u0018\u0008\u0002\u0010F\u001a\u0012\u0012\u0004\u0012\u000200\u0012\u0006\u0012\u0004\u0018\u00010H\u0018\u00010GR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u0004\u0018\u00010\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u000b\u001a\u0004\u0008\u0014\u0010\u0015R\u001b\u0010\u0017\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u000b\u001a\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u001e\u001a\u00020\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u000b\u001a\u0004\u0008 \u0010!\u00a8\u0006J"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/cm/unbilled/UnBilledFragment;",
        "Lcom/dreamplug/fabrik/ui/cm/CMBaseFrag;",
        "Lcom/dreamplug/utils/ScrollBackHandler;",
        "()V",
        "errorLayout",
        "Lcom/dreamplug/fabrik/helper/ui/widget/ErrorStateView;",
        "extra",
        "Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$SourceExtra;",
        "getExtra",
        "()Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$SourceExtra;",
        "extra$delegate",
        "Lkotlin/Lazy;",
        "loaderView",
        "Lcom/dreamplug/fabrik/helper/ui/widget/FabrikLoaderView;",
        "onItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "router",
        "Lcom/dreamplug/fabrik/ui/cm/CardManagementCtaManager;",
        "getRouter",
        "()Lcom/dreamplug/fabrik/ui/cm/CardManagementCtaManager;",
        "router$delegate",
        "unBilledAdapter",
        "Lcom/dreamplug/utils/list/VerticalAdapter;",
        "getUnBilledAdapter",
        "()Lcom/dreamplug/utils/list/VerticalAdapter;",
        "unBilledAdapter$delegate",
        "unBilledUnSupported",
        "",
        "unBilledViewModel",
        "Lcom/dreamplug/fabrik/ui/cm/unbilled/UnBilledViewModel;",
        "getUnBilledViewModel",
        "()Lcom/dreamplug/fabrik/ui/cm/unbilled/UnBilledViewModel;",
        "unBilledViewModel$delegate",
        "blockUnBilledTab",
        "",
        "template",
        "Lcom/dreamplug/fabrik/ui/cm/models/Template;",
        "checkIfIntroAndSmsPermission",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onRequestPermissionsResult",
        "requestCode",
        "",
        "permissions",
        "",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "onResume",
        "onScrollBackToTop",
        "onViewCreated",
        "view",
        "Landroid/view/View;",
        "requestSMSPermission",
        "setScreenData",
        "command",
        "Lcom/dreamplug/fabrik/ui/main/navigation/PageCommand$ScreenData$SetScreenData;",
        "setState",
        "state",
        "Lcom/dreamplug/fabrik/ui/cm/CMResponseState;",
        "showIntro",
        "isFirstTime",
        "onCtaClick",
        "Lkotlin/Function0;",
        "tagEvent",
        "eventName",
        "hashMap",
        "",
        "",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final ICustomTabsService:I

.field private static final getInterfaceDescriptor:I

.field public static final onMessageChannelReady:Lo/allocateRequestIndex$extraCallback;


# instance fields
.field private ICustomTabsCallback:Z

.field private ICustomTabsCallback$Stub:Lo/onMultiWindowModeChanged;

.field private asBinder:Lo/onDestroyView;

.field private final asInterface:Lo/hasGapsToFix$onMessageChannelReady;

.field private final extraCallback:Lo/isSameListener;

.field private newSession:Ljava/util/HashMap;

.field private final onNavigationEvent:Lo/isSameListener;

.field private final onPostMessage:Lo/isSameListener;

.field private onRelationshipValidationResult:Landroidx/recyclerview/widget/RecyclerView;

.field private final onTransact:Lo/isSameListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lo/allocateRequestIndex$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/allocateRequestIndex$extraCallback;-><init>(B)V

    sput-object v0, Lo/allocateRequestIndex;->onMessageChannelReady:Lo/allocateRequestIndex$extraCallback;

    .line 24021
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Resources.getSystem()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v2, 0x1

    const/high16 v3, 0x41f00000    # 30.0f

    .line 24022
    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 319
    sput v0, Lo/allocateRequestIndex;->ICustomTabsService:I

    .line 25021
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    .line 25022
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 320
    sput v0, Lo/allocateRequestIndex;->getInterfaceDescriptor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const v0, 0x7f0e00de

    .line 53
    invoke-direct {p0, v0}, Lo/getReenterTransition;-><init>(I)V

    .line 55
    new-instance v0, Lo/allocateRequestIndex$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lo/allocateRequestIndex$ICustomTabsCallback$Stub$Proxy;-><init>(Lo/allocateRequestIndex;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 55
    iput-object v2, p0, Lo/allocateRequestIndex;->onNavigationEvent:Lo/isSameListener;

    .line 60
    sget-object v0, Lo/allocateRequestIndex$asBinder;->onNavigationEvent:Lo/allocateRequestIndex$asBinder;

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 60
    iput-object v2, p0, Lo/allocateRequestIndex;->onPostMessage:Lo/isSameListener;

    .line 343
    new-instance v0, Lo/allocateRequestIndex$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/allocateRequestIndex$ICustomTabsCallback;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v0, Lo/getServerTime;

    .line 345
    const-class v2, Lo/requestPermissionsFromFragment;

    invoke-static {v2}, Lo/applyEmulatorSettings;->ICustomTabsCallback(Ljava/lang/Class;)Lo/viewExistsForQuery;

    move-result-object v2

    new-instance v3, Lo/allocateRequestIndex$onMessageChannelReady;

    invoke-direct {v3, v0}, Lo/allocateRequestIndex$onMessageChannelReady;-><init>(Lo/getServerTime;)V

    check-cast v3, Lo/getServerTime;

    const/4 v0, 0x0

    invoke-static {p0, v2, v3, v0}, Lo/getCurrentVolume;->onPostMessage(Landroidx/fragment/app/Fragment;Lo/viewExistsForQuery;Lo/getServerTime;Lo/getServerTime;)Lo/isSameListener;

    move-result-object v0

    iput-object v0, p0, Lo/allocateRequestIndex;->extraCallback:Lo/isSameListener;

    .line 66
    new-instance v0, Lo/allocateRequestIndex$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/allocateRequestIndex$onNavigationEvent;-><init>(Lo/allocateRequestIndex;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 66
    iput-object v1, p0, Lo/allocateRequestIndex;->onTransact:Lo/isSameListener;

    .line 273
    new-instance v0, Lo/allocateRequestIndex$onPostMessage;

    invoke-direct {v0, p0}, Lo/allocateRequestIndex$onPostMessage;-><init>(Lo/allocateRequestIndex;)V

    check-cast v0, Lo/hasGapsToFix$onMessageChannelReady;

    iput-object v0, p0, Lo/allocateRequestIndex;->asInterface:Lo/hasGapsToFix$onMessageChannelReady;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/allocateRequestIndex;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 53
    iget-object p0, p0, Lo/allocateRequestIndex;->onRelationshipValidationResult:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_0

    const-string v0, "recyclerView"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic ICustomTabsCallback$Stub(Lo/allocateRequestIndex;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lo/allocateRequestIndex;->asBinder()V

    return-void
.end method

.method public static final synthetic asBinder(Lo/allocateRequestIndex;)Lo/requestPermissionsFromFragment;
    .locals 0

    .line 37000
    iget-object p0, p0, Lo/allocateRequestIndex;->extraCallback:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/requestPermissionsFromFragment;

    return-object p0
.end method

.method private final asBinder()V
    .locals 3

    .line 129
    iget-boolean v0, p0, Lo/allocateRequestIndex;->ICustomTabsCallback:Z

    if-nez v0, :cond_2

    .line 131
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 7000
    sget-object v0, Lo/setTrackTintMode;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal:Lo/setTitleTextColor;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v2, 0x42

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Lo/getAllowReturnTransitionOverlap$extraCallback;->onNavigationEvent:Lo/getAllowReturnTransitionOverlap$extraCallback;

    check-cast v0, Lo/getAllowReturnTransitionOverlap;

    invoke-direct {p0, v0}, Lo/allocateRequestIndex;->onMessageChannelReady(Lo/getAllowReturnTransitionOverlap;)V

    return-void

    .line 135
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_SMS"

    .line 134
    invoke-static {v0, v1}, Lo/fromParcel;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    sget-object v0, Lo/getAllowReturnTransitionOverlap$ICustomTabsCallback;->onNavigationEvent:Lo/getAllowReturnTransitionOverlap$ICustomTabsCallback;

    check-cast v0, Lo/getAllowReturnTransitionOverlap;

    invoke-direct {p0, v0}, Lo/allocateRequestIndex;->onMessageChannelReady(Lo/getAllowReturnTransitionOverlap;)V

    return-void

    .line 141
    :cond_1
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->onBoardingView:I

    invoke-virtual {p0, v0}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "onBoardingView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v1, "$this$gone"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 7017
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public static final synthetic extraCallback(Lo/allocateRequestIndex;)Lo/repositionToWrapContentIfNecessary;
    .locals 0

    .line 26000
    iget-object p0, p0, Lo/allocateRequestIndex;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/repositionToWrapContentIfNecessary;

    return-object p0
.end method

.method public static final synthetic extraCallback(Lo/allocateRequestIndex;Lo/getAllowReturnTransitionOverlap;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lo/allocateRequestIndex;->onMessageChannelReady(Lo/getAllowReturnTransitionOverlap;)V

    return-void
.end method

.method private final extraCallback(ZLo/getServerTime;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const v0, 0x7f1304a0

    goto :goto_0

    :cond_0
    const v0, 0x7f1304a1

    :goto_0
    if-eqz p1, :cond_1

    const v1, 0x7f13049e

    goto :goto_1

    :cond_1
    const v1, 0x7f13049c

    :goto_1
    if-eqz p1, :cond_2

    const p1, 0x7f13049f

    goto :goto_2

    :cond_2
    const p1, 0x7f13049d

    .line 243
    :goto_2
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->imageView2:I

    invoke-virtual {p0, v2}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f080410

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->titleOnboarding:I

    invoke-virtual {p0, v2}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    invoke-virtual {v2, v0}, Lo/createFullSpanItemFromEnd;->setTextV2(I)V

    .line 245
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->contentOnboarding:I

    invoke-virtual {p0, v0}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    invoke-virtual {v0, v1}, Lo/createFullSpanItemFromEnd;->setTextV2(I)V

    .line 246
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->ctaPrimary:I

    invoke-virtual {p0, v0}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/saveOldPosition;

    const-string v1, "ctaPrimary"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v1, "$this$gone"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 16017
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->ctaPrimary2:I

    invoke-virtual {p0, v0}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "ctaPrimary2"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->ctaPrimary2:I

    invoke-virtual {p0, p1}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance v0, Lo/allocateRequestIndex$ICustomTabsService;

    invoke-direct {v0, p2}, Lo/allocateRequestIndex$ICustomTabsService;-><init>(Lo/getServerTime;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p1, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 251
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->ctaPrimary2:I

    invoke-virtual {p0, p1}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string p2, "$this$visible"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 17009
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 252
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->onBoardingView:I

    invoke-virtual {p0, p1}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const-string v1, "onBoardingView"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18009
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/allocateRequestIndex;)V
    .locals 1

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lo/allocateRequestIndex;->ICustomTabsCallback:Z

    return-void
.end method

.method private final onMessageChannelReady(Lo/getAllowReturnTransitionOverlap;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 148
    iget-object v2, v0, Lo/allocateRequestIndex;->asBinder:Lo/onDestroyView;

    if-nez v2, :cond_0

    const-string v3, "loaderView"

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 149
    iget-object v2, v0, Lo/allocateRequestIndex;->ICustomTabsCallback$Stub:Lo/onMultiWindowModeChanged;

    const-string v3, "errorLayout"

    if-nez v2, :cond_1

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    check-cast v2, Landroid/view/View;

    const-string v4, "$this$gone"

    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x8

    .line 8017
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 151
    instance-of v2, v1, Lo/getAllowReturnTransitionOverlap$onNavigationEvent;

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    .line 152
    invoke-static/range {p0 .. p0}, Lo/extraCallback;->extraCallback(Lo/toLegacyStreamType;)Lo/MediaControllerCompatApi23$TransportControls;

    move-result-object v2

    check-cast v2, Lo/isFromUser;

    new-instance v3, Lo/allocateRequestIndex$onRelationshipValidationResult;

    invoke-direct {v3, v0, v1, v6}, Lo/allocateRequestIndex$onRelationshipValidationResult;-><init>(Lo/allocateRequestIndex;Lo/getAllowReturnTransitionOverlap;Lo/setSessionPersistenceKey;)V

    check-cast v3, Lo/nextTransactionOrder;

    const/4 v1, 0x3

    .line 9001
    invoke-static {v2, v6, v6, v3, v1}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(Lo/isFromUser;Lo/isZombied;Lo/getQueryParams;Lo/nextTransactionOrder;I)Lo/assertValidTrackedQuery;

    return-void

    .line 171
    :cond_2
    instance-of v2, v1, Lo/getAllowReturnTransitionOverlap$onPostMessage;

    const-string v7, "pairs"

    const-string/jumbo v8, "screen"

    const-string v9, "cm_unbilled_farm_screen_load"

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v2, :cond_7

    new-array v2, v10, [Lo/addWrite;

    .line 9043
    new-instance v12, Lo/addWrite;

    const-string v13, "ERROR"

    invoke-direct {v12, v8, v13}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v2, v11

    .line 172
    invoke-static {v2, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9105
    new-instance v7, Ljava/util/HashMap;

    invoke-static {v10}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    check-cast v7, Ljava/util/Map;

    invoke-static {v7, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 172
    invoke-virtual {v0, v9, v7}, Lo/allocateRequestIndex;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 173
    iget-object v2, v0, Lo/allocateRequestIndex;->ICustomTabsCallback$Stub:Lo/onMultiWindowModeChanged;

    if-nez v2, :cond_3

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_3
    new-instance v7, Lo/onMultiWindowModeChanged$onPostMessage;

    .line 174
    check-cast v1, Lo/getAllowReturnTransitionOverlap$onPostMessage;

    .line 10007
    iget-object v8, v1, Lo/getAllowReturnTransitionOverlap$onPostMessage;->onPostMessage:Lo/getAllowReturnTransitionOverlap$onMessageChannelReady;

    .line 10009
    iget v13, v8, Lo/getAllowReturnTransitionOverlap$onMessageChannelReady;->onNavigationEvent:I

    .line 11007
    iget-object v8, v1, Lo/getAllowReturnTransitionOverlap$onPostMessage;->onPostMessage:Lo/getAllowReturnTransitionOverlap$onMessageChannelReady;

    .line 11010
    iget v14, v8, Lo/getAllowReturnTransitionOverlap$onMessageChannelReady;->onPostMessage:I

    .line 12007
    iget-object v1, v1, Lo/getAllowReturnTransitionOverlap$onPostMessage;->onPostMessage:Lo/getAllowReturnTransitionOverlap$onMessageChannelReady;

    .line 12011
    iget v15, v1, Lo/getAllowReturnTransitionOverlap$onMessageChannelReady;->onMessageChannelReady:I

    .line 13000
    iget-object v1, v0, Lo/allocateRequestIndex;->extraCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    .line 180
    invoke-static {}, Lo/requestPermissionsFromFragment;->onPostMessage()Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    :cond_4
    move-object/from16 v18, v6

    .line 181
    new-instance v1, Lo/allocateRequestIndex$getInterfaceDescriptor;

    invoke-direct {v1, v0}, Lo/allocateRequestIndex$getInterfaceDescriptor;-><init>(Lo/allocateRequestIndex;)V

    move-object/from16 v19, v1

    check-cast v19, Lo/getServerTime;

    const-string/jumbo v16, "unbilled_farm"

    const-string v17, "API_ERROR"

    move-object v12, v7

    .line 173
    invoke-direct/range {v12 .. v19}, Lo/onMultiWindowModeChanged$onPostMessage;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/getServerTime;)V

    invoke-virtual {v2, v7}, Lo/onMultiWindowModeChanged;->setData(Lo/onMultiWindowModeChanged$onPostMessage;)V

    .line 185
    iget-object v1, v0, Lo/allocateRequestIndex;->onRelationshipValidationResult:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_5

    const-string v2, "recyclerView"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_5
    check-cast v1, Landroid/view/View;

    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13017
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v1, v0, Lo/allocateRequestIndex;->ICustomTabsCallback$Stub:Lo/onMultiWindowModeChanged;

    if-nez v1, :cond_6

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_6
    check-cast v1, Landroid/view/View;

    const-string v2, "$this$visible"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14009
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 188
    :cond_7
    instance-of v2, v1, Lo/getAllowReturnTransitionOverlap$ICustomTabsCallback;

    if-eqz v2, :cond_8

    new-array v1, v10, [Lo/addWrite;

    .line 14043
    new-instance v2, Lo/addWrite;

    const-string v3, "PERMISSION_MISSING"

    invoke-direct {v2, v8, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v11

    .line 189
    invoke-static {v1, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v10}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 189
    invoke-virtual {v0, v9, v2}, Lo/allocateRequestIndex;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 190
    new-instance v1, Lo/allocateRequestIndex$warmup;

    invoke-direct {v1, v0}, Lo/allocateRequestIndex$warmup;-><init>(Lo/allocateRequestIndex;)V

    check-cast v1, Lo/getServerTime;

    invoke-direct {v0, v11, v1}, Lo/allocateRequestIndex;->extraCallback(ZLo/getServerTime;)V

    return-void

    .line 196
    :cond_8
    instance-of v1, v1, Lo/getAllowReturnTransitionOverlap$extraCallback;

    if-eqz v1, :cond_9

    new-array v1, v10, [Lo/addWrite;

    .line 15043
    new-instance v2, Lo/addWrite;

    const-string v3, "INTRO"

    invoke-direct {v2, v8, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v11

    .line 197
    invoke-static {v1, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v10}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 197
    invoke-virtual {v0, v9, v2}, Lo/allocateRequestIndex;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 198
    new-instance v1, Lo/allocateRequestIndex$newSession;

    invoke-direct {v1, v0}, Lo/allocateRequestIndex$newSession;-><init>(Lo/allocateRequestIndex;)V

    check-cast v1, Lo/getServerTime;

    invoke-direct {v0, v10, v1}, Lo/allocateRequestIndex;->extraCallback(ZLo/getServerTime;)V

    :cond_9
    return-void
.end method

.method public static final synthetic onNavigationEvent()I
    .locals 1

    .line 53
    sget v0, Lo/allocateRequestIndex;->ICustomTabsService:I

    return v0
.end method

.method public static final synthetic onNavigationEvent(Lo/allocateRequestIndex;)Lo/onDestroyView;
    .locals 1

    .line 53
    iget-object p0, p0, Lo/allocateRequestIndex;->asBinder:Lo/onDestroyView;

    if-nez p0, :cond_0

    const-string v0, "loaderView"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static synthetic onNavigationEvent(Lo/allocateRequestIndex;Ljava/lang/String;)V
    .locals 1

    .line 323
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lo/allocateRequestIndex;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic onPostMessage(Ljava/util/List;Lo/setSessionPersistenceKey;)Ljava/lang/Object;
    .locals 3

    .line 26034
    invoke-static {}, Lo/setTrackedQueryKeys;->onPostMessage()Lo/zombifyForRemove;

    move-result-object v0

    check-cast v0, Lo/isZombied;

    new-instance v1, Lo/getReenterTransition$onPostMessage;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lo/getReenterTransition$onPostMessage;-><init>(Ljava/util/List;Lo/setSessionPersistenceKey;)V

    check-cast v1, Lo/nextTransactionOrder;

    .line 27001
    invoke-static {v0, v1, p1}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(Lo/isZombied;Lo/nextTransactionOrder;Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic onPostMessage(Lo/allocateRequestIndex;)Lo/getDimensionPixelOffset;
    .locals 0

    .line 28000
    iget-object p0, p0, Lo/allocateRequestIndex;->onPostMessage:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getDimensionPixelOffset;

    return-object p0
.end method

.method public static final synthetic onPostMessage(Lo/allocateRequestIndex;Lcom/dreamplug/fabrik/ui/cm/models/Template;)V
    .locals 8

    .line 29027
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 29061
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/cm/models/Image;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 29182
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/models/Image;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "lottie_url"

    .line 28220
    invoke-static {v0, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "$this$visible"

    const-string v4, ""

    const-string v5, "imageView2"

    if-eqz v0, :cond_2

    .line 28221
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->lottie:I

    invoke-virtual {p0, v0}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/setMinimumHeight;

    const-string v6, "lottie"

    invoke-static {v0, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 30027
    iget-object v7, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 30061
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/cm/models/Image;

    .line 30188
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/cm/models/Image;->onNavigationEvent:Ljava/lang/String;

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, v7

    .line 28221
    :goto_1
    invoke-static {v0, v4}, Lo/extraCallback;->ICustomTabsCallback(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)Lo/setMaxWidth$onNavigationEvent;

    .line 28222
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->lottie:I

    invoke-virtual {p0, v0}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/setMinimumHeight;

    invoke-static {v0, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31009
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 28223
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->imageView2:I

    invoke-virtual {p0, v0}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v4, "$this$invisible"

    invoke-static {v0, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    .line 31013
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 28225
    :cond_2
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->imageView2:I

    invoke-virtual {p0, v0}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31027
    iget-object v5, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 31061
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/cm/models/Image;

    if-eqz v5, :cond_4

    .line 31184
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/cm/models/Image;->onMessageChannelReady:Ljava/lang/String;

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v4, v5

    .line 28225
    :cond_4
    :goto_2
    invoke-static {v0, v4}, Lo/setInflatedId;->onNavigationEvent(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 28228
    :goto_3
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->titleOnboarding:I

    invoke-virtual {p0, v0}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v4, "titleOnboarding"

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 32027
    iget-object v4, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 32051
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    if-eqz v4, :cond_5

    .line 33000
    iget-object v4, v4, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    goto :goto_4

    :cond_5
    move-object v4, v1

    .line 28228
    :goto_4
    invoke-static {v0, v4}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 28229
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->contentOnboarding:I

    invoke-virtual {p0, v0}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string v4, "contentOnboarding"

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 33027
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 33053
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->onPostMessage:Lo/getTargetScrollPosition;

    if-eqz p1, :cond_6

    .line 34000
    iget-object p1, p1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    .line 28229
    :cond_6
    invoke-static {v0, v1}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 28230
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->ctaPrimary:I

    invoke-virtual {p0, p1}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/saveOldPosition;

    const-string v0, "ctaPrimary"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v0, "$this$gone"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 34017
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28231
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->ctaPrimary2:I

    invoke-virtual {p0, p1}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v4, "ctaPrimary2"

    invoke-static {p1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35017
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28232
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->onBoardingView:I

    invoke-virtual {p0, p1}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    const-string p1, "onBoardingView"

    invoke-static {p0, p1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-static {p0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36009
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static final synthetic onRelationshipValidationResult()I
    .locals 1

    .line 53
    sget v0, Lo/allocateRequestIndex;->getInterfaceDescriptor:I

    return v0
.end method

.method public static final synthetic onRelationshipValidationResult(Lo/allocateRequestIndex;)Lo/hasGapsToFix$onMessageChannelReady;
    .locals 0

    .line 53
    iget-object p0, p0, Lo/allocateRequestIndex;->asInterface:Lo/hasGapsToFix$onMessageChannelReady;

    return-object p0
.end method

.method public static final synthetic onTransact(Lo/allocateRequestIndex;)V
    .locals 4

    const-string v0, "android.permission.READ_SMS"

    .line 37208
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37209
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 37210
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 37211
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Lo/onSessionEvent;

    move-result-object v1

    const-string v2, "requireActivity()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 37212
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 37213
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 37215
    :cond_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1e57

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final extraCallback(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/allocateRequestIndex;->newSession:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/allocateRequestIndex;->newSession:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/allocateRequestIndex;->newSession:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/allocateRequestIndex;->newSession:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final extraCallback()V
    .locals 1

    iget-object v0, p0, Lo/allocateRequestIndex;->newSession:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/setRemoveDuration$extraCallback$ICustomTabsCallback;)V
    .locals 2

    const-string v0, "command"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20000
    iget-object v0, p0, Lo/allocateRequestIndex;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/requestPermissionsFromFragment;

    .line 20030
    iget-object v0, v0, Lo/requestPermissionsFromFragment;->extraCallback:Ljava/util/Map;

    .line 20069
    iget-object p1, p1, Lo/setRemoveDuration$extraCallback$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    const-string/jumbo v1, "source"

    .line 335
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 71
    invoke-super {p0, p1}, Lo/getReenterTransition;->onCreate(Landroid/os/Bundle;)V

    .line 1000
    iget-object p1, p0, Lo/allocateRequestIndex;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/requestPermissionsFromFragment;

    .line 1030
    iget-object p1, p1, Lo/requestPermissionsFromFragment;->extraCallback:Ljava/util/Map;

    .line 2000
    iget-object v0, p0, Lo/allocateRequestIndex;->onTransact:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onDetach$getDefaultImpl;

    if-eqz v0, :cond_0

    .line 2076
    iget-object v0, v0, Lo/onDetach$getDefaultImpl;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "source"

    .line 72
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string/jumbo v2, "unbilled_farm"

    invoke-virtual {p1, v2, v0, v1}, Lo/getMaxCardElevation;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    return-void
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/getReenterTransition;->onDestroyView()V

    .line 38000
    iget-object v0, p0, Lo/allocateRequestIndex;->newSession:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 5

    .line 329
    iget-object v0, p0, Lo/allocateRequestIndex;->onRelationshipValidationResult:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const-string v1, "recyclerView"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v1

    const-string v2, "lifecycle"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lo/allocateRequestIndex$asInterface;

    invoke-direct {v2, p0}, Lo/allocateRequestIndex$asInterface;-><init>(Lo/allocateRequestIndex;)V

    check-cast v2, Lo/getServerTime;

    const-wide/16 v3, 0x0

    .line 19045
    invoke-static {v0, v1, v3, v4, v2}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 19000
    iget-object v0, p0, Lo/allocateRequestIndex;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/requestPermissionsFromFragment;

    .line 19030
    iget-object v0, v0, Lo/requestPermissionsFromFragment;->extraCallback:Ljava/util/Map;

    .line 324
    invoke-interface {p2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 325
    :cond_0
    invoke-static {p1, p2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-super {p0, p1, p2, p3}, Lo/getReenterTransition;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x1e57

    if-eq p1, p2, :cond_0

    goto :goto_3

    .line 341
    :cond_0
    array-length p1, p3

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-ge v0, p1, :cond_3

    aget v2, p3, v0

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    :goto_2
    new-array p3, v1, [Lo/addWrite;

    .line 264
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 18043
    new-instance v2, Lo/addWrite;

    const-string v3, "permission"

    invoke-direct {v2, v3, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, p3, p2

    const-string p2, "pairs"

    .line 264
    invoke-static {p3, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18088
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p2, Ljava/util/Map;

    invoke-static {p2, p3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p3, "sms_permission"

    .line 264
    invoke-virtual {p0, p3, p2}, Lo/allocateRequestIndex;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)V

    if-eqz p1, :cond_4

    .line 266
    invoke-direct {p0}, Lo/allocateRequestIndex;->asBinder()V

    :cond_4
    :goto_3
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 119
    invoke-super {p0}, Lo/getReenterTransition;->onResume()V

    .line 120
    iget-boolean v0, p0, Lo/allocateRequestIndex;->ICustomTabsCallback:Z

    if-nez v0, :cond_0

    .line 121
    invoke-direct {p0}, Lo/allocateRequestIndex;->asBinder()V

    .line 123
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lo/getViewLayoutPosition;

    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lo/getViewLayoutPosition;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 6107
    iput-object v1, v0, Lo/getViewLayoutPosition;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_0

    .line 124
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.tabholder.TabFragment"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-super {p0, p1, p2}, Lo/getReenterTransition;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 78
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->errorLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/onMultiWindowModeChanged;

    const-string/jumbo v0, "view.errorLayout"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/allocateRequestIndex;->ICustomTabsCallback$Stub:Lo/onMultiWindowModeChanged;

    .line 79
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/startActivity;

    const-string/jumbo v0, "view.recyclerView"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lo/allocateRequestIndex;->onRelationshipValidationResult:Landroidx/recyclerview/widget/RecyclerView;

    .line 80
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onDestroyView;

    const-string/jumbo p2, "view.loaderView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/allocateRequestIndex;->asBinder:Lo/onDestroyView;

    if-nez p1, :cond_0

    const-string p2, "loaderView"

    .line 82
    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lo/prependViewToAllSpans;->onNavigationEvent(Lo/prependViewToAllSpans;)V

    .line 83
    iget-object p1, p0, Lo/allocateRequestIndex;->onRelationshipValidationResult:Landroidx/recyclerview/widget/RecyclerView;

    const-string p2, "recyclerView"

    if-nez p1, :cond_1

    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 84
    :cond_1
    new-instance v6, Lo/setGapStrategy;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 85
    new-instance v3, Lo/getGapStrategy;

    sget v0, Lo/allocateRequestIndex;->getInterfaceDescriptor:I

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4, v4}, Lo/getGapStrategy;-><init>(IIII)V

    .line 86
    new-instance v5, Lo/getGapStrategy;

    sget v0, Lo/allocateRequestIndex;->getInterfaceDescriptor:I

    sget v7, Lo/allocateRequestIndex;->ICustomTabsService:I

    invoke-direct {v5, v0, v7, v4, v4}, Lo/getGapStrategy;-><init>(IIII)V

    const/4 v7, 0x3

    move-object v0, v6

    move-object v4, v5

    move v5, v7

    .line 84
    invoke-direct/range {v0 .. v5}, Lo/setGapStrategy;-><init>(IILo/getGapStrategy;Lo/getGapStrategy;I)V

    .line 88
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 3000
    iget-object v0, p0, Lo/allocateRequestIndex;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/repositionToWrapContentIfNecessary;

    .line 89
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 90
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 91
    new-instance v1, Lo/allocateRequestIndex$ICustomTabsCallback$Stub;

    invoke-direct {v1, p1, v0, p0}, Lo/allocateRequestIndex$ICustomTabsCallback$Stub;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/LinearLayoutManager;Lo/allocateRequestIndex;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 109
    invoke-virtual {p0}, Lo/allocateRequestIndex;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3021
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010035

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    const-string v1, "AnimationUtils.loadLayou\u2026 R.anim.layout_animation)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lo/allocateRequestIndex;->ICustomTabsCallback()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 111
    iget-object p1, p0, Lo/allocateRequestIndex;->onRelationshipValidationResult:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_3

    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_3
    const-string v0, "$this$linkFabWithScroll"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3053
    new-instance p2, Lo/onItemRangeMoved;

    invoke-direct {p2, p0, p1}, Lo/onItemRangeMoved;-><init>(Landroidx/fragment/app/Fragment;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4000
    iget-object p1, p0, Lo/allocateRequestIndex;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/requestPermissionsFromFragment;

    .line 5000
    iget-object p2, p0, Lo/allocateRequestIndex;->extraCallback:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/requestPermissionsFromFragment;

    .line 5043
    invoke-virtual {p2}, Lo/requestPermissionsFromFragment;->extraCallback()V

    .line 5044
    iget-boolean v0, p2, Lo/requestPermissionsFromFragment;->onMessageChannelReady:Z

    if-nez v0, :cond_4

    .line 5045
    invoke-static {p2}, Lo/requestPermissionsFromFragment;->onMessageChannelReady(Lo/requestPermissionsFromFragment;)V

    .line 6029
    :cond_4
    iget-object p1, p1, Lo/requestPermissionsFromFragment;->ICustomTabsCallback:Landroidx/lifecycle/LiveData;

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object p2

    const-string/jumbo v0, "viewLifecycleOwner"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    new-instance v0, Lo/allocateRequestIndex$onTransact;

    invoke-direct {v0, p0}, Lo/allocateRequestIndex$onTransact;-><init>(Lo/allocateRequestIndex;)V

    check-cast v0, Lo/setPlaybackToRemote;

    .line 339
    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    return-void

    .line 90
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
