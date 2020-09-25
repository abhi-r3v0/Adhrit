.class public final Lo/getAndroidMinimumVersion;
.super Lo/parseLink;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getAndroidMinimumVersion$ICustomTabsCallback;,
        Lo/getAndroidMinimumVersion$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lo/parseLink<",
        "TS;>;"
    }
.end annotation


# static fields
.field private static ICustomTabsCallback$Stub$Proxy:Ljava/lang/Object;

.field private static ICustomTabsService:Ljava/lang/Object;

.field private static newSession:Ljava/lang/Object;

.field private static onTransact:Ljava/lang/Object;


# instance fields
.field ICustomTabsCallback:Lo/AnalyticsConnectorRegistrar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AnalyticsConnectorRegistrar<",
            "TS;>;"
        }
    .end annotation
.end field

.field asBinder:Landroidx/recyclerview/widget/RecyclerView;

.field asInterface:Landroidx/recyclerview/widget/RecyclerView;

.field extraCallback:Lo/getMultiFactorInfo;

.field private getInterfaceDescriptor:Landroid/view/View;

.field onMessageChannelReady:Lo/getAndroidMinimumVersion$onPostMessage;

.field onNavigationEvent:Lo/onMessageTriggered;

.field onPostMessage:Lo/setUrl;

.field onRelationshipValidationResult:Landroid/view/View;

.field private warmup:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MONTHS_VIEW_GROUP_TAG"

    .line 73
    sput-object v0, Lo/getAndroidMinimumVersion;->onTransact:Ljava/lang/Object;

    const-string v0, "NAVIGATION_PREV_TAG"

    .line 75
    sput-object v0, Lo/getAndroidMinimumVersion;->newSession:Ljava/lang/Object;

    const-string v0, "NAVIGATION_NEXT_TAG"

    .line 77
    sput-object v0, Lo/getAndroidMinimumVersion;->ICustomTabsService:Ljava/lang/Object;

    const-string v0, "SELECTOR_TOGGLE_TAG"

    .line 79
    sput-object v0, Lo/getAndroidMinimumVersion;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lo/parseLink;-><init>()V

    return-void
.end method

.method static extraCallback(Lo/AnalyticsConnectorRegistrar;ILo/getMultiFactorInfo;)Lo/getAndroidMinimumVersion;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/AnalyticsConnectorRegistrar<",
            "TT;>;I",
            "Lo/getMultiFactorInfo;",
            ")",
            "Lo/getAndroidMinimumVersion<",
            "TT;>;"
        }
    .end annotation

    .line 97
    new-instance v0, Lo/getAndroidMinimumVersion;

    invoke-direct {v0}, Lo/getAndroidMinimumVersion;-><init>()V

    .line 98
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "THEME_RES_ID_KEY"

    .line 99
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "GRID_SELECTOR_KEY"

    .line 100
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "CALENDAR_CONSTRAINTS_KEY"

    .line 101
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1095
    iget-object p0, p2, Lo/getMultiFactorInfo;->onNavigationEvent:Lo/setUrl;

    const-string p1, "CURRENT_MONTH_KEY"

    .line 102
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 103
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method final extraCallback(Lo/getAndroidMinimumVersion$onPostMessage;)V
    .locals 4

    .line 338
    iput-object p1, p0, Lo/getAndroidMinimumVersion;->onMessageChannelReady:Lo/getAndroidMinimumVersion$onPostMessage;

    .line 339
    sget-object v0, Lo/getAndroidMinimumVersion$onPostMessage;->ICustomTabsCallback:Lo/getAndroidMinimumVersion$onPostMessage;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 340
    iget-object p1, p0, Lo/getAndroidMinimumVersion;->asInterface:Landroidx/recyclerview/widget/RecyclerView;

    .line 341
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget-object v0, p0, Lo/getAndroidMinimumVersion;->asInterface:Landroidx/recyclerview/widget/RecyclerView;

    .line 343
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lo/getContinueUrl;

    iget-object v3, p0, Lo/getAndroidMinimumVersion;->onPostMessage:Lo/setUrl;

    iget v3, v3, Lo/setUrl;->onPostMessage:I

    .line 10100
    iget-object v0, v0, Lo/getContinueUrl;->extraCallback:Lo/getAndroidMinimumVersion;

    .line 10289
    iget-object v0, v0, Lo/getAndroidMinimumVersion;->extraCallback:Lo/getMultiFactorInfo;

    .line 11083
    iget-object v0, v0, Lo/getMultiFactorInfo;->onMessageChannelReady:Lo/setUrl;

    .line 10100
    iget v0, v0, Lo/setUrl;->onPostMessage:I

    sub-int/2addr v3, v0

    .line 342
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 344
    iget-object p1, p0, Lo/getAndroidMinimumVersion;->getInterfaceDescriptor:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object p1, p0, Lo/getAndroidMinimumVersion;->onRelationshipValidationResult:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 346
    :cond_0
    sget-object v0, Lo/getAndroidMinimumVersion$onPostMessage;->onPostMessage:Lo/getAndroidMinimumVersion$onPostMessage;

    if-ne p1, v0, :cond_1

    .line 347
    iget-object p1, p0, Lo/getAndroidMinimumVersion;->getInterfaceDescriptor:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object p1, p0, Lo/getAndroidMinimumVersion;->onRelationshipValidationResult:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 351
    iget-object p1, p0, Lo/getAndroidMinimumVersion;->onPostMessage:Lo/setUrl;

    invoke-virtual {p0, p1}, Lo/getAndroidMinimumVersion;->extraCallback(Lo/setUrl;)V

    :cond_1
    return-void
.end method

.method final extraCallback(Lo/setUrl;)V
    .locals 6

    .line 299
    iget-object v0, p0, Lo/getAndroidMinimumVersion;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lo/getHandleCodeInApp;

    .line 5150
    iget-object v1, v0, Lo/getHandleCodeInApp;->onPostMessage:Lo/getMultiFactorInfo;

    .line 6083
    iget-object v1, v1, Lo/getMultiFactorInfo;->onMessageChannelReady:Lo/setUrl;

    .line 5150
    invoke-virtual {v1, p1}, Lo/setUrl;->ICustomTabsCallback(Lo/setUrl;)I

    move-result v1

    .line 301
    iget-object v2, p0, Lo/getAndroidMinimumVersion;->onPostMessage:Lo/setUrl;

    .line 6150
    iget-object v0, v0, Lo/getHandleCodeInApp;->onPostMessage:Lo/getMultiFactorInfo;

    .line 7083
    iget-object v0, v0, Lo/getMultiFactorInfo;->onMessageChannelReady:Lo/setUrl;

    .line 6150
    invoke-virtual {v0, v2}, Lo/setUrl;->ICustomTabsCallback(Lo/setUrl;)I

    move-result v0

    sub-int v0, v1, v0

    .line 302
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-le v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 304
    :goto_1
    iput-object p1, p0, Lo/getAndroidMinimumVersion;->onPostMessage:Lo/setUrl;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 306
    iget-object p1, p0, Lo/getAndroidMinimumVersion;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, -0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 7449
    iget-object p1, p0, Lo/getAndroidMinimumVersion;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lo/getAndroidMinimumVersion$2;

    invoke-direct {v0, p0, v1}, Lo/getAndroidMinimumVersion$2;-><init>(Lo/getAndroidMinimumVersion;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    if-eqz v2, :cond_3

    .line 309
    iget-object p1, p0, Lo/getAndroidMinimumVersion;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, 0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 8449
    iget-object p1, p0, Lo/getAndroidMinimumVersion;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lo/getAndroidMinimumVersion$2;

    invoke-direct {v0, p0, v1}, Lo/getAndroidMinimumVersion$2;-><init>(Lo/getAndroidMinimumVersion;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 9449
    :cond_3
    iget-object p1, p0, Lo/getAndroidMinimumVersion;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lo/getAndroidMinimumVersion$2;

    invoke-direct {v0, p0, v1}, Lo/getAndroidMinimumVersion$2;-><init>(Lo/getAndroidMinimumVersion;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 118
    invoke-super {p0, p1}, Lo/parseLink;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    .line 120
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lo/getAndroidMinimumVersion;->warmup:I

    const-string v0, "GRID_SELECTOR_KEY"

    .line 121
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lo/AnalyticsConnectorRegistrar;

    iput-object v0, p0, Lo/getAndroidMinimumVersion;->ICustomTabsCallback:Lo/AnalyticsConnectorRegistrar;

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lo/getMultiFactorInfo;

    iput-object v0, p0, Lo/getAndroidMinimumVersion;->extraCallback:Lo/getMultiFactorInfo;

    const-string v0, "CURRENT_MONTH_KEY"

    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/setUrl;

    iput-object p1, p0, Lo/getAndroidMinimumVersion;->onPostMessage:Lo/setUrl;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 132
    new-instance p3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lo/getAndroidMinimumVersion;->warmup:I

    invoke-direct {p3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 133
    new-instance v0, Lo/onMessageTriggered;

    invoke-direct {v0, p3}, Lo/onMessageTriggered;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/getAndroidMinimumVersion;->onNavigationEvent:Lo/onMessageTriggered;

    .line 134
    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 136
    iget-object v0, p0, Lo/getAndroidMinimumVersion;->extraCallback:Lo/getMultiFactorInfo;

    .line 2083
    iget-object v0, v0, Lo/getMultiFactorInfo;->onMessageChannelReady:Lo/setUrl;

    .line 140
    invoke-static {p3}, Lo/getIOSBundleId;->ICustomTabsCallback(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 141
    sget v1, Lo/toStringMap$asBinder;->mtrl_calendar_vertical:I

    const/4 v4, 0x1

    goto :goto_0

    .line 144
    :cond_0
    sget v1, Lo/toStringMap$asBinder;->mtrl_calendar_horizontal:I

    const/4 v4, 0x0

    .line 148
    :goto_0
    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 149
    sget p2, Lo/toStringMap$asInterface;->mtrl_calendar_days_of_week:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    .line 150
    new-instance v1, Lo/getAndroidMinimumVersion$5;

    invoke-direct {v1}, Lo/getAndroidMinimumVersion$5;-><init>()V

    invoke-static {p2, v1}, Lo/unregisterCallbackListener;->onMessageChannelReady(Landroid/view/View;Lo/onSessionDestroyed;)V

    .line 161
    new-instance v1, Lo/canHandleCodeInApp;

    invoke-direct {v1}, Lo/canHandleCodeInApp;-><init>()V

    invoke-virtual {p2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    iget v0, v0, Lo/setUrl;->onNavigationEvent:I

    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 163
    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 165
    sget p2, Lo/toStringMap$asInterface;->mtrl_calendar_months:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lo/getAndroidMinimumVersion;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    .line 167
    new-instance p2, Lo/getAndroidMinimumVersion$1;

    .line 168
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p0, v0, v4, v4}, Lo/getAndroidMinimumVersion$1;-><init>(Lo/getAndroidMinimumVersion;Landroid/content/Context;II)V

    .line 180
    iget-object v0, p0, Lo/getAndroidMinimumVersion;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 181
    iget-object p2, p0, Lo/getAndroidMinimumVersion;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v0, Lo/getAndroidMinimumVersion;->onTransact:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 183
    new-instance p2, Lo/getHandleCodeInApp;

    iget-object v0, p0, Lo/getAndroidMinimumVersion;->ICustomTabsCallback:Lo/AnalyticsConnectorRegistrar;

    iget-object v1, p0, Lo/getAndroidMinimumVersion;->extraCallback:Lo/getMultiFactorInfo;

    new-instance v4, Lo/getAndroidMinimumVersion$3;

    invoke-direct {v4, p0}, Lo/getAndroidMinimumVersion$3;-><init>(Lo/getAndroidMinimumVersion;)V

    invoke-direct {p2, p3, v0, v1, v4}, Lo/getHandleCodeInApp;-><init>(Landroid/content/Context;Lo/AnalyticsConnectorRegistrar;Lo/getMultiFactorInfo;Lo/getAndroidMinimumVersion$ICustomTabsCallback;)V

    .line 205
    iget-object v0, p0, Lo/getAndroidMinimumVersion;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 208
    invoke-virtual {p3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/toStringMap$ICustomTabsCallback$Stub;->mtrl_calendar_year_selector_span:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 209
    sget v1, Lo/toStringMap$asInterface;->mtrl_calendar_year_selector_frame:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lo/getAndroidMinimumVersion;->asInterface:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    .line 211
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 212
    iget-object v1, p0, Lo/getAndroidMinimumVersion;->asInterface:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v4, p3, v0, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 214
    iget-object v0, p0, Lo/getAndroidMinimumVersion;->asInterface:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lo/getContinueUrl;

    invoke-direct {v1, p0}, Lo/getContinueUrl;-><init>(Lo/getAndroidMinimumVersion;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 215
    iget-object v0, p0, Lo/getAndroidMinimumVersion;->asInterface:Landroidx/recyclerview/widget/RecyclerView;

    .line 2231
    new-instance v1, Lo/getAndroidMinimumVersion$4;

    invoke-direct {v1, p0}, Lo/getAndroidMinimumVersion$4;-><init>(Lo/getAndroidMinimumVersion;)V

    .line 215
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 218
    :cond_1
    sget v0, Lo/toStringMap$asInterface;->month_navigation_fragment_toggle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2365
    sget v0, Lo/toStringMap$asInterface;->month_navigation_fragment_toggle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/throwAbtExceptionIfAnalyticsIsNull;

    .line 2366
    sget-object v1, Lo/getAndroidMinimumVersion;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2367
    new-instance v1, Lo/getAndroidMinimumVersion$9;

    invoke-direct {v1, p0}, Lo/getAndroidMinimumVersion$9;-><init>(Lo/getAndroidMinimumVersion;)V

    invoke-static {v0, v1}, Lo/unregisterCallbackListener;->onMessageChannelReady(Landroid/view/View;Lo/onSessionDestroyed;)V

    .line 2382
    sget v1, Lo/toStringMap$asInterface;->month_navigation_previous:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/throwAbtExceptionIfAnalyticsIsNull;

    .line 2383
    sget-object v2, Lo/getAndroidMinimumVersion;->newSession:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2384
    sget v2, Lo/toStringMap$asInterface;->month_navigation_next:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/throwAbtExceptionIfAnalyticsIsNull;

    .line 2385
    sget-object v3, Lo/getAndroidMinimumVersion;->ICustomTabsService:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2387
    sget v3, Lo/toStringMap$asInterface;->mtrl_calendar_year_selector_frame:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lo/getAndroidMinimumVersion;->getInterfaceDescriptor:Landroid/view/View;

    .line 2388
    sget v3, Lo/toStringMap$asInterface;->mtrl_calendar_day_selector_frame:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lo/getAndroidMinimumVersion;->onRelationshipValidationResult:Landroid/view/View;

    .line 2389
    sget-object v3, Lo/getAndroidMinimumVersion$onPostMessage;->onPostMessage:Lo/getAndroidMinimumVersion$onPostMessage;

    invoke-virtual {p0, v3}, Lo/getAndroidMinimumVersion;->extraCallback(Lo/getAndroidMinimumVersion$onPostMessage;)V

    .line 2390
    iget-object v3, p0, Lo/getAndroidMinimumVersion;->onPostMessage:Lo/setUrl;

    .line 3185
    iget-object v3, v3, Lo/setUrl;->extraCallback:Ljava/lang/String;

    .line 2390
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2391
    iget-object v3, p0, Lo/getAndroidMinimumVersion;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lo/getAndroidMinimumVersion$6;

    invoke-direct {v4, p0, p2, v0}, Lo/getAndroidMinimumVersion$6;-><init>(Lo/getAndroidMinimumVersion;Lo/getHandleCodeInApp;Lo/throwAbtExceptionIfAnalyticsIsNull;)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 2418
    new-instance v3, Lo/getAndroidMinimumVersion$10;

    invoke-direct {v3, p0}, Lo/getAndroidMinimumVersion$10;-><init>(Lo/getAndroidMinimumVersion;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2426
    new-instance v0, Lo/getAndroidMinimumVersion$8;

    invoke-direct {v0, p0, p2}, Lo/getAndroidMinimumVersion$8;-><init>(Lo/getAndroidMinimumVersion;Lo/getHandleCodeInApp;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2436
    new-instance v0, Lo/getAndroidMinimumVersion$7;

    invoke-direct {v0, p0, p2}, Lo/getAndroidMinimumVersion$7;-><init>(Lo/getAndroidMinimumVersion;Lo/getHandleCodeInApp;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    :cond_2
    invoke-static {p3}, Lo/getIOSBundleId;->ICustomTabsCallback(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 223
    new-instance p3, Landroidx/recyclerview/widget/LinearSnapHelper;

    invoke-direct {p3}, Landroidx/recyclerview/widget/LinearSnapHelper;-><init>()V

    iget-object v0, p0, Lo/getAndroidMinimumVersion;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 225
    :cond_3
    iget-object p3, p0, Lo/getAndroidMinimumVersion;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lo/getAndroidMinimumVersion;->onPostMessage:Lo/setUrl;

    .line 4150
    iget-object p2, p2, Lo/getHandleCodeInApp;->onPostMessage:Lo/getMultiFactorInfo;

    .line 5083
    iget-object p2, p2, Lo/getMultiFactorInfo;->onMessageChannelReady:Lo/setUrl;

    .line 4150
    invoke-virtual {p2, v0}, Lo/setUrl;->ICustomTabsCallback(Lo/setUrl;)I

    move-result p2

    .line 225
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-object p1
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 109
    invoke-super {p0, p1}, Lo/parseLink;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 110
    iget v0, p0, Lo/getAndroidMinimumVersion;->warmup:I

    const-string v1, "THEME_RES_ID_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    iget-object v0, p0, Lo/getAndroidMinimumVersion;->ICustomTabsCallback:Lo/AnalyticsConnectorRegistrar;

    const-string v1, "GRID_SELECTOR_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 112
    iget-object v0, p0, Lo/getAndroidMinimumVersion;->extraCallback:Lo/getMultiFactorInfo;

    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 113
    iget-object v0, p0, Lo/getAndroidMinimumVersion;->onPostMessage:Lo/setUrl;

    const-string v1, "CURRENT_MONTH_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
