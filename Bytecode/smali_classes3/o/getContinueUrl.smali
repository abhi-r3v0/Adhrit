.class final Lo/getContinueUrl;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getContinueUrl$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lo/getContinueUrl$onMessageChannelReady;",
        ">;"
    }
.end annotation


# instance fields
.field final extraCallback:Lo/getAndroidMinimumVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getAndroidMinimumVersion<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/getAndroidMinimumVersion;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getAndroidMinimumVersion<",
            "*>;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 46
    iput-object p1, p0, Lo/getContinueUrl;->extraCallback:Lo/getAndroidMinimumVersion;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 96
    iget-object v0, p0, Lo/getContinueUrl;->extraCallback:Lo/getAndroidMinimumVersion;

    .line 1289
    iget-object v0, v0, Lo/getAndroidMinimumVersion;->extraCallback:Lo/getMultiFactorInfo;

    .line 2111
    iget v0, v0, Lo/getMultiFactorInfo;->ICustomTabsCallback:I

    return v0
.end method

.method public final synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 31
    check-cast p1, Lo/getContinueUrl$onMessageChannelReady;

    .line 3104
    iget-object v0, p0, Lo/getContinueUrl;->extraCallback:Lo/getAndroidMinimumVersion;

    .line 3289
    iget-object v0, v0, Lo/getAndroidMinimumVersion;->extraCallback:Lo/getMultiFactorInfo;

    .line 4083
    iget-object v0, v0, Lo/getMultiFactorInfo;->onMessageChannelReady:Lo/setUrl;

    .line 3104
    iget v0, v0, Lo/setUrl;->onPostMessage:I

    add-int/2addr v0, p2

    .line 3062
    iget-object p2, p1, Lo/getContinueUrl$onMessageChannelReady;->ICustomTabsCallback:Landroid/widget/TextView;

    .line 3065
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v1, Lo/toStringMap$onTransact;->mtrl_picker_navigate_to_year_description:I

    .line 3066
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 3067
    iget-object v1, p1, Lo/getContinueUrl$onMessageChannelReady;->ICustomTabsCallback:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "%d"

    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3068
    iget-object v1, p1, Lo/getContinueUrl$onMessageChannelReady;->ICustomTabsCallback:Landroid/widget/TextView;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3069
    iget-object p2, p0, Lo/getContinueUrl;->extraCallback:Lo/getAndroidMinimumVersion;

    .line 4323
    iget-object p2, p2, Lo/getAndroidMinimumVersion;->onNavigationEvent:Lo/onMessageTriggered;

    .line 5051
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const-string v2, "UTC"

    .line 7042
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 6074
    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    if-nez v1, :cond_0

    .line 6076
    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    goto :goto_0

    .line 6078
    :cond_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 8042
    :goto_0
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 7074
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 7076
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 5095
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v5, 0x2

    .line 5096
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    .line 5097
    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 5094
    invoke-virtual {v1, v2, v5, v4}, Ljava/util/Calendar;->set(III)V

    .line 3071
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v0, :cond_1

    iget-object v2, p2, Lo/onMessageTriggered;->ICustomTabsCallback$Stub:Lo/getPreviousEmail;

    goto :goto_1

    :cond_1
    iget-object v2, p2, Lo/onMessageTriggered;->extraCallback:Lo/getPreviousEmail;

    .line 3072
    :goto_1
    iget-object v4, p0, Lo/getContinueUrl;->extraCallback:Lo/getAndroidMinimumVersion;

    .line 8319
    iget-object v4, v4, Lo/getAndroidMinimumVersion;->ICustomTabsCallback:Lo/AnalyticsConnectorRegistrar;

    .line 3072
    invoke-interface {v4}, Lo/AnalyticsConnectorRegistrar;->ICustomTabsCallback()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 3073
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3074
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, v0, :cond_2

    .line 3075
    iget-object v2, p2, Lo/onMessageTriggered;->ICustomTabsCallback:Lo/getPreviousEmail;

    goto :goto_2

    .line 3078
    :cond_3
    iget-object p2, p1, Lo/getContinueUrl$onMessageChannelReady;->ICustomTabsCallback:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Lo/getPreviousEmail;->ICustomTabsCallback(Landroid/widget/TextView;)V

    .line 3079
    iget-object p1, p1, Lo/getContinueUrl$onMessageChannelReady;->ICustomTabsCallback:Landroid/widget/TextView;

    .line 9084
    new-instance p2, Lo/getContinueUrl$1;

    invoke-direct {p2, p0, v0}, Lo/getContinueUrl$1;-><init>(Lo/getContinueUrl;I)V

    .line 3079
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 10054
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lo/toStringMap$asBinder;->mtrl_calendar_year:I

    const/4 v1, 0x0

    .line 10055
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 10056
    new-instance p2, Lo/getContinueUrl$onMessageChannelReady;

    invoke-direct {p2, p1}, Lo/getContinueUrl$onMessageChannelReady;-><init>(Landroid/widget/TextView;)V

    return-object p2
.end method
