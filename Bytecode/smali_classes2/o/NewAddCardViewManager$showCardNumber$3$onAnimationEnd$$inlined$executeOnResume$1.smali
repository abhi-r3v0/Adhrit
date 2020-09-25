.class final synthetic Lo/NewAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final onMessageChannelReady:Lo/SeenNotification;


# direct methods
.method constructor <init>(Lo/SeenNotification;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/NewAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/SeenNotification;

    iput-object p2, p0, Lo/NewAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/NewAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/SeenNotification;

    iget-object v1, p0, Lo/NewAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/SeenNotification;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void
.end method
