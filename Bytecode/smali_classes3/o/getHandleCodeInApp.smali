.class final Lo/getHandleCodeInApp;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getHandleCodeInApp$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lo/getHandleCodeInApp$onPostMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:I

.field final extraCallback:Lo/getAndroidMinimumVersion$ICustomTabsCallback;

.field private final onNavigationEvent:Lo/AnalyticsConnectorRegistrar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AnalyticsConnectorRegistrar<",
            "*>;"
        }
    .end annotation
.end field

.field final onPostMessage:Lo/getMultiFactorInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/AnalyticsConnectorRegistrar;Lo/getMultiFactorInfo;Lo/getAndroidMinimumVersion$ICustomTabsCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/AnalyticsConnectorRegistrar<",
            "*>;",
            "Lo/getMultiFactorInfo;",
            "Lo/getAndroidMinimumVersion$ICustomTabsCallback;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 1083
    iget-object v0, p3, Lo/getMultiFactorInfo;->onMessageChannelReady:Lo/setUrl;

    .line 1089
    iget-object v1, p3, Lo/getMultiFactorInfo;->extraCallback:Lo/setUrl;

    .line 1095
    iget-object v2, p3, Lo/getMultiFactorInfo;->onNavigationEvent:Lo/setUrl;

    .line 1132
    iget-object v0, v0, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    iget-object v3, v2, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 2132
    iget-object v0, v2, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    iget-object v1, v1, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 61
    sget v0, Lo/setIOSBundleId;->onMessageChannelReady:I

    .line 2334
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lo/toStringMap$onMessageChannelReady;->mtrl_calendar_day_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int v0, v0, v1

    .line 63
    invoke-static {p1}, Lo/getIOSBundleId;->ICustomTabsCallback(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3334
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lo/toStringMap$onMessageChannelReady;->mtrl_calendar_day_height:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    add-int/2addr v0, p1

    .line 65
    iput v0, p0, Lo/getHandleCodeInApp;->ICustomTabsCallback:I

    .line 66
    iput-object p3, p0, Lo/getHandleCodeInApp;->onPostMessage:Lo/getMultiFactorInfo;

    .line 67
    iput-object p2, p0, Lo/getHandleCodeInApp;->onNavigationEvent:Lo/AnalyticsConnectorRegistrar;

    .line 68
    iput-object p4, p0, Lo/getHandleCodeInApp;->extraCallback:Lo/getAndroidMinimumVersion$ICustomTabsCallback;

    const/4 p1, 0x1

    .line 69
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "currentPage cannot be after lastPage"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "firstPage cannot be after currentPage"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 136
    iget-object v0, p0, Lo/getHandleCodeInApp;->onPostMessage:Lo/getMultiFactorInfo;

    .line 5103
    iget v0, v0, Lo/getMultiFactorInfo;->asInterface:I

    return v0
.end method

.method public final getItemId(I)J
    .locals 2

    .line 131
    iget-object v0, p0, Lo/getHandleCodeInApp;->onPostMessage:Lo/getMultiFactorInfo;

    .line 4083
    iget-object v0, v0, Lo/getMultiFactorInfo;->onMessageChannelReady:Lo/setUrl;

    .line 131
    invoke-virtual {v0, p1}, Lo/setUrl;->onPostMessage(I)Lo/setUrl;

    move-result-object p1

    .line 4153
    iget-object p1, p1, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 38
    check-cast p1, Lo/getHandleCodeInApp$onPostMessage;

    .line 5106
    iget-object v0, p0, Lo/getHandleCodeInApp;->onPostMessage:Lo/getMultiFactorInfo;

    .line 6083
    iget-object v0, v0, Lo/getMultiFactorInfo;->onMessageChannelReady:Lo/setUrl;

    .line 5106
    invoke-virtual {v0, p2}, Lo/setUrl;->onPostMessage(I)Lo/setUrl;

    move-result-object p2

    .line 5107
    iget-object v0, p1, Lo/getHandleCodeInApp$onPostMessage;->onNavigationEvent:Landroid/widget/TextView;

    .line 6185
    iget-object v1, p2, Lo/setUrl;->extraCallback:Ljava/lang/String;

    .line 5107
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5108
    iget-object p1, p1, Lo/getHandleCodeInApp$onPostMessage;->extraCallback:Lo/getAndroidPackageName;

    sget v0, Lo/toStringMap$asInterface;->month_grid:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getAndroidPackageName;

    .line 5110
    invoke-virtual {p1}, Lo/getAndroidPackageName;->ICustomTabsCallback()Lo/setIOSBundleId;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/getAndroidPackageName;->ICustomTabsCallback()Lo/setIOSBundleId;

    move-result-object v0

    iget-object v0, v0, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5111
    invoke-virtual {p1}, Lo/getAndroidPackageName;->ICustomTabsCallback()Lo/setIOSBundleId;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 5113
    :cond_0
    new-instance v0, Lo/setIOSBundleId;

    iget-object v1, p0, Lo/getHandleCodeInApp;->onNavigationEvent:Lo/AnalyticsConnectorRegistrar;

    iget-object v2, p0, Lo/getHandleCodeInApp;->onPostMessage:Lo/getMultiFactorInfo;

    invoke-direct {v0, p2, v1, v2}, Lo/setIOSBundleId;-><init>(Lo/setUrl;Lo/AnalyticsConnectorRegistrar;Lo/getMultiFactorInfo;)V

    .line 5114
    iget p2, p2, Lo/setUrl;->onNavigationEvent:I

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 5115
    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5118
    :goto_0
    new-instance p2, Lo/getHandleCodeInApp$2;

    invoke-direct {p2, p0, p1}, Lo/getHandleCodeInApp$2;-><init>(Lo/getHandleCodeInApp;Lo/getAndroidPackageName;)V

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 7093
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lo/toStringMap$asBinder;->mtrl_calendar_month_labeled:I

    const/4 v1, 0x0

    .line 7094
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 7096
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/getIOSBundleId;->ICustomTabsCallback(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7097
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    iget v1, p0, Lo/getHandleCodeInApp;->ICustomTabsCallback:I

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7098
    new-instance p1, Lo/getHandleCodeInApp$onPostMessage;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lo/getHandleCodeInApp$onPostMessage;-><init>(Landroid/widget/LinearLayout;Z)V

    return-object p1

    .line 7100
    :cond_0
    new-instance p1, Lo/getHandleCodeInApp$onPostMessage;

    invoke-direct {p1, p2, v1}, Lo/getHandleCodeInApp$onPostMessage;-><init>(Landroid/widget/LinearLayout;Z)V

    return-object p1
.end method
