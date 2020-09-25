.class final Lo/setLayoutResource$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setLayoutResource;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/setLayoutResource;


# direct methods
.method constructor <init>(Lo/setLayoutResource;)V
    .locals 0

    iput-object p1, p0, Lo/setLayoutResource$extraCallback;->ICustomTabsCallback:Lo/setLayoutResource;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 49
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1262
    iget-object p1, p0, Lo/setLayoutResource$extraCallback;->ICustomTabsCallback:Lo/setLayoutResource;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    .line 1263
    iget-object p1, p0, Lo/setLayoutResource$extraCallback;->ICustomTabsCallback:Lo/setLayoutResource;

    invoke-static {p1}, Lo/setLayoutResource;->extraCallback(Lo/setLayoutResource;)Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;

    move-result-object p1

    .line 2021
    iget-object p1, p1, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->onPostMessage:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1263
    check-cast p1, Ljava/lang/Iterable;

    .line 1428
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/dreamplug/androidapp/ui/rating/RatingTags;

    .line 2035
    iget-object v2, v2, Lcom/dreamplug/androidapp/ui/rating/RatingTags;->onNavigationEvent:Ljava/lang/Integer;

    .line 1263
    iget-object v3, p0, Lo/setLayoutResource$extraCallback;->ICustomTabsCallback:Lo/setLayoutResource;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->ratingBar:I

    invoke-virtual {v3, v4}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatRatingBar;

    const-string v4, "ratingBar"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/RatingBar;->getRating()F

    move-result v3

    float-to-int v3, v3

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1429
    :cond_3
    check-cast v0, Lcom/dreamplug/androidapp/ui/rating/RatingTags;

    :cond_4
    if-eqz v0, :cond_5

    .line 2037
    iget-object p1, v0, Lcom/dreamplug/androidapp/ui/rating/RatingTags;->onMessageChannelReady:Ljava/lang/String;

    if-nez p1, :cond_6

    .line 1265
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lo/setLayoutResource$extraCallback;->ICustomTabsCallback:Lo/setLayoutResource;

    const v1, 0x7f1304ef

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "support"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1266
    :cond_6
    sget-object v0, Lo/setSplitTrack;->ICustomTabsService:Lo/setSplitTrack;

    .line 3000
    sget-object v0, Lo/setSplitTrack;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 1266
    new-instance v1, Lo/getThumbTintList;

    invoke-direct {v1, p1}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 49
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
