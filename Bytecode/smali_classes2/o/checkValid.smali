.class final synthetic Lo/checkValid;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final extraCallback:Lo/push;

.field private final onMessageChannelReady:Lo/GameCta;

.field private final onNavigationEvent:Lo/updateRangeInNode;


# direct methods
.method constructor <init>(Lo/push;Lo/GameCta;Lo/updateRangeInNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/checkValid;->extraCallback:Lo/push;

    iput-object p2, p0, Lo/checkValid;->onMessageChannelReady:Lo/GameCta;

    iput-object p3, p0, Lo/checkValid;->onNavigationEvent:Lo/updateRangeInNode;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo/checkValid;->extraCallback:Lo/push;

    iget-object v1, p0, Lo/checkValid;->onMessageChannelReady:Lo/GameCta;

    iget-object v2, p0, Lo/checkValid;->onNavigationEvent:Lo/updateRangeInNode;

    invoke-virtual {v0, v1, v2}, Lo/push;->onMessageChannelReady(Lo/GameCta;Lo/updateRangeInNode;)V

    return-void
.end method
