.class final Lo/getItemAnimator$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getItemAnimator;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Landroidx/lifecycle/LiveData;)V
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
        "Lo/throwIfInMutationOperation<",
        "+",
        "Lo/isComputingLayout;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/utils/Event;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/details/OptinState;",
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
.field private synthetic onMessageChannelReady:Lo/getItemAnimator;


# direct methods
.method constructor <init>(Lo/getItemAnimator;)V
    .locals 0

    iput-object p1, p0, Lo/getItemAnimator$extraCallback;->onMessageChannelReady:Lo/getItemAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 10

    .line 28
    check-cast p1, Lo/throwIfInMutationOperation;

    .line 2011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2015
    :cond_0
    iput-boolean v1, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 2016
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1201
    :goto_0
    check-cast p1, Lo/isComputingLayout;

    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-object v0, Lo/predictiveItemAnimationsEnabled;->extraCallback:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "participantsNumber"

    const-wide/16 v2, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto/16 :goto_1

    .line 1223
    :cond_2
    iget-object p1, p0, Lo/getItemAnimator$extraCallback;->onMessageChannelReady:Lo/getItemAnimator;

    invoke-static {p1}, Lo/getItemAnimator;->onPostMessage(Lo/getItemAnimator;)Lo/onDestroyView;

    move-result-object p1

    invoke-static {p1}, Lo/prependViewToAllSpans;->onNavigationEvent(Lo/prependViewToAllSpans;)V

    goto/16 :goto_1

    .line 1213
    :cond_3
    iget-object p1, p0, Lo/getItemAnimator$extraCallback;->onMessageChannelReady:Lo/getItemAnimator;

    invoke-static {p1}, Lo/getItemAnimator;->onPostMessage(Lo/getItemAnimator;)Lo/onDestroyView;

    move-result-object p1

    invoke-virtual {p1}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1214
    iget-object p1, p0, Lo/getItemAnimator$extraCallback;->onMessageChannelReady:Lo/getItemAnimator;

    invoke-static {p1}, Lo/getItemAnimator;->onNavigationEvent(Lo/getItemAnimator;)Lo/findFirstVisibleItemClosestToEnd;

    move-result-object p1

    .line 3172
    iget-object p1, p1, Lo/findFirstVisibleItemClosestToEnd;->onNavigationEvent:Lo/getFirstChildPosition;

    .line 1214
    sget-object v1, Lo/getFirstChildPosition;->extraCallback:Lo/getFirstChildPosition;

    if-ne p1, v1, :cond_5

    .line 1215
    iget-object p1, p0, Lo/getItemAnimator$extraCallback;->onMessageChannelReady:Lo/getItemAnimator;

    invoke-static {p1}, Lo/getItemAnimator;->onRelationshipValidationResult(Lo/getItemAnimator;)J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {p1, v4, v5}, Lo/getItemAnimator;->ICustomTabsCallback(Lo/getItemAnimator;J)V

    .line 1216
    iget-object p1, p0, Lo/getItemAnimator$extraCallback;->onMessageChannelReady:Lo/getItemAnimator;

    invoke-static {p1}, Lo/getItemAnimator;->asBinder(Lo/getItemAnimator;)Lo/createFullSpanItemFromEnd;

    move-result-object p1

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/getItemAnimator$extraCallback;->onMessageChannelReady:Lo/getItemAnimator;

    invoke-static {v0}, Lo/getItemAnimator;->onRelationshipValidationResult(Lo/getItemAnimator;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xfe

    invoke-static/range {v1 .. v8}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1217
    iget-object p1, p0, Lo/getItemAnimator$extraCallback;->onMessageChannelReady:Lo/getItemAnimator;

    invoke-static {p1}, Lo/getItemAnimator;->onNavigationEvent(Lo/getItemAnimator;)Lo/findFirstVisibleItemClosestToEnd;

    move-result-object p1

    invoke-virtual {p1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage()V

    .line 1218
    iget-object p1, p0, Lo/getItemAnimator$extraCallback;->onMessageChannelReady:Lo/getItemAnimator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/getItemAnimator;->onNavigationEvent(Lo/getItemAnimator;Z)V

    return-void

    .line 1203
    :cond_4
    iget-object p1, p0, Lo/getItemAnimator$extraCallback;->onMessageChannelReady:Lo/getItemAnimator;

    invoke-static {p1}, Lo/getItemAnimator;->onPostMessage(Lo/getItemAnimator;)Lo/onDestroyView;

    move-result-object p1

    invoke-virtual {p1}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1204
    iget-object p1, p0, Lo/getItemAnimator$extraCallback;->onMessageChannelReady:Lo/getItemAnimator;

    invoke-static {p1}, Lo/getItemAnimator;->onNavigationEvent(Lo/getItemAnimator;)Lo/findFirstVisibleItemClosestToEnd;

    move-result-object p1

    .line 2172
    iget-object p1, p1, Lo/findFirstVisibleItemClosestToEnd;->onNavigationEvent:Lo/getFirstChildPosition;

    .line 1204
    sget-object v4, Lo/getFirstChildPosition;->onPostMessage:Lo/getFirstChildPosition;

    if-ne p1, v4, :cond_5

    .line 1205
    iget-object p1, p0, Lo/getItemAnimator$extraCallback;->onMessageChannelReady:Lo/getItemAnimator;

    invoke-static {p1}, Lo/getItemAnimator;->onRelationshipValidationResult(Lo/getItemAnimator;)J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-static {p1, v4, v5}, Lo/getItemAnimator;->ICustomTabsCallback(Lo/getItemAnimator;J)V

    .line 1206
    iget-object p1, p0, Lo/getItemAnimator$extraCallback;->onMessageChannelReady:Lo/getItemAnimator;

    invoke-static {p1}, Lo/getItemAnimator;->asBinder(Lo/getItemAnimator;)Lo/createFullSpanItemFromEnd;

    move-result-object p1

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/getItemAnimator$extraCallback;->onMessageChannelReady:Lo/getItemAnimator;

    invoke-static {v0}, Lo/getItemAnimator;->onRelationshipValidationResult(Lo/getItemAnimator;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfe

    invoke-static/range {v2 .. v9}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1207
    iget-object p1, p0, Lo/getItemAnimator$extraCallback;->onMessageChannelReady:Lo/getItemAnimator;

    invoke-static {p1}, Lo/getItemAnimator;->onNavigationEvent(Lo/getItemAnimator;)Lo/findFirstVisibleItemClosestToEnd;

    move-result-object p1

    invoke-virtual {p1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage()V

    .line 1208
    iget-object p1, p0, Lo/getItemAnimator$extraCallback;->onMessageChannelReady:Lo/getItemAnimator;

    invoke-static {p1, v1}, Lo/getItemAnimator;->onNavigationEvent(Lo/getItemAnimator;Z)V

    :cond_5
    :goto_1
    return-void
.end method
