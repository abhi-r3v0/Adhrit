.class public final Lo/animateAdd$ICustomTabsCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isItemPrefetchEnabled;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/animateAdd;
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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006\u00b8\u0006\u0007"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/digest/DigestFragment$performCtaClick$2$1$1",
        "Lcom/dreamplug/fabrik/ui/nba/OnFlowCompletionListener;",
        "onComplete",
        "",
        "type",
        "",
        "app_release",
        "com/dreamplug/fabrik/ui/digest/DigestFragment$$special$$inlined$executeOnResume$lambda$1"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/animateAdd;


# direct methods
.method constructor <init>(Lo/animateAdd;)V
    .locals 0

    iput-object p1, p0, Lo/animateAdd$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/animateAdd;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x45b52115

    if-eq v0, v1, :cond_2

    const v1, 0x7e1b8863

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "digest_show_more_like_this"

    .line 213
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 214
    iget-object p1, p0, Lo/animateAdd$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/animateAdd;

    invoke-static {p1}, Lo/animateAdd;->onPostMessage(Lo/animateAdd;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "digest_show_me_more"

    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 215
    iget-object p1, p0, Lo/animateAdd$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/animateAdd;

    invoke-static {p1}, Lo/animateAdd;->onTransact(Lo/animateAdd;)Lo/onActivityResult;

    move-result-object p1

    iget-object v0, p0, Lo/animateAdd$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/animateAdd;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    const-string v1, "context!!"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f13015c

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "context"

    .line 1027
    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "text"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1028
    sget v3, Lo/preferLastSpan$ICustomTabsCallback$Stub;->success_toast_layout:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lo/onActivityResult;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;ZI)V

    return-void

    :cond_2
    const-string v0, "digest_save_to_gallery"

    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 211
    iget-object p1, p0, Lo/animateAdd$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/animateAdd;

    invoke-static {p1}, Lo/animateAdd;->onMessageChannelReady(Lo/animateAdd;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "digest"

    const-string/jumbo v0, "unsupported flow"

    .line 218
    invoke-static {p1, v0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
