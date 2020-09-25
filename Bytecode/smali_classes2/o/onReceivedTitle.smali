.class public final Lo/onReceivedTitle;
.super Ljava/util/AbstractList;
.source ""

# interfaces
.implements Lo/ConversationDetailActivity$16;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lo/ConversationDetailActivity$16;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final onNavigationEvent:Lo/ConversationDetailActivity$16;


# direct methods
.method public constructor <init>(Lo/ConversationDetailActivity$16;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lo/onReceivedTitle;->onNavigationEvent:Lo/ConversationDetailActivity$16;

    return-void
.end method

.method static synthetic extraCallback(Lo/onReceivedTitle;)Lo/ConversationDetailActivity$16;
    .locals 0

    .line 14
    iget-object p0, p0, Lo/onReceivedTitle;->onNavigationEvent:Lo/ConversationDetailActivity$16;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/ConversationDetailActivity$16;
    .locals 0

    return-object p0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/onReceivedTitle;->onNavigationEvent:Lo/ConversationDetailActivity$16;

    invoke-interface {v0, p1}, Lo/ConversationDetailActivity$16;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Lo/onLost;

    invoke-direct {v0, p0}, Lo/onLost;-><init>(Lo/onReceivedTitle;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance v0, Lo/onGeolocationPermissionsShowPrompt;

    invoke-direct {v0, p0, p1}, Lo/onGeolocationPermissionsShowPrompt;-><init>(Lo/onReceivedTitle;I)V

    return-object v0
.end method

.method public final onNavigationEvent(I)Ljava/lang/Object;
    .locals 1

    .line 4
    iget-object v0, p0, Lo/onReceivedTitle;->onNavigationEvent:Lo/ConversationDetailActivity$16;

    invoke-interface {v0, p1}, Lo/ConversationDetailActivity$16;->onNavigationEvent(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lo/onReceivedTitle;->onNavigationEvent:Lo/ConversationDetailActivity$16;

    invoke-interface {v0}, Lo/ConversationDetailActivity$16;->onNavigationEvent()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage(Lo/ChannelListActivity$2;)V
    .locals 0

    .line 6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final size()I
    .locals 1

    .line 5
    iget-object v0, p0, Lo/onReceivedTitle;->onNavigationEvent:Lo/ConversationDetailActivity$16;

    invoke-interface {v0}, Lo/ConversationDetailActivity$16;->size()I

    move-result v0

    return v0
.end method
