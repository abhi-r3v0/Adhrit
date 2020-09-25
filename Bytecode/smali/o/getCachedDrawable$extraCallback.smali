.class final Lo/getCachedDrawable$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCachedDrawable;
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
        "Lo/addWrite<",
        "+",
        "Ljava/lang/Boolean;",
        "+",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\t\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012&\u0010\u0002\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005 \u0006*\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lkotlin/Pair;",
        "",
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
.field private synthetic onNavigationEvent:Lo/getCachedDrawable;


# direct methods
.method constructor <init>(Lo/getCachedDrawable;)V
    .locals 0

    iput-object p1, p0, Lo/getCachedDrawable$extraCallback;->onNavigationEvent:Lo/getCachedDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 7

    .line 37
    check-cast p1, Lo/addWrite;

    if-eqz p1, :cond_2

    .line 2027
    iget-object v0, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1094
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1095
    iget-object v0, p0, Lo/getCachedDrawable$extraCallback;->onNavigationEvent:Lo/getCachedDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/onAudioInfoChanged;->extraCallback(Z)V

    .line 1096
    new-instance v0, Lo/setAppSearchData$onMessageChannelReady;

    .line 2028
    iget-object v1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1096
    check-cast v1, Ljava/lang/Long;

    .line 1097
    sget-object v2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v2, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->payment_processing:I

    invoke-static {v2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v2

    .line 3028
    iget-object p1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1098
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_0

    sget-object p1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget p1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->process_taking_more_than_usual:I

    invoke-static {p1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1096
    :goto_0
    invoke-direct {v0, v1, v2, p1}, Lo/setAppSearchData$onMessageChannelReady;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    iget-object p1, p0, Lo/getCachedDrawable$extraCallback;->onNavigationEvent:Lo/getCachedDrawable;

    invoke-static {p1}, Lo/getCachedDrawable;->ICustomTabsCallback(Lo/getCachedDrawable;)Lo/setAppSearchData;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/setAppSearchData;->onMessageChannelReady(Lo/setAppSearchData$onMessageChannelReady;)V

    return-void

    .line 1101
    :cond_1
    iget-object p1, p0, Lo/getCachedDrawable$extraCallback;->onNavigationEvent:Lo/getCachedDrawable;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/onAudioInfoChanged;->extraCallback(Z)V

    .line 1102
    iget-object p1, p0, Lo/getCachedDrawable$extraCallback;->onNavigationEvent:Lo/getCachedDrawable;

    invoke-static {p1}, Lo/getCachedDrawable;->ICustomTabsCallback(Lo/getCachedDrawable;)Lo/setAppSearchData;

    move-result-object p1

    .line 3056
    iget-object p1, p1, Lo/setAppSearchData;->ICustomTabsCallback:Landroid/view/View;

    const-string v0, "loaderView"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$gone"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 4017
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
