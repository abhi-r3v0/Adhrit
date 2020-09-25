.class final Lo/SlowLinearLayoutManager;
.super Ljava/lang/Object;

# interfaces
.implements Lo/openAmexWebView;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;


# direct methods
.method constructor <init>(Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;)V
    .locals 0

    iput-object p1, p0, Lo/SlowLinearLayoutManager;->ICustomTabsCallback:Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()V
    .locals 2

    iget-object v0, p0, Lo/SlowLinearLayoutManager;->ICustomTabsCallback:Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;

    const-string v1, "_videoMediaView"

    invoke-virtual {v0, v1}, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void
.end method

.method public final onMessageChannelReady(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
