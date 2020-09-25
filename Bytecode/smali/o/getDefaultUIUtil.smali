.class public final Lo/getDefaultUIUtil;
.super Lo/zzc;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getDefaultUIUtil$onNavigationEvent;,
        Lo/getDefaultUIUtil$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 U2\u00020\u0001:\u0002UVB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010E\u001a\u00020FH\u0016J\u0012\u0010G\u001a\u00020F2\u0008\u0010H\u001a\u0004\u0018\u00010IH\u0016J&\u0010J\u001a\u0004\u0018\u0001012\u0006\u0010K\u001a\u00020L2\u0008\u0010M\u001a\u0004\u0018\u00010N2\u0008\u0010H\u001a\u0004\u0018\u00010IH\u0016J\u001a\u0010O\u001a\u00020F2\u0006\u0010P\u001a\u0002012\u0008\u0010H\u001a\u0004\u0018\u00010IH\u0016J\u0010\u0010Q\u001a\u00020F2\u0006\u0010R\u001a\u00020SH\u0002J\u0008\u0010T\u001a\u00020FH\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017X\u0082.\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0019\u001a\u0004\u0018\u00010\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001b\u0010\u001cR\u001b\u0010\u001f\u001a\u00020 8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010\u001e\u001a\u0004\u0008!\u0010\"R\u001a\u0010$\u001a\u00020\u0011X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0013\"\u0004\u0008&\u0010\u0015R\u001a\u0010\'\u001a\u00020(X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\u001a\u0010-\u001a\u00020\u0011X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u0013\"\u0004\u0008/\u0010\u0015R\u001a\u00100\u001a\u000201X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R\u001a\u00106\u001a\u000207X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\u001c\u0010<\u001a\u0004\u0018\u00010=X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR\u001a\u0010B\u001a\u00020\u0011X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010\u0013\"\u0004\u0008D\u0010\u0015\u00a8\u0006W"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/exitintent/StashExitIntentVariant2;",
        "Lcom/dreamplug/androidapp/ui/widget/FullScreenDialogFragment;",
        "()V",
        "adapter",
        "Lcom/dreamplug/utils/list/VerticalAdapter;",
        "getAdapter",
        "()Lcom/dreamplug/utils/list/VerticalAdapter;",
        "setAdapter",
        "(Lcom/dreamplug/utils/list/VerticalAdapter;)V",
        "bottomSheetBehavior",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "getClickListener",
        "()Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "descriptionText",
        "Landroid/widget/TextView;",
        "getDescriptionText",
        "()Landroid/widget/TextView;",
        "setDescriptionText",
        "(Landroid/widget/TextView;)V",
        "exitVariantList",
        "",
        "Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;",
        "extra",
        "Lcom/dreamplug/fabrik/ui/lending/exitintent/StashExitIntentVariant2$Data;",
        "getExtra",
        "()Lcom/dreamplug/fabrik/ui/lending/exitintent/StashExitIntentVariant2$Data;",
        "extra$delegate",
        "Lkotlin/Lazy;",
        "navigator",
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "getNavigator",
        "()Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "navigator$delegate",
        "noteText",
        "getNoteText",
        "setNoteText",
        "pitchList",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getPitchList",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "setPitchList",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "primaryButton",
        "getPrimaryButton",
        "setPrimaryButton",
        "selectedLayout",
        "Landroid/view/View;",
        "getSelectedLayout",
        "()Landroid/view/View;",
        "setSelectedLayout",
        "(Landroid/view/View;)V",
        "selectedPos",
        "",
        "getSelectedPos",
        "()I",
        "setSelectedPos",
        "(I)V",
        "selectedReason",
        "",
        "getSelectedReason",
        "()Ljava/lang/String;",
        "setSelectedReason",
        "(Ljava/lang/String;)V",
        "titleText",
        "getTitleText",
        "setTitleText",
        "dismiss",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onViewCreated",
        "view",
        "performAction",
        "cta",
        "Lcom/dreamplug/fabrik/ui/lending/model/Cta;",
        "realDismiss",
        "Companion",
        "Data",
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
.field public static final onRelationshipValidationResult:Lo/getDefaultUIUtil$onMessageChannelReady;


# instance fields
.field public ICustomTabsCallback:Landroid/widget/TextView;

.field private ICustomTabsCallback$Stub:Landroid/widget/TextView;

.field private final ICustomTabsCallback$Stub$Proxy:Lo/isSameListener;

.field private final ICustomTabsService:Lo/hasGapsToFix$onMessageChannelReady;

.field private asBinder:Landroidx/recyclerview/widget/RecyclerView;

.field asInterface:Ljava/lang/String;

.field public extraCallback:Landroid/view/View;

.field private getInterfaceDescriptor:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Lo/onChildrenLoaded;",
            ">;"
        }
    .end annotation
.end field

.field private mayLaunchUrl:Ljava/util/HashMap;

.field private final newSession:Lo/isSameListener;

.field public onMessageChannelReady:Landroid/widget/TextView;

.field public onNavigationEvent:Lo/repositionToWrapContentIfNecessary;

.field onPostMessage:I

.field private onTransact:Landroid/widget/TextView;

.field private warmup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/CommonPitchItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/getDefaultUIUtil$onMessageChannelReady;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getDefaultUIUtil$onMessageChannelReady;-><init>(B)V

    sput-object v0, Lo/getDefaultUIUtil;->onRelationshipValidationResult:Lo/getDefaultUIUtil$onMessageChannelReady;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 37
    invoke-direct {p0}, Lo/zzc;-><init>()V

    .line 48
    new-instance v0, Lo/getDefaultUIUtil$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/getDefaultUIUtil$ICustomTabsCallback;-><init>(Lo/getDefaultUIUtil;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 48
    iput-object v2, p0, Lo/getDefaultUIUtil;->newSession:Lo/isSameListener;

    const-string v0, "$this$lazyNavigator"

    .line 54
    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6072
    new-instance v0, Lo/setAddDuration$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/setAddDuration$onMessageChannelReady;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 54
    iput-object v1, p0, Lo/getDefaultUIUtil;->ICustomTabsCallback$Stub$Proxy:Lo/isSameListener;

    .line 123
    new-instance v0, Lo/getDefaultUIUtil$onPostMessage;

    invoke-direct {v0, p0}, Lo/getDefaultUIUtil$onPostMessage;-><init>(Lo/getDefaultUIUtil;)V

    check-cast v0, Lo/hasGapsToFix$onMessageChannelReady;

    iput-object v0, p0, Lo/getDefaultUIUtil;->ICustomTabsService:Lo/hasGapsToFix$onMessageChannelReady;

    return-void
.end method

.method public static final synthetic extraCallback(Lo/getDefaultUIUtil;)Ljava/util/List;
    .locals 1

    .line 37
    iget-object p0, p0, Lo/getDefaultUIUtil;->warmup:Ljava/util/List;

    if-nez p0, :cond_0

    const-string v0, "exitVariantList"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic extraCallback(Lo/getDefaultUIUtil;Lcom/dreamplug/fabrik/ui/lending/model/Cta;)V
    .locals 9

    .line 8150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lo/getSpanGroupIndex;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lo/getSpanGroupIndex;

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const/4 v4, 0x2

    new-array v5, v4, [Lo/addWrite;

    .line 9015
    iget-object v6, p1, Lcom/dreamplug/fabrik/ui/lending/model/Cta;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v6, :cond_1

    .line 10000
    iget-object v6, v6, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v6}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    move-object v6, v2

    .line 10043
    :goto_0
    new-instance v7, Lo/addWrite;

    const-string v8, "cta_title"

    invoke-direct {v7, v8, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v5, v3

    .line 8150
    iget-object v6, p0, Lo/getDefaultUIUtil;->asInterface:Ljava/lang/String;

    .line 11019
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v7, "java.util.Collections.singletonList(element)"

    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11043
    new-instance v7, Lo/addWrite;

    const-string/jumbo v8, "selected_reasons"

    invoke-direct {v7, v8, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v5, v1

    const-string v6, "pairs"

    .line 8150
    invoke-static {v5, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11105
    new-instance v6, Ljava/util/HashMap;

    invoke-static {v4}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v4

    invoke-direct {v6, v4}, Ljava/util/HashMap;-><init>(I)V

    check-cast v6, Ljava/util/Map;

    invoke-static {v6, v5}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v4, "stash_exit_intent_cta_click"

    .line 8150
    invoke-virtual {v0, v4, v6}, Lo/getSpanGroupIndex;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 12019
    :cond_2
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/Cta;->onTransact:Lcom/dreamplug/fabrik/ui/lending/model/Cta$Flow;

    if-eqz p1, :cond_3

    .line 12026
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/Cta$Flow;->onPostMessage:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object p1, v2

    :goto_1
    if-nez p1, :cond_4

    return-void

    .line 8151
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v4, -0x380af4f6

    if-eq v0, v4, :cond_6

    const v4, 0x63a3b28a

    if-eq v0, v4, :cond_5

    goto :goto_2

    :cond_5
    const-string v0, "dismiss"

    .line 8152
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 13000
    iget-object p0, p0, Lo/getDefaultUIUtil;->ICustomTabsCallback$Stub$Proxy:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getMoveDuration;

    const/4 p1, 0x5

    .line 8153
    invoke-static {p0, v2, v1, v3, p1}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    return-void

    :cond_6
    const-string/jumbo v0, "withdraw"

    .line 8155
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 8156
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->m_()V

    :cond_7
    :goto_2
    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/getDefaultUIUtil;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 1

    .line 37
    iget-object p0, p0, Lo/getDefaultUIUtil;->getInterfaceDescriptor:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez p0, :cond_0

    const-string v0, "bottomSheetBehavior"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic onPostMessage(Lo/getDefaultUIUtil;)V
    .locals 0

    .line 7163
    invoke-super {p0}, Lo/zzc;->m_()V

    return-void
.end method


# virtual methods
.method public final m_()V
    .locals 2

    .line 167
    iget-object v0, p0, Lo/getDefaultUIUtil;->getInterfaceDescriptor:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_0

    const-string v1, "bottomSheetBehavior"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 57
    invoke-super {p0, p1}, Lo/zzc;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "StashExitIntentVariant2"

    const/4 v2, 0x0

    .line 1029
    invoke-interface {p1, v1, v0, v2}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e0316

    .line 63
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "view"

    .line 64
    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->primaryButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    const-string/jumbo p3, "view.primaryButton"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/getDefaultUIUtil;->onMessageChannelReady:Landroid/widget/TextView;

    .line 65
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->descriptionText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    const-string/jumbo p3, "view.descriptionText"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/getDefaultUIUtil;->onTransact:Landroid/widget/TextView;

    .line 66
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->note:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    const-string/jumbo p3, "view.note"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/getDefaultUIUtil;->ICustomTabsCallback:Landroid/widget/TextView;

    .line 67
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    const-string/jumbo p3, "view.title"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/getDefaultUIUtil;->ICustomTabsCallback$Stub:Landroid/widget/TextView;

    .line 68
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->selectedLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    const-string/jumbo p3, "view.selectedLayout"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    iput-object p2, p0, Lo/getDefaultUIUtil;->extraCallback:Landroid/view/View;

    .line 69
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->pitchList:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    const-string/jumbo p3, "view.pitchList"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/getDefaultUIUtil;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->sheetView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/onChildrenLoaded;

    .line 71
    sget p3, Lo/getSwitchMinWidth$onPostMessage;->backgroundView:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 72
    move-object v0, p2

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const-string v1, "BottomSheetBehavior.from(sheetView)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/getDefaultUIUtil;->getInterfaceDescriptor:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const-string v1, "bottomSheetBehavior"

    if-nez v0, :cond_0

    .line 73
    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(Z)V

    .line 74
    iget-object v0, p0, Lo/getDefaultUIUtil;->getInterfaceDescriptor:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1838
    :cond_1
    iput-boolean v2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onTransact:Z

    .line 75
    iget-object v0, p0, Lo/getDefaultUIUtil;->getInterfaceDescriptor:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_2

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    const-string v0, "backgroundView"

    .line 76
    invoke-static {p3, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/getDefaultUIUtil$extraCallback;

    invoke-direct {v0, p0}, Lo/getDefaultUIUtil$extraCallback;-><init>(Lo/getDefaultUIUtil;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p3, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 79
    new-instance v0, Lo/getDefaultUIUtil$asInterface;

    invoke-direct {v0, p0, p3}, Lo/getDefaultUIUtil$asInterface;-><init>(Lo/getDefaultUIUtil;Landroid/view/View;)V

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/zzc;->onDestroyView()V

    .line 14000
    iget-object v0, p0, Lo/getDefaultUIUtil;->mayLaunchUrl:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onPostMessage(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/getDefaultUIUtil;->mayLaunchUrl:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/getDefaultUIUtil;->mayLaunchUrl:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/getDefaultUIUtil;->mayLaunchUrl:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/getDefaultUIUtil;->mayLaunchUrl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onTransact()V
    .locals 1

    iget-object v0, p0, Lo/getDefaultUIUtil;->mayLaunchUrl:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-super {p0, p1, p2}, Lo/zzc;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 105
    new-instance p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    invoke-direct {p1}, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;-><init>()V

    .line 106
    new-instance p2, Lo/getSpanCount;

    iget-object v0, p0, Lo/getDefaultUIUtil;->ICustomTabsService:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, v0}, Lo/getSpanCount;-><init>(Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/checkForGaps;

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2036
    check-cast p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v1, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2043
    new-instance p2, Lo/repositionToWrapContentIfNecessary;

    iget-object p1, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p2, p1, v1}, Lo/repositionToWrapContentIfNecessary;-><init>(Ljava/util/List;B)V

    .line 107
    iput-object p2, p0, Lo/getDefaultUIUtil;->onNavigationEvent:Lo/repositionToWrapContentIfNecessary;

    .line 108
    iget-object p1, p0, Lo/getDefaultUIUtil;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_0

    const-string p2, "pitchList"

    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lo/getDefaultUIUtil;->onNavigationEvent:Lo/repositionToWrapContentIfNecessary;

    if-nez p2, :cond_1

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3000
    iget-object p1, p0, Lo/getDefaultUIUtil;->newSession:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getDefaultUIUtil$onNavigationEvent;

    if-eqz p1, :cond_8

    .line 3179
    iget-object p1, p1, Lo/getDefaultUIUtil$onNavigationEvent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;

    if-eqz p1, :cond_8

    .line 110
    iget-object p2, p0, Lo/getDefaultUIUtil;->ICustomTabsCallback$Stub:Landroid/widget/TextView;

    if-nez p2, :cond_2

    const-string/jumbo v1, "titleText"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object p2, p0, Lo/getDefaultUIUtil;->onTransact:Landroid/widget/TextView;

    if-nez p2, :cond_3

    const-string v1, "descriptionText"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 4020
    :cond_3
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;->extraCallback:Lo/getTargetScrollPosition;

    if-eqz v1, :cond_4

    .line 5000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 111
    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object p2, p0, Lo/getDefaultUIUtil;->onMessageChannelReady:Landroid/widget/TextView;

    if-nez p2, :cond_5

    const-string v1, "primaryButton"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_5
    check-cast p2, Landroid/view/View;

    new-instance v1, Lo/getDefaultUIUtil$onRelationshipValidationResult;

    invoke-direct {v1, p0}, Lo/getDefaultUIUtil$onRelationshipValidationResult;-><init>(Lo/getDefaultUIUtil;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {p2, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 5017
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;->onNavigationEvent:Ljava/util/List;

    if-eqz p1, :cond_8

    .line 116
    iput-object p1, p0, Lo/getDefaultUIUtil;->warmup:Ljava/util/List;

    .line 117
    iget-object p1, p0, Lo/getDefaultUIUtil;->onNavigationEvent:Lo/repositionToWrapContentIfNecessary;

    if-nez p1, :cond_6

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_6
    iget-object p2, p0, Lo/getDefaultUIUtil;->warmup:Ljava/util/List;

    if-nez p2, :cond_7

    const-string v0, "exitVariantList"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_7
    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6000
    iget-object p1, p1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/checkSpanForGap;

    .line 5038
    invoke-virtual {p1, p2}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    :cond_8
    return-void
.end method
