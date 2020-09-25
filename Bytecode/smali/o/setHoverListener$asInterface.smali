.class public Lo/setHoverListener$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setHoverListener;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/cred/pay/ui/bankselection/BankSelectionDialog$onCreateView$2$afterTextChanged$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic extraCallback:Landroidx/recyclerview/widget/RecyclerView;

.field private synthetic onNavigationEvent:Lo/setHoverListener;

.field private synthetic onPostMessage:Lo/toDebugString$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/setHoverListener;Lo/toDebugString$ICustomTabsCallback;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/toDebugString$ICustomTabsCallback;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ")V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lo/setHoverListener$asInterface;->onNavigationEvent:Lo/setHoverListener;

    iput-object p2, p0, Lo/setHoverListener$asInterface;->onPostMessage:Lo/toDebugString$ICustomTabsCallback;

    iput-object p3, p0, Lo/setHoverListener$asInterface;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 9

    .line 118
    iget-object v0, p0, Lo/setHoverListener$asInterface;->onNavigationEvent:Lo/setHoverListener;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_9

    .line 119
    iget-object v0, p0, Lo/setHoverListener$asInterface;->onNavigationEvent:Lo/setHoverListener;

    .line 2055
    iget-object v0, v0, Lo/setHoverListener;->extraCallback:Ljava/util/ArrayList;

    .line 119
    check-cast v0, Ljava/util/List;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.CharSequence"

    if-eqz v3, :cond_8

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lo/childWrites;->onMessageChannelReady(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lo/setHoverListener;->onPostMessage(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 120
    iget-object v3, p0, Lo/setHoverListener$asInterface;->onPostMessage:Lo/toDebugString$ICustomTabsCallback;

    iget-object v3, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    invoke-static {v3}, Lo/childWrites;->ICustomTabsCallback(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_7

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lo/childWrites;->onMessageChannelReady(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v2, :cond_7

    .line 122
    iget-object v3, p0, Lo/setHoverListener$asInterface;->onNavigationEvent:Lo/setHoverListener;

    .line 3050
    iget-object v3, v3, Lo/setHoverListener;->onNavigationEvent:Ljava/lang/String;

    const-string v5, "NB"

    .line 122
    invoke-static {v3, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "other_upi_screen_search_first_char_entered"

    goto :goto_3

    :cond_3
    const-string v3, "all_netbanking_screen_first_letter_entered"

    :goto_3
    const/4 v5, 0x2

    new-array v6, v5, [Lo/addWrite;

    .line 123
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lo/childWrites;->onMessageChannelReady(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4043
    new-instance v7, Lo/addWrite;

    const-string/jumbo v8, "string_entered"

    invoke-direct {v7, v8, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v6, v1

    .line 124
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "no match"

    goto :goto_4

    :cond_4
    const-string v1, "found"

    .line 5043
    :goto_4
    new-instance v4, Lo/addWrite;

    const-string/jumbo v7, "result"

    invoke-direct {v4, v7, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v6, v2

    const-string v1, "pairs"

    .line 123
    invoke-static {v6, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v5}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v6}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 121
    invoke-static {v3, v1}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_5

    .line 123
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_7
    :goto_5
    iget-object v1, p0, Lo/setHoverListener$asInterface;->onPostMessage:Lo/toDebugString$ICustomTabsCallback;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 127
    iget-object p1, p0, Lo/setHoverListener$asInterface;->onNavigationEvent:Lo/setHoverListener;

    invoke-virtual {p1, v0}, Lo/setHoverListener;->extraCallback(Ljava/util/List;)V

    .line 128
    iget-object p1, p0, Lo/setHoverListener$asInterface;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    move-object v0, p0

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    .line 119
    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_6
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 2

    .line 5129
    iget-object v0, p0, Lo/setHoverListener$asInterface;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method
