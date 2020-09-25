.class final Lo/getRecycledViewCount$getInterfaceDescriptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getRecycledViewCount;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Ljava/lang/String;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getRecycledViewCount;


# direct methods
.method constructor <init>(Lo/getRecycledViewCount;)V
    .locals 0

    iput-object p1, p0, Lo/getRecycledViewCount$getInterfaceDescriptor;->onNavigationEvent:Lo/getRecycledViewCount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 42
    check-cast p1, Ljava/lang/String;

    .line 1181
    iget-object v0, p0, Lo/getRecycledViewCount$getInterfaceDescriptor;->onNavigationEvent:Lo/getRecycledViewCount;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->otpText:I

    invoke-virtual {v0, v1}, Lo/getRecycledViewCount;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1182
    iget-object v0, p0, Lo/getRecycledViewCount$getInterfaceDescriptor;->onNavigationEvent:Lo/getRecycledViewCount;

    .line 2000
    iget-object v0, v0, Lo/getRecycledViewCount;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/attach;

    const-string v1, "it"

    .line 1182
    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "otp"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2046
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2047
    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2048
    iget-object p1, v0, Lo/attach;->onNavigationEvent:Lcom/dreamplug/androidapp/login/model/OtpGenerateResponse;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/login/model/OtpGenerateResponse;->getOtpId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v1, "otp_id"

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3000
    iget-object p1, v0, Lo/attach;->ICustomTabsCallback$Stub:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/detach;

    .line 2050
    invoke-interface {p1, v2}, Lo/detach;->onPostMessage(Ljava/util/Map;)Lo/clearScrap;

    move-result-object p1

    .line 2051
    new-instance v1, Lo/attach$ICustomTabsCallback;

    invoke-direct {v1, v0}, Lo/attach$ICustomTabsCallback;-><init>(Lo/attach;)V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {p1, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 1183
    iget-object p1, p0, Lo/getRecycledViewCount$getInterfaceDescriptor;->onNavigationEvent:Lo/getRecycledViewCount;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->ctaButton:I

    invoke-virtual {p1, v0}, Lo/getRecycledViewCount;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/recycleFromEnd;

    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->extraCallback:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    return-void
.end method
