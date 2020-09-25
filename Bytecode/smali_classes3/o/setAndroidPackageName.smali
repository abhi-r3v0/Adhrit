.class public final Lo/setAndroidPackageName;
.super Lo/parseLink;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lo/parseLink<",
        "TS;>;"
    }
.end annotation


# instance fields
.field private extraCallback:Lo/getMultiFactorInfo;

.field private onMessageChannelReady:Lo/AnalyticsConnectorRegistrar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AnalyticsConnectorRegistrar<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lo/parseLink;-><init>()V

    return-void
.end method

.method static onPostMessage(Lo/AnalyticsConnectorRegistrar;Lo/getMultiFactorInfo;)Lo/setAndroidPackageName;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/AnalyticsConnectorRegistrar<",
            "TT;>;",
            "Lo/getMultiFactorInfo;",
            ")",
            "Lo/setAndroidPackageName<",
            "TT;>;"
        }
    .end annotation

    .line 44
    new-instance v0, Lo/setAndroidPackageName;

    invoke-direct {v0}, Lo/setAndroidPackageName;-><init>()V

    .line 45
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DATE_SELECTOR_KEY"

    .line 46
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "CALENDAR_CONSTRAINTS_KEY"

    .line 47
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 48
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lo/parseLink;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    const-string v0, "DATE_SELECTOR_KEY"

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lo/AnalyticsConnectorRegistrar;

    iput-object v0, p0, Lo/setAndroidPackageName;->onMessageChannelReady:Lo/AnalyticsConnectorRegistrar;

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/getMultiFactorInfo;

    iput-object p1, p0, Lo/setAndroidPackageName;->extraCallback:Lo/getMultiFactorInfo;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 73
    iget-object p1, p0, Lo/setAndroidPackageName;->onMessageChannelReady:Lo/AnalyticsConnectorRegistrar;

    new-instance p2, Lo/setAndroidPackageName$4;

    invoke-direct {p2, p0}, Lo/setAndroidPackageName$4;-><init>(Lo/setAndroidPackageName;)V

    invoke-interface {p1}, Lo/AnalyticsConnectorRegistrar;->asInterface()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 54
    invoke-super {p0, p1}, Lo/parseLink;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 55
    iget-object v0, p0, Lo/setAndroidPackageName;->onMessageChannelReady:Lo/AnalyticsConnectorRegistrar;

    const-string v1, "DATE_SELECTOR_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 56
    iget-object v0, p0, Lo/setAndroidPackageName;->extraCallback:Lo/getMultiFactorInfo;

    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
