.class final synthetic Lo/joinStringList;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final extraCallback:Lo/updateRangeInNode;

.field private final onMessageChannelReady:Lo/push;

.field private final onPostMessage:Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;


# direct methods
.method constructor <init>(Lo/push;Lo/updateRangeInNode;Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/joinStringList;->onMessageChannelReady:Lo/push;

    iput-object p2, p0, Lo/joinStringList;->extraCallback:Lo/updateRangeInNode;

    iput-object p3, p0, Lo/joinStringList;->onPostMessage:Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo/joinStringList;->onMessageChannelReady:Lo/push;

    iget-object v1, p0, Lo/joinStringList;->extraCallback:Lo/updateRangeInNode;

    iget-object v2, p0, Lo/joinStringList;->onPostMessage:Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-virtual {v0, v1, v2}, Lo/push;->extraCallback(Lo/updateRangeInNode;Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;)V

    return-void
.end method
