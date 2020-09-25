.class public final Lo/saveOriginalDelegate;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field ICustomTabsCallback:Ljava/lang/String;

.field final ICustomTabsCallback$Stub:Lo/shouldBeKeptAsChild$onPostMessage;

.field private asBinder:Lo/onDisconnectSetValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onDisconnectSetValue<",
            "-",
            "Ljava/lang/String;",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field private asInterface:Landroid/widget/TextView;

.field extraCallback:Landroid/view/View;

.field onMessageChannelReady:Ljava/lang/String;

.field public onNavigationEvent:Lo/updateSpecWithExtra;

.field onPostMessage:Landroid/widget/EditText;

.field onRelationshipValidationResult:Lo/snapFromFling$onNavigationEvent;

.field private onTransact:Lo/onSessionEvent;


# direct methods
.method public constructor <init>(Lo/onSessionEvent;Lo/shouldBeKeptAsChild$onPostMessage;Lo/getServerTime;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onSessionEvent;",
            "Lo/shouldBeKeptAsChild$onPostMessage;",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "communicationInterface"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dismiss"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/saveOriginalDelegate;->onTransact:Lo/onSessionEvent;

    iput-object p2, p0, Lo/saveOriginalDelegate;->ICustomTabsCallback$Stub:Lo/shouldBeKeptAsChild$onPostMessage;

    const-string p1, ""

    .line 27
    iput-object p1, p0, Lo/saveOriginalDelegate;->onMessageChannelReady:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lo/saveOriginalDelegate;->ICustomTabsCallback:Ljava/lang/String;

    .line 31
    new-instance p2, Lo/saveOriginalDelegate$onPostMessage;

    invoke-direct {p2, p0}, Lo/saveOriginalDelegate$onPostMessage;-><init>(Lo/saveOriginalDelegate;)V

    check-cast p2, Lo/onDisconnectSetValue;

    iput-object p2, p0, Lo/saveOriginalDelegate;->asBinder:Lo/onDisconnectSetValue;

    .line 62
    iget-object p2, p0, Lo/saveOriginalDelegate;->onTransact:Lo/onSessionEvent;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    check-cast p2, Landroid/view/LayoutInflater;

    .line 63
    sget v0, Lo/getItemDelegate$onNavigationEvent;->layout_set_m_pin:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const-string v0, "inflater.inflate(R.layout.layout_set_m_pin, null)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/saveOriginalDelegate;->extraCallback:Landroid/view/View;

    .line 64
    sget v0, Lo/getItemDelegate$onMessageChannelReady;->debitCardNumber:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "mContentView.findViewById(R.id.debitCardNumber)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/updateSpecWithExtra;

    iput-object p2, p0, Lo/saveOriginalDelegate;->onNavigationEvent:Lo/updateSpecWithExtra;

    .line 65
    iget-object p2, p0, Lo/saveOriginalDelegate;->extraCallback:Landroid/view/View;

    sget v0, Lo/getItemDelegate$onMessageChannelReady;->monthYear:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "mContentView.findViewById(R.id.monthYear)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lo/saveOriginalDelegate;->onPostMessage:Landroid/widget/EditText;

    .line 66
    iget-object p2, p0, Lo/saveOriginalDelegate;->extraCallback:Landroid/view/View;

    sget v0, Lo/getItemDelegate$onMessageChannelReady;->submit:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "mContentView.findViewById(R.id.submit)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/saveOriginalDelegate;->asInterface:Landroid/widget/TextView;

    const-string/jumbo v0, "submit"

    if-nez p2, :cond_0

    .line 67
    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 4064
    :cond_0
    sget-object v1, Lo/calculateScrollDirectionForPosition$onNavigationEvent;->ICustomTabsCallback:Lo/calculateScrollDirectionForPosition$onNavigationEvent;

    check-cast v1, Lo/calculateScrollDirectionForPosition;

    const-string/jumbo v2, "s_tDarkTwo_bgDarkTwo8"

    invoke-static {p2, v2, v1}, Lo/extraCallback;->extraCallback(Landroid/widget/TextView;Ljava/lang/String;Lo/calculateScrollDirectionForPosition;)V

    .line 69
    new-instance p2, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {p2}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object p1, p2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 70
    iget-object p1, p0, Lo/saveOriginalDelegate;->onNavigationEvent:Lo/updateSpecWithExtra;

    .line 4179
    iget-object p1, p1, Lo/updateSpecWithExtra;->ICustomTabsCallback:Lo/recycleFromStart;

    .line 70
    new-instance v1, Lo/saveOriginalDelegate$2;

    invoke-direct {v1, p0, p2}, Lo/saveOriginalDelegate$2;-><init>(Lo/saveOriginalDelegate;Lo/toDebugString$ICustomTabsCallback;)V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 90
    iget-object p1, p0, Lo/saveOriginalDelegate;->onPostMessage:Landroid/widget/EditText;

    const-string p2, "monthYear"

    if-nez p1, :cond_1

    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Lo/peekValue$onPostMessage;

    iget-object v2, p0, Lo/saveOriginalDelegate;->onPostMessage:Landroid/widget/EditText;

    if-nez v2, :cond_2

    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    iget-object p2, p0, Lo/saveOriginalDelegate;->asBinder:Lo/onDisconnectSetValue;

    invoke-direct {v1, v2, p2}, Lo/peekValue$onPostMessage;-><init>(Landroid/widget/EditText;Lo/onDisconnectSetValue;)V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 93
    iget-object p1, p0, Lo/saveOriginalDelegate;->onNavigationEvent:Lo/updateSpecWithExtra;

    check-cast p1, Landroid/view/View;

    sget p2, Lo/getItemDelegate$onPostMessage;->white_grey:I

    invoke-static {p1, p2}, Lo/extraCallback;->onPostMessage(Landroid/view/View;I)V

    .line 94
    iget-object p1, p0, Lo/saveOriginalDelegate;->onNavigationEvent:Lo/updateSpecWithExtra;

    const-string p2, "XX-XXXX"

    invoke-virtual {p1, p2}, Lo/updateSpecWithExtra;->setPattern(Ljava/lang/String;)V

    .line 96
    iget-object p1, p0, Lo/saveOriginalDelegate;->asInterface:Landroid/widget/TextView;

    if-nez p1, :cond_3

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_3
    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/saveOriginalDelegate$5;

    invoke-direct {p2, p0, p3}, Lo/saveOriginalDelegate$5;-><init>(Lo/saveOriginalDelegate;Lo/getServerTime;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 105
    invoke-virtual {p0}, Lo/saveOriginalDelegate;->onMessageChannelReady()V

    return-void

    .line 62
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final extraCallback()Z
    .locals 7

    .line 110
    iget-object v0, p0, Lo/saveOriginalDelegate;->onNavigationEvent:Lo/updateSpecWithExtra;

    invoke-virtual {v0}, Lo/updateSpecWithExtra;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lo/queryForTag;

    const-string v2, "[\\s]"

    invoke-direct {v1, v2}, Lo/queryForTag;-><init>(Ljava/lang/String;)V

    const-string v2, "input"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "replacement"

    const-string v4, ""

    invoke-static {v4, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2143
    iget-object v1, v1, Lo/queryForTag;->onPostMessage:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nativePattern.matcher(in\u2026).replaceAll(replacement)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iput-object v0, p0, Lo/saveOriginalDelegate;->onMessageChannelReady:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lo/saveOriginalDelegate;->onPostMessage:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string v5, "monthYear"

    invoke-static {v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v5, Lo/queryForTag;

    const-string v6, "[^\\d.]"

    invoke-direct {v5, v6}, Lo/queryForTag;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3143
    iget-object v2, v5, Lo/queryForTag;->onPostMessage:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iput-object v0, p0, Lo/saveOriginalDelegate;->ICustomTabsCallback:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lo/saveOriginalDelegate;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lo/saveOriginalDelegate;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method final onMessageChannelReady()V
    .locals 3

    .line 39
    invoke-virtual {p0}, Lo/saveOriginalDelegate;->extraCallback()Z

    move-result v0

    const-string/jumbo v1, "submit"

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lo/saveOriginalDelegate;->asInterface:Landroid/widget/TextView;

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1064
    :cond_0
    sget-object v1, Lo/calculateScrollDirectionForPosition$onNavigationEvent;->ICustomTabsCallback:Lo/calculateScrollDirectionForPosition$onNavigationEvent;

    check-cast v1, Lo/calculateScrollDirectionForPosition;

    const-string/jumbo v2, "s_tWhiteFour_bgBlack"

    invoke-static {v0, v2, v1}, Lo/extraCallback;->extraCallback(Landroid/widget/TextView;Ljava/lang/String;Lo/calculateScrollDirectionForPosition;)V

    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lo/saveOriginalDelegate;->asInterface:Landroid/widget/TextView;

    if-nez v0, :cond_2

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2064
    :cond_2
    sget-object v1, Lo/calculateScrollDirectionForPosition$onNavigationEvent;->ICustomTabsCallback:Lo/calculateScrollDirectionForPosition$onNavigationEvent;

    check-cast v1, Lo/calculateScrollDirectionForPosition;

    const-string/jumbo v2, "s_tWhiteFour_bgLightBlack"

    invoke-static {v0, v2, v1}, Lo/extraCallback;->extraCallback(Landroid/widget/TextView;Ljava/lang/String;Lo/calculateScrollDirectionForPosition;)V

    return-void
.end method

.method public final run()V
    .locals 6

    .line 6021
    iget-object v0, p0, Lo/saveOriginalDelegate;->onTransact:Lo/onSessionEvent;

    .line 5054
    invoke-virtual {v0}, Lo/getMediaDescription;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "context.lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5129
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 5130
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 5131
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 6212
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    .line 7021
    iget-object v2, p0, Lo/saveOriginalDelegate;->onNavigationEvent:Lo/updateSpecWithExtra;

    .line 7179
    iget-object v2, v2, Lo/updateSpecWithExtra;->ICustomTabsCallback:Lo/recycleFromStart;

    .line 5055
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 8021
    iget-object v2, p0, Lo/saveOriginalDelegate;->onNavigationEvent:Lo/updateSpecWithExtra;

    .line 8179
    iget-object v2, v2, Lo/updateSpecWithExtra;->ICustomTabsCallback:Lo/recycleFromStart;

    .line 5056
    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lo/isCurrent$onMessageChannelReady;->onPostMessage(Landroid/view/View;)V

    .line 5133
    iput-boolean v5, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_0

    .line 5134
    :cond_1
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v4, :cond_2

    .line 5135
    new-instance v2, Lcom/dreamplug/upi/SetMPinDialog$setData$1$$special$$inlined$executeOnResume$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/dreamplug/upi/SetMPinDialog$setData$1$$special$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/saveOriginalDelegate;)V

    check-cast v2, Lo/createCallback;

    iput-object v2, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 5136
    iget-object v1, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/createCallback;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 5138
    :cond_2
    :goto_0
    new-instance v1, Lo/dispatchMoveFinished;

    invoke-direct {v1, v3, v0}, Lo/dispatchMoveFinished;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method
